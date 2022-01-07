; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_mac_set_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_mac_set_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@MT_TIMEOUT_VAL_PLCP = common dso_local global i32 0, align 4
@MT_TIMEOUT_VAL_CCA = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@MT_ARB_SCR = common dso_local global i32 0, align 4
@MT_ARB_SCR_TX_DISABLE = common dso_local global i32 0, align 4
@MT_ARB_SCR_RX_DISABLE = common dso_local global i32 0, align 4
@MT_TIMEOUT_CCK = common dso_local global i32 0, align 4
@MT_TIMEOUT_OFDM = common dso_local global i32 0, align 4
@MT_IFS = common dso_local global i32 0, align 4
@MT_IFS_EIFS = common dso_local global i32 0, align 4
@MT_IFS_RIFS = common dso_local global i32 0, align 4
@MT_IFS_SIFS = common dso_local global i32 0, align 4
@MT_IFS_SLOT = common dso_local global i32 0, align 4
@MT7603_CFEND_RATE_DEFAULT = common dso_local global i32 0, align 4
@MT7603_CFEND_RATE_11B = common dso_local global i32 0, align 4
@MT_AGG_CONTROL = common dso_local global i32 0, align 4
@MT_AGG_CONTROL_CFEND_RATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7603_mac_set_timing(%struct.mt7603_dev* %0) #0 {
  %2 = alloca %struct.mt7603_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %2, align 8
  %9 = load i32, i32* @MT_TIMEOUT_VAL_PLCP, align 4
  %10 = call i32 @FIELD_PREP(i32 %9, i32 231)
  %11 = load i32, i32* @MT_TIMEOUT_VAL_CCA, align 4
  %12 = call i32 @FIELD_PREP(i32 %11, i32 48)
  %13 = or i32 %10, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @MT_TIMEOUT_VAL_PLCP, align 4
  %15 = call i32 @FIELD_PREP(i32 %14, i32 60)
  %16 = load i32, i32* @MT_TIMEOUT_VAL_CCA, align 4
  %17 = call i32 @FIELD_PREP(i32 %16, i32 24)
  %18 = or i32 %15, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %20 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 3, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @MT_TIMEOUT_VAL_PLCP, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @FIELD_PREP(i32 %23, i32 %24)
  %26 = load i32, i32* @MT_TIMEOUT_VAL_CCA, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @FIELD_PREP(i32 %26, i32 %27)
  %29 = or i32 %25, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %31 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  store i32 16, i32* %7, align 4
  br label %41

40:                                               ; preds = %1
  store i32 10, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %43 = load i32, i32* @MT_ARB_SCR, align 4
  %44 = load i32, i32* @MT_ARB_SCR_TX_DISABLE, align 4
  %45 = load i32, i32* @MT_ARB_SCR_RX_DISABLE, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @mt76_set(%struct.mt7603_dev* %42, i32 %43, i32 %46)
  %48 = call i32 @udelay(i32 1)
  %49 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %50 = load i32, i32* @MT_TIMEOUT_CCK, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32 @mt76_wr(%struct.mt7603_dev* %49, i32 %50, i32 %53)
  %55 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %56 = load i32, i32* @MT_TIMEOUT_OFDM, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  %60 = call i32 @mt76_wr(%struct.mt7603_dev* %55, i32 %56, i32 %59)
  %61 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %62 = load i32, i32* @MT_IFS, align 4
  %63 = load i32, i32* @MT_IFS_EIFS, align 4
  %64 = call i32 @FIELD_PREP(i32 %63, i32 360)
  %65 = load i32, i32* @MT_IFS_RIFS, align 4
  %66 = call i32 @FIELD_PREP(i32 %65, i32 2)
  %67 = or i32 %64, %66
  %68 = load i32, i32* @MT_IFS_SIFS, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @FIELD_PREP(i32 %68, i32 %69)
  %71 = or i32 %67, %70
  %72 = load i32, i32* @MT_IFS_SLOT, align 4
  %73 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %74 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @FIELD_PREP(i32 %72, i32 %75)
  %77 = or i32 %71, %76
  %78 = call i32 @mt76_wr(%struct.mt7603_dev* %61, i32 %62, i32 %77)
  %79 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %80 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %81, 20
  br i1 %82, label %83, label %85

83:                                               ; preds = %41
  %84 = load i32, i32* @MT7603_CFEND_RATE_DEFAULT, align 4
  store i32 %84, i32* %8, align 4
  br label %87

85:                                               ; preds = %41
  %86 = load i32, i32* @MT7603_CFEND_RATE_11B, align 4
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %89 = load i32, i32* @MT_AGG_CONTROL, align 4
  %90 = load i32, i32* @MT_AGG_CONTROL_CFEND_RATE, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @mt76_rmw_field(%struct.mt7603_dev* %88, i32 %89, i32 %90, i32 %91)
  %93 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %94 = load i32, i32* @MT_ARB_SCR, align 4
  %95 = load i32, i32* @MT_ARB_SCR_TX_DISABLE, align 4
  %96 = load i32, i32* @MT_ARB_SCR_RX_DISABLE, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @mt76_clear(%struct.mt7603_dev* %93, i32 %94, i32 %97)
  ret void
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_set(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt76_rmw_field(%struct.mt7603_dev*, i32, i32, i32) #1

declare dso_local i32 @mt76_clear(%struct.mt7603_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
