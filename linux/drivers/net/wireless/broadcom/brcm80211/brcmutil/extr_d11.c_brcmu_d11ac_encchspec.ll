; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmutil/extr_d11.c_brcmu_d11ac_encchspec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmutil/extr_d11.c_brcmu_d11ac_encchspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmu_chan = type { i64, i64, i64, i32 }

@BRCMU_CHAN_BW_20 = common dso_local global i64 0, align 8
@BRCMU_CHAN_SB_NONE = common dso_local global i64 0, align 8
@BRCMU_CHAN_SB_L = common dso_local global i64 0, align 8
@BRCMU_CHSPEC_CH_MASK = common dso_local global i32 0, align 4
@BRCMU_CHSPEC_CH_SHIFT = common dso_local global i32 0, align 4
@BRCMU_CHSPEC_D11AC_SB_MASK = common dso_local global i32 0, align 4
@BRCMU_CHSPEC_D11AC_SB_SHIFT = common dso_local global i32 0, align 4
@BRCMU_CHSPEC_D11AC_BW_MASK = common dso_local global i32 0, align 4
@BRCMU_CHSPEC_D11AC_BND_MASK = common dso_local global i32 0, align 4
@CH_MAX_2G_CHANNEL = common dso_local global i64 0, align 8
@BRCMU_CHSPEC_D11AC_BND_2G = common dso_local global i32 0, align 4
@BRCMU_CHSPEC_D11AC_BND_5G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmu_chan*)* @brcmu_d11ac_encchspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmu_d11ac_encchspec(%struct.brcmu_chan* %0) #0 {
  %2 = alloca %struct.brcmu_chan*, align 8
  store %struct.brcmu_chan* %0, %struct.brcmu_chan** %2, align 8
  %3 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %4 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BRCMU_CHAN_BW_20, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %10 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BRCMU_CHAN_SB_NONE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %8, %1
  %15 = load i64, i64* @BRCMU_CHAN_SB_L, align 8
  %16 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %17 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %14, %8
  %19 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %20 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %19, i32 0, i32 3
  %21 = load i32, i32* @BRCMU_CHSPEC_CH_MASK, align 4
  %22 = load i32, i32* @BRCMU_CHSPEC_CH_SHIFT, align 4
  %23 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %24 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @brcmu_maskset16(i32* %20, i32 %21, i32 %22, i64 %25)
  %27 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %28 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %27, i32 0, i32 3
  %29 = load i32, i32* @BRCMU_CHSPEC_D11AC_SB_MASK, align 4
  %30 = load i32, i32* @BRCMU_CHSPEC_D11AC_SB_SHIFT, align 4
  %31 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %32 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @brcmu_maskset16(i32* %28, i32 %29, i32 %30, i64 %33)
  %35 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %36 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %35, i32 0, i32 3
  %37 = load i32, i32* @BRCMU_CHSPEC_D11AC_BW_MASK, align 4
  %38 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %39 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @d11ac_bw(i64 %40)
  %42 = call i32 @brcmu_maskset16(i32* %36, i32 %37, i32 0, i64 %41)
  %43 = load i32, i32* @BRCMU_CHSPEC_D11AC_BND_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %46 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %50 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CH_MAX_2G_CHANNEL, align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %18
  %55 = load i32, i32* @BRCMU_CHSPEC_D11AC_BND_2G, align 4
  %56 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %57 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %66

60:                                               ; preds = %18
  %61 = load i32, i32* @BRCMU_CHSPEC_D11AC_BND_5G, align 4
  %62 = load %struct.brcmu_chan*, %struct.brcmu_chan** %2, align 8
  %63 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %54
  ret void
}

declare dso_local i32 @brcmu_maskset16(i32*, i32, i32, i64) #1

declare dso_local i64 @d11ac_bw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
