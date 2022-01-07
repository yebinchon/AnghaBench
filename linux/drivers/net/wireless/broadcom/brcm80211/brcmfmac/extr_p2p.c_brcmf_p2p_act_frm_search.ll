; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_act_frm_search.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_act_frm_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_p2p_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.brcmf_pub* }
%struct.TYPE_3__ = type { i32 (%struct.brcmu_chan*)* }
%struct.brcmu_chan = type { i64, i64, i32 }
%struct.brcmf_pub = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@AF_PEER_SEARCH_CNT = common dso_local global i64 0, align 8
@SOCIAL_CHAN_CNT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"channel list allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BRCMU_CHAN_BW_20 = common dso_local global i32 0, align 4
@SOCIAL_CHAN_1 = common dso_local global i64 0, align 8
@SOCIAL_CHAN_2 = common dso_local global i64 0, align 8
@SOCIAL_CHAN_3 = common dso_local global i64 0, align 8
@WL_P2P_DISC_ST_SEARCH = common dso_local global i32 0, align 4
@P2PAPI_BSSCFG_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_p2p_info*, i64)* @brcmf_p2p_act_frm_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_p2p_act_frm_search(%struct.brcmf_p2p_info* %0, i64 %1) #0 {
  %3 = alloca %struct.brcmf_p2p_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.brcmf_pub*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.brcmu_chan, align 8
  store %struct.brcmf_p2p_info* %0, %struct.brcmf_p2p_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %12 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.brcmf_pub*, %struct.brcmf_pub** %14, align 8
  store %struct.brcmf_pub* %15, %struct.brcmf_pub** %5, align 8
  %16 = load i32, i32* @TRACE, align 4
  %17 = call i32 @brcmf_dbg(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i64, i64* @AF_PEER_SEARCH_CNT, align 8
  store i64 %21, i64* %7, align 8
  br label %24

22:                                               ; preds = %2
  %23 = load i64, i64* @SOCIAL_CHAN_CNT, align 8
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i64* @kcalloc(i64 %25, i32 8, i32 %26)
  store i64* %27, i64** %8, align 8
  %28 = load i64*, i64** %8, align 8
  %29 = icmp eq i64* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %32 = call i32 @bphy_err(%struct.brcmf_pub* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %113

35:                                               ; preds = %24
  %36 = load i32, i32* @BRCMU_CHAN_BW_20, align 4
  %37 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %10, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %35
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %10, i32 0, i32 1
  store i64 %41, i64* %42, align 8
  %43 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %44 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (%struct.brcmu_chan*)*, i32 (%struct.brcmu_chan*)** %47, align 8
  %49 = call i32 %48(%struct.brcmu_chan* %10)
  store i64 0, i64* %9, align 8
  br label %50

50:                                               ; preds = %60, %40
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %10, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 %56, i64* %59, align 8
  br label %60

60:                                               ; preds = %54
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %9, align 8
  br label %50

63:                                               ; preds = %50
  br label %104

64:                                               ; preds = %35
  %65 = load i64, i64* @SOCIAL_CHAN_1, align 8
  %66 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %10, i32 0, i32 1
  store i64 %65, i64* %66, align 8
  %67 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %68 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32 (%struct.brcmu_chan*)*, i32 (%struct.brcmu_chan*)** %71, align 8
  %73 = call i32 %72(%struct.brcmu_chan* %10)
  %74 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %10, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %8, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* @SOCIAL_CHAN_2, align 8
  %79 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %10, i32 0, i32 1
  store i64 %78, i64* %79, align 8
  %80 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %81 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32 (%struct.brcmu_chan*)*, i32 (%struct.brcmu_chan*)** %84, align 8
  %86 = call i32 %85(%struct.brcmu_chan* %10)
  %87 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %10, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %8, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 1
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* @SOCIAL_CHAN_3, align 8
  %92 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %10, i32 0, i32 1
  store i64 %91, i64* %92, align 8
  %93 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %94 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32 (%struct.brcmu_chan*)*, i32 (%struct.brcmu_chan*)** %97, align 8
  %99 = call i32 %98(%struct.brcmu_chan* %10)
  %100 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %10, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64*, i64** %8, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 2
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %64, %63
  %105 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i64*, i64** %8, align 8
  %108 = load i32, i32* @WL_P2P_DISC_ST_SEARCH, align 4
  %109 = load i32, i32* @P2PAPI_BSSCFG_DEVICE, align 4
  %110 = call i32 @brcmf_p2p_escan(%struct.brcmf_p2p_info* %105, i64 %106, i64* %107, i32 %108, i32 %109)
  store i32 %110, i32* %6, align 4
  %111 = load i64*, i64** %8, align 8
  %112 = call i32 @kfree(i64* %111)
  br label %113

113:                                              ; preds = %104, %30
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i64* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

declare dso_local i32 @brcmf_p2p_escan(%struct.brcmf_p2p_info*, i64, i64*, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
