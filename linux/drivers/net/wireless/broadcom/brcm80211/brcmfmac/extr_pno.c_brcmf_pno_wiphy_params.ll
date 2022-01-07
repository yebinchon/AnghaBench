; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_wiphy_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_wiphy_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32, i32, i32, i8*, i8* }

@BRCMF_PNO_MAX_BUCKETS = common dso_local global i32 0, align 4
@BRCMF_PNO_MAX_PFN_COUNT = common dso_local global i8* null, align 8
@BRCMF_SCAN_IE_LEN_MAX = common dso_local global i32 0, align 4
@BRCMF_PNO_SCHED_SCAN_MAX_PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_pno_wiphy_params(%struct.wiphy* %0, i32 %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i32, i32* @BRCMF_PNO_MAX_BUCKETS, align 4
  br label %10

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 1, %9 ]
  %12 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %13 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i8*, i8** @BRCMF_PNO_MAX_PFN_COUNT, align 8
  %15 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %16 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %15, i32 0, i32 4
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @BRCMF_PNO_MAX_PFN_COUNT, align 8
  %18 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %19 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @BRCMF_SCAN_IE_LEN_MAX, align 4
  %21 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %22 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @BRCMF_PNO_SCHED_SCAN_MAX_PERIOD, align 4
  %24 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %25 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
