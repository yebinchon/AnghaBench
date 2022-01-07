; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_aiutils.c_ai_slowclk_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_aiutils.c_ai_slowclk_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_pub = type { i32 }
%struct.bcma_device = type { i32 }

@system_clk_ctl = common dso_local global i32 0, align 4
@SYCC_CD_SHIFT = common dso_local global i32 0, align 4
@XTALMAXFREQ = common dso_local global i32 0, align 4
@XTALMINFREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si_pub*, i32, %struct.bcma_device*)* @ai_slowclk_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ai_slowclk_freq(%struct.si_pub* %0, i32 %1, %struct.bcma_device* %2) #0 {
  %4 = alloca %struct.si_pub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcma_device*, align 8
  %7 = alloca i32, align 4
  store %struct.si_pub* %0, %struct.si_pub** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bcma_device* %2, %struct.bcma_device** %6, align 8
  %8 = load %struct.bcma_device*, %struct.bcma_device** %6, align 8
  %9 = load i32, i32* @system_clk_ctl, align 4
  %10 = call i32 @CHIPCREGOFFS(i32 %9)
  %11 = call i32 @bcma_read32(%struct.bcma_device* %8, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @SYCC_CD_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = add nsw i32 %14, 1
  %16 = mul nsw i32 4, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @XTALMAXFREQ, align 4
  br label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @XTALMINFREQ, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sdiv i32 %22, %23
  br label %25

25:                                               ; preds = %21, %19
  %26 = phi i32 [ %20, %19 ], [ %24, %21 ]
  ret i32 %26
}

declare dso_local i32 @bcma_read32(%struct.bcma_device*, i32) #1

declare dso_local i32 @CHIPCREGOFFS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
