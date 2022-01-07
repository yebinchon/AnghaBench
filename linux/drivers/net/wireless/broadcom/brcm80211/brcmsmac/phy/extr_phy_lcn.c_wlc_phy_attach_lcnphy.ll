; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_phy_attach_lcnphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_phy_attach_lcnphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__*, i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@BFL_NOPA = common dso_local global i32 0, align 4
@wlc_phy_init_lcnphy = common dso_local global i32 0, align 4
@wlc_phy_cal_init_lcnphy = common dso_local global i32 0, align 4
@wlc_phy_chanspec_set_lcnphy = common dso_local global i32 0, align 4
@wlc_phy_txpower_recalc_target_lcnphy = common dso_local global i32 0, align 4
@wlc_lcnphy_get_tx_iqcc = common dso_local global i32 0, align 4
@wlc_lcnphy_set_tx_iqcc = common dso_local global i32 0, align 4
@wlc_lcnphy_get_tx_locc = common dso_local global i32 0, align 4
@wlc_lcnphy_get_radio_loft = common dso_local global i32 0, align 4
@wlc_phy_detach_lcnphy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlc_phy_attach_lcnphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call %struct.brcms_phy_lcnphy* @kzalloc(i32 16, i32 %5)
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %8 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %7, i32 0, i32 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store %struct.brcms_phy_lcnphy* %6, %struct.brcms_phy_lcnphy** %9, align 8
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %11 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %10, i32 0, i32 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %12, align 8
  %14 = icmp eq %struct.brcms_phy_lcnphy* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %114

16:                                               ; preds = %1
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %18 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %17, i32 0, i32 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %19, align 8
  store %struct.brcms_phy_lcnphy* %20, %struct.brcms_phy_lcnphy** %4, align 8
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %22 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %21, i32 0, i32 7
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BFL_NOPA, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 0, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %16
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %33 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %16
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %36 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %35, i32 0, i32 5
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = call i32 @bcma_chipco_get_alp_clock(i32* %40)
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %43 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %4, align 8
  %45 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @wlc_phy_init_lcnphy, align 4
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %48 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 8
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* @wlc_phy_cal_init_lcnphy, align 4
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %52 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 7
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @wlc_phy_chanspec_set_lcnphy, align 4
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %56 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 6
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* @wlc_phy_txpower_recalc_target_lcnphy, align 4
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %60 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 5
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @wlc_lcnphy_get_tx_iqcc, align 4
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %64 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 4
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* @wlc_lcnphy_set_tx_iqcc, align 4
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %68 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @wlc_lcnphy_get_tx_locc, align 4
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %72 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @wlc_lcnphy_get_radio_loft, align 4
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %76 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @wlc_phy_detach_lcnphy, align 4
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %80 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %83 = call i32 @wlc_phy_txpwr_srom_read_lcnphy(%struct.brcms_phy* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %114

86:                                               ; preds = %34
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %88 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @LCNREV_IS(i32 %90, i32 1)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %86
  %94 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %4, align 8
  %95 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 3
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %100 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %102 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  %103 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %104 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %103, i32 0, i32 2
  store i32 0, i32* %104, align 8
  br label %112

105:                                              ; preds = %93
  %106 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %107 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  %108 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %109 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %108, i32 0, i32 1
  store i32 0, i32* %109, align 4
  %110 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %111 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %110, i32 0, i32 2
  store i32 1, i32* %111, align 8
  br label %112

112:                                              ; preds = %105, %98
  br label %113

113:                                              ; preds = %112, %86
  store i32 1, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %85, %15
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.brcms_phy_lcnphy* @kzalloc(i32, i32) #1

declare dso_local i32 @bcma_chipco_get_alp_clock(i32*) #1

declare dso_local i32 @wlc_phy_txpwr_srom_read_lcnphy(%struct.brcms_phy*) #1

declare dso_local i64 @LCNREV_IS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
