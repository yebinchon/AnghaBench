; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_init.c_mt7603_init_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_init.c_mt7603_init_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MT_INT_SOURCE_CSR = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG = common dso_local global i32 0, align 4
@MT_WF_RFCR = common dso_local global i32 0, align 4
@MT76_STATE_INITIALIZED = common dso_local global i32 0, align 4
@MT7603_WTBL_SIZE = common dso_local global i32 0, align 4
@MT_PSE_RTA = common dso_local global i32 0, align 4
@MT_PSE_RTA_BUSY = common dso_local global i32 0, align 4
@MT_PSE_RTA_WRITE = common dso_local global i32 0, align 4
@MT_PSE_RTA_TAG_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7603_dev*)* @mt7603_init_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7603_init_hardware(%struct.mt7603_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7603_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %3, align 8
  %6 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %7 = load i32, i32* @MT_INT_SOURCE_CSR, align 4
  %8 = call i32 @mt76_wr(%struct.mt7603_dev* %6, i32 %7, i32 -1)
  %9 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %10 = call i32 @mt7603_eeprom_init(%struct.mt7603_dev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %76

15:                                               ; preds = %1
  %16 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %17 = call i32 @mt7603_dma_init(%struct.mt7603_dev* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %76

22:                                               ; preds = %15
  %23 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %24 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %25 = call i32 @mt76_wr(%struct.mt7603_dev* %23, i32 %24, i32 1375733840)
  %26 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %27 = call i32 @mt7603_mac_dma_start(%struct.mt7603_dev* %26)
  %28 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %29 = load i32, i32* @MT_WF_RFCR, align 4
  %30 = call i32 @mt76_rr(%struct.mt7603_dev* %28, i32 %29)
  %31 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %32 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @MT76_STATE_INITIALIZED, align 4
  %34 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %35 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @set_bit(i32 %33, i32* %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %57, %22
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @MT7603_WTBL_SIZE, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %44 = load i32, i32* @MT_PSE_RTA, align 4
  %45 = load i32, i32* @MT_PSE_RTA_BUSY, align 4
  %46 = load i32, i32* @MT_PSE_RTA_WRITE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @MT_PSE_RTA_TAG_ID, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @FIELD_PREP(i32 %48, i32 %49)
  %51 = or i32 %47, %50
  %52 = call i32 @mt76_wr(%struct.mt7603_dev* %43, i32 %44, i32 %51)
  %53 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %54 = load i32, i32* @MT_PSE_RTA, align 4
  %55 = load i32, i32* @MT_PSE_RTA_BUSY, align 4
  %56 = call i32 @mt76_poll(%struct.mt7603_dev* %53, i32 %54, i32 %55, i32 0, i32 5000)
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %38

60:                                               ; preds = %38
  %61 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %62 = call i32 @mt7603_mcu_init(%struct.mt7603_dev* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %76

67:                                               ; preds = %60
  %68 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %69 = call i32 @mt7603_dma_sched_init(%struct.mt7603_dev* %68)
  %70 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %71 = call i32 @mt7603_mcu_set_eeprom(%struct.mt7603_dev* %70)
  %72 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %73 = call i32 @mt7603_phy_init(%struct.mt7603_dev* %72)
  %74 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %75 = call i32 @mt7603_mac_init(%struct.mt7603_dev* %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %67, %65, %20, %13
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt7603_eeprom_init(%struct.mt7603_dev*) #1

declare dso_local i32 @mt7603_dma_init(%struct.mt7603_dev*) #1

declare dso_local i32 @mt7603_mac_dma_start(%struct.mt7603_dev*) #1

declare dso_local i32 @mt76_rr(%struct.mt7603_dev*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_poll(%struct.mt7603_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt7603_mcu_init(%struct.mt7603_dev*) #1

declare dso_local i32 @mt7603_dma_sched_init(%struct.mt7603_dev*) #1

declare dso_local i32 @mt7603_mcu_set_eeprom(%struct.mt7603_dev*) #1

declare dso_local i32 @mt7603_phy_init(%struct.mt7603_dev*) #1

declare dso_local i32 @mt7603_mac_init(%struct.mt7603_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
