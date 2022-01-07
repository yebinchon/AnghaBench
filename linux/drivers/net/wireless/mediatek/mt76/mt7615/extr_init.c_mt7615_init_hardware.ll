; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_init.c_mt7615_init_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_init.c_mt7615_init_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MT_INT_SOURCE_CSR = common dso_local global i32 0, align 4
@MT76_STATE_INITIALIZED = common dso_local global i32 0, align 4
@MT7615_WTBL_STA = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7615_dev*)* @mt7615_init_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7615_init_hardware(%struct.mt7615_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7615_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %3, align 8
  %6 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %7 = load i32, i32* @MT_INT_SOURCE_CSR, align 4
  %8 = call i32 @mt76_wr(%struct.mt7615_dev* %6, i32 %7, i32 -1)
  %9 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %9, i32 0, i32 2
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %12, i32 0, i32 1
  %14 = call i32 @idr_init(i32* %13)
  %15 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %16 = call i32 @mt7615_eeprom_init(%struct.mt7615_dev* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %85

21:                                               ; preds = %1
  %22 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %23 = call i32 @mt7615_dma_init(%struct.mt7615_dev* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %85

28:                                               ; preds = %21
  %29 = load i32, i32* @MT76_STATE_INITIALIZED, align 4
  %30 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %31 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = call i32 @set_bit(i32 %29, i32* %32)
  %34 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %35 = call i32 @mt7615_mcu_init(%struct.mt7615_dev* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %85

40:                                               ; preds = %28
  %41 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %42 = call i32 @mt7615_mcu_set_eeprom(%struct.mt7615_dev* %41)
  %43 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %44 = call i32 @mt7615_mac_init(%struct.mt7615_dev* %43)
  %45 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %46 = call i32 @mt7615_phy_init(%struct.mt7615_dev* %45)
  %47 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %48 = call i32 @mt7615_mcu_ctrl_pm_state(%struct.mt7615_dev* %47, i32 0)
  %49 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %50 = call i32 @mt7615_mcu_del_wtbl_all(%struct.mt7615_dev* %49)
  %51 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %52 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* @MT7615_WTBL_STA, align 8
  %56 = sub nsw i64 %55, 1
  %57 = call i32 @mt76_wcid_alloc(i32 %54, i64 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %40
  %61 = load i32, i32* @ENOSPC, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %85

63:                                               ; preds = %40
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %66 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 8
  %69 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %70 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 -1, i32* %72, align 4
  %73 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %74 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %82 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = call i32 @rcu_assign_pointer(i32 %80, %struct.TYPE_4__* %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %63, %60, %38, %26, %19
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @mt76_wr(%struct.mt7615_dev*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @mt7615_eeprom_init(%struct.mt7615_dev*) #1

declare dso_local i32 @mt7615_dma_init(%struct.mt7615_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mt7615_mcu_init(%struct.mt7615_dev*) #1

declare dso_local i32 @mt7615_mcu_set_eeprom(%struct.mt7615_dev*) #1

declare dso_local i32 @mt7615_mac_init(%struct.mt7615_dev*) #1

declare dso_local i32 @mt7615_phy_init(%struct.mt7615_dev*) #1

declare dso_local i32 @mt7615_mcu_ctrl_pm_state(%struct.mt7615_dev*, i32) #1

declare dso_local i32 @mt7615_mcu_del_wtbl_all(%struct.mt7615_dev*) #1

declare dso_local i32 @mt76_wcid_alloc(i32, i64) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
