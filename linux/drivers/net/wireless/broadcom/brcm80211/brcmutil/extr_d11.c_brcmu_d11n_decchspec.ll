; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmutil/extr_d11.c_brcmu_d11n_decchspec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmutil/extr_d11.c_brcmu_d11n_decchspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmu_chan = type { i32, i32, i64, i32, i32, i64 }

@BRCMU_CHSPEC_CH_MASK = common dso_local global i32 0, align 4
@BRCMU_CHSPEC_D11N_BW_MASK = common dso_local global i32 0, align 4
@BRCMU_CHAN_BW_20 = common dso_local global i32 0, align 4
@BRCMU_CHAN_SB_NONE = common dso_local global i32 0, align 4
@BRCMU_CHAN_BW_40 = common dso_local global i32 0, align 4
@BRCMU_CHSPEC_D11N_SB_MASK = common dso_local global i32 0, align 4
@BRCMU_CHSPEC_D11N_SB_L = common dso_local global i32 0, align 4
@BRCMU_CHAN_SB_L = common dso_local global i32 0, align 4
@CH_10MHZ_APART = common dso_local global i32 0, align 4
@BRCMU_CHAN_SB_U = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid chanspec 0x%04x\0A\00", align 1
@BRCMU_CHSPEC_D11N_BND_MASK = common dso_local global i32 0, align 4
@BRCMU_CHAN_BAND_5G = common dso_local global i32 0, align 4
@BRCMU_CHAN_BAND_2G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmu_chan*)* @brcmu_d11n_decchspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmu_d11n_decchspec(%struct.brcmu_chan* %0) #0 {
  %2 = alloca %struct.brcmu_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.brcmu_chan* %0, %struct.brcmu_chan** %2, align 8
  %4 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %5 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @BRCMU_CHSPEC_CH_MASK, align 4
  %8 = and i32 %6, %7
  %9 = sext i32 %8 to i64
  %10 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %11 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %10, i32 0, i32 5
  store i64 %9, i64* %11, align 8
  %12 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %13 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %16 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %15, i32 0, i32 2
  store i64 %14, i64* %16, align 8
  %17 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %18 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @BRCMU_CHSPEC_D11N_BW_MASK, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %62 [
    i32 129, label %22
    i32 128, label %29
  ]

22:                                               ; preds = %1
  %23 = load i32, i32* @BRCMU_CHAN_BW_20, align 4
  %24 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %25 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @BRCMU_CHAN_SB_NONE, align 4
  %27 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %28 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  br label %67

29:                                               ; preds = %1
  %30 = load i32, i32* @BRCMU_CHAN_BW_40, align 4
  %31 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %32 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %34 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BRCMU_CHSPEC_D11N_SB_MASK, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @BRCMU_CHSPEC_D11N_SB_L, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %29
  %42 = load i32, i32* @BRCMU_CHAN_SB_L, align 4
  %43 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %44 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @CH_10MHZ_APART, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %48 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  br label %61

51:                                               ; preds = %29
  %52 = load i32, i32* @BRCMU_CHAN_SB_U, align 4
  %53 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %54 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @CH_10MHZ_APART, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %58 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %51, %41
  br label %67

62:                                               ; preds = %1
  %63 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %64 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %62, %61, %22
  %68 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %69 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @BRCMU_CHSPEC_D11N_BND_MASK, align 4
  %72 = and i32 %70, %71
  switch i32 %72, label %81 [
    i32 130, label %73
    i32 131, label %77
  ]

73:                                               ; preds = %67
  %74 = load i32, i32* @BRCMU_CHAN_BAND_5G, align 4
  %75 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %76 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %86

77:                                               ; preds = %67
  %78 = load i32, i32* @BRCMU_CHAN_BAND_2G, align 4
  %79 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %80 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %86

81:                                               ; preds = %67
  %82 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %83 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %81, %77, %73
  ret void
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
