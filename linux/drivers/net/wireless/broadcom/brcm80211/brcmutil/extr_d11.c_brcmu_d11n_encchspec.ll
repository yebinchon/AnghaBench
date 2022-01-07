; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmutil/extr_d11.c_brcmu_d11n_encchspec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmutil/extr_d11.c_brcmu_d11n_encchspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmu_chan = type { i64, i64, i32, i32 }

@BRCMU_CHAN_BW_20 = common dso_local global i64 0, align 8
@BRCMU_CHAN_SB_NONE = common dso_local global i32 0, align 4
@BRCMU_CHSPEC_CH_MASK = common dso_local global i32 0, align 4
@BRCMU_CHSPEC_CH_SHIFT = common dso_local global i32 0, align 4
@BRCMU_CHSPEC_D11N_SB_MASK = common dso_local global i32 0, align 4
@BRCMU_CHSPEC_D11N_BW_MASK = common dso_local global i32 0, align 4
@CH_MAX_2G_CHANNEL = common dso_local global i64 0, align 8
@BRCMU_CHSPEC_D11N_BND_2G = common dso_local global i32 0, align 4
@BRCMU_CHSPEC_D11N_BND_5G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmu_chan*)* @brcmu_d11n_encchspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmu_d11n_encchspec(%struct.brcmu_chan* %0) #0 {
  %2 = alloca %struct.brcmu_chan*, align 8
  store %struct.brcmu_chan* %0, %struct.brcmu_chan** %2, align 8
  %3 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %4 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BRCMU_CHAN_BW_20, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @BRCMU_CHAN_SB_NONE, align 4
  %10 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %11 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %14 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %13, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %16 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %15, i32 0, i32 2
  %17 = load i32, i32* @BRCMU_CHSPEC_CH_MASK, align 4
  %18 = load i32, i32* @BRCMU_CHSPEC_CH_SHIFT, align 4
  %19 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %20 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @brcmu_maskset16(i32* %16, i32 %17, i32 %18, i64 %21)
  %23 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %24 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %23, i32 0, i32 2
  %25 = load i32, i32* @BRCMU_CHSPEC_D11N_SB_MASK, align 4
  %26 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %27 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @d11n_sb(i32 %28)
  %30 = call i32 @brcmu_maskset16(i32* %24, i32 %25, i32 0, i64 %29)
  %31 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %32 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %31, i32 0, i32 2
  %33 = load i32, i32* @BRCMU_CHSPEC_D11N_BW_MASK, align 4
  %34 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %35 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @d11n_bw(i64 %36)
  %38 = call i32 @brcmu_maskset16(i32* %32, i32 %33, i32 0, i64 %37)
  %39 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %40 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CH_MAX_2G_CHANNEL, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %12
  %45 = load i32, i32* @BRCMU_CHSPEC_D11N_BND_2G, align 4
  %46 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %47 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %56

50:                                               ; preds = %12
  %51 = load i32, i32* @BRCMU_CHSPEC_D11N_BND_5G, align 4
  %52 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %53 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %44
  ret void
}

declare dso_local i32 @brcmu_maskset16(i32*, i32, i32, i64) #1

declare dso_local i64 @d11n_sb(i32) #1

declare dso_local i64 @d11n_bw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
