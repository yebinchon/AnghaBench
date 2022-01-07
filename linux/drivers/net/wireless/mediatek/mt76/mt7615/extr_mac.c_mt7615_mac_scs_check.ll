; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_mac_scs_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_mac_scs_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { i64, i64, i64, i32 }

@MT_MIB_RTS_RETRIES_COUNT_MASK = common dso_local global i32 0, align 4
@MT_MIB_RTS_COUNT_MASK = common dso_local global i32 0, align 4
@MT_WF_PHY_R0_B0_PHYCTRL_STS0 = common dso_local global i32 0, align 4
@MT_WF_PHYCTRL_STAT_PD_CCK = common dso_local global i32 0, align 4
@MT_WF_PHYCTRL_STAT_PD_OFDM = common dso_local global i32 0, align 4
@MT_WF_PHY_R0_B0_PHYCTRL_STS5 = common dso_local global i32 0, align 4
@MT_WF_PHYCTRL_STAT_MDRDY_CCK = common dso_local global i32 0, align 4
@MT_WF_PHYCTRL_STAT_MDRDY_OFDM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7615_dev*)* @mt7615_mac_scs_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7615_mac_scs_check(%struct.mt7615_dev* %0) #0 {
  %2 = alloca %struct.mt7615_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %13 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %14 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %103

18:                                               ; preds = %1
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %39, %18
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  %23 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @MT_MIB_MB_SDR0(i32 %24)
  %26 = call i64 @mt76_rr(%struct.mt7615_dev* %23, i32 %25)
  store i64 %26, i64* %3, align 8
  %27 = load i32, i32* @MT_MIB_RTS_RETRIES_COUNT_MASK, align 4
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @FIELD_GET(i32 %27, i64 %28)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load i32, i32* @MT_MIB_RTS_COUNT_MASK, align 4
  %35 = load i64, i64* %3, align 8
  %36 = call i64 @FIELD_GET(i32 %34, i64 %35)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %12, align 8
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %33, %22
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %19

42:                                               ; preds = %19
  %43 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %44 = load i32, i32* @MT_WF_PHY_R0_B0_PHYCTRL_STS0, align 4
  %45 = call i64 @mt76_rr(%struct.mt7615_dev* %43, i32 %44)
  store i64 %45, i64* %3, align 8
  %46 = load i32, i32* @MT_WF_PHYCTRL_STAT_PD_CCK, align 4
  %47 = load i64, i64* %3, align 8
  %48 = call i64 @FIELD_GET(i32 %46, i64 %47)
  store i64 %48, i64* %9, align 8
  %49 = load i32, i32* @MT_WF_PHYCTRL_STAT_PD_OFDM, align 4
  %50 = load i64, i64* %3, align 8
  %51 = call i64 @FIELD_GET(i32 %49, i64 %50)
  store i64 %51, i64* %10, align 8
  %52 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %53 = load i32, i32* @MT_WF_PHY_R0_B0_PHYCTRL_STS5, align 4
  %54 = call i64 @mt76_rr(%struct.mt7615_dev* %52, i32 %53)
  store i64 %54, i64* %3, align 8
  %55 = load i32, i32* @MT_WF_PHYCTRL_STAT_MDRDY_CCK, align 4
  %56 = load i64, i64* %3, align 8
  %57 = call i64 @FIELD_GET(i32 %55, i64 %56)
  store i64 %57, i64* %7, align 8
  %58 = load i32, i32* @MT_WF_PHYCTRL_STAT_MDRDY_OFDM, align 4
  %59 = load i64, i64* %3, align 8
  %60 = call i64 @FIELD_GET(i32 %58, i64 %59)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %8, align 8
  %63 = sub nsw i64 %61, %62
  %64 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %65 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %7, align 8
  %68 = sub nsw i64 %66, %67
  %69 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %70 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %72 = call i32 @mt7615_mac_cca_stats_reset(%struct.mt7615_dev* %71)
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* %5, align 8
  %75 = add nsw i64 %73, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %42
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* %5, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i64 @MT_FRAC(i64 %78, i64 %81)
  store i64 %82, i64* %6, align 8
  br label %83

83:                                               ; preds = %77, %42
  %84 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @mt7615_mac_adjust_sensitivity(%struct.mt7615_dev* %84, i64 %85, i32 0)
  %87 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @mt7615_mac_adjust_sensitivity(%struct.mt7615_dev* %87, i64 %88, i32 1)
  %90 = load i32, i32* @jiffies, align 4
  %91 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %92 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @HZ, align 4
  %95 = mul nsw i32 10, %94
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %93, %96
  %98 = call i64 @time_after(i32 %90, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %83
  %101 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %102 = call i32 @mt7615_mac_set_default_sensitivity(%struct.mt7615_dev* %101)
  br label %103

103:                                              ; preds = %17, %100, %83
  ret void
}

declare dso_local i64 @mt76_rr(%struct.mt7615_dev*, i32) #1

declare dso_local i32 @MT_MIB_MB_SDR0(i32) #1

declare dso_local i64 @FIELD_GET(i32, i64) #1

declare dso_local i32 @mt7615_mac_cca_stats_reset(%struct.mt7615_dev*) #1

declare dso_local i64 @MT_FRAC(i64, i64) #1

declare dso_local i32 @mt7615_mac_adjust_sensitivity(%struct.mt7615_dev*, i64, i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @mt7615_mac_set_default_sensitivity(%struct.mt7615_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
