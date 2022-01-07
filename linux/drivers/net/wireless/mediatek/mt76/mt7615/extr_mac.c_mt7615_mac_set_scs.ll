; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_mac_set_scs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_mac_set_scs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MT_WF_PHY_B0_MIN_PRI_PWR = common dso_local global i32 0, align 4
@MT_WF_PHY_B0_PD_BLK = common dso_local global i32 0, align 4
@MT_MIB_M0_MISC_CR = common dso_local global i32 0, align 4
@MT_WF_PHY_B1_MIN_PRI_PWR = common dso_local global i32 0, align 4
@MT_WF_PHY_B1_PD_BLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7615_mac_set_scs(%struct.mt7615_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt7615_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %50

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %20 = load i32, i32* @MT_WF_PHY_B0_MIN_PRI_PWR, align 4
  %21 = load i32, i32* @MT_WF_PHY_B0_PD_BLK, align 4
  %22 = call i32 @mt76_set(%struct.mt7615_dev* %19, i32 %20, i32 %21)
  %23 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %23, i32 0, i32 1
  %25 = call i64 @is_mt7622(%struct.TYPE_2__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %29 = load i32, i32* @MT_MIB_M0_MISC_CR, align 4
  %30 = call i32 @mt76_set(%struct.mt7615_dev* %28, i32 %29, i32 1792)
  %31 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %32 = load i32, i32* @MT_MIB_M0_MISC_CR, align 4
  %33 = call i32 @mt76_set(%struct.mt7615_dev* %31, i32 %32, i32 7)
  br label %34

34:                                               ; preds = %27, %18
  br label %44

35:                                               ; preds = %15
  %36 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %37 = load i32, i32* @MT_WF_PHY_B0_MIN_PRI_PWR, align 4
  %38 = load i32, i32* @MT_WF_PHY_B0_PD_BLK, align 4
  %39 = call i32 @mt76_clear(%struct.mt7615_dev* %36, i32 %37, i32 %38)
  %40 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %41 = load i32, i32* @MT_WF_PHY_B1_MIN_PRI_PWR, align 4
  %42 = load i32, i32* @MT_WF_PHY_B1_PD_BLK, align 4
  %43 = call i32 @mt76_clear(%struct.mt7615_dev* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %35, %34
  %45 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %46 = call i32 @mt7615_mac_set_default_sensitivity(%struct.mt7615_dev* %45)
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %49 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %14
  %51 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %52 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt76_set(%struct.mt7615_dev*, i32, i32) #1

declare dso_local i64 @is_mt7622(%struct.TYPE_2__*) #1

declare dso_local i32 @mt76_clear(%struct.mt7615_dev*, i32, i32) #1

declare dso_local i32 @mt7615_mac_set_default_sensitivity(%struct.mt7615_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
