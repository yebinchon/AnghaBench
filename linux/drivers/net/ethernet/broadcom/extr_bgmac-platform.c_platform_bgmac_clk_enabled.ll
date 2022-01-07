; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-platform.c_platform_bgmac_clk_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-platform.c_platform_bgmac_clk_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BCMA_IOCTL = common dso_local global i32 0, align 4
@BGMAC_CLK_EN = common dso_local global i32 0, align 4
@BCMA_RESET_CTL = common dso_local global i32 0, align 4
@BCMA_RESET_CTL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bgmac*)* @platform_bgmac_clk_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platform_bgmac_clk_enabled(%struct.bgmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bgmac*, align 8
  store %struct.bgmac* %0, %struct.bgmac** %3, align 8
  %4 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %5 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %12 = load i32, i32* @BCMA_IOCTL, align 4
  %13 = call i32 @bgmac_idm_read(%struct.bgmac* %11, i32 %12)
  %14 = load i32, i32* @BGMAC_CLK_EN, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @BGMAC_CLK_EN, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %28

19:                                               ; preds = %10
  %20 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %21 = load i32, i32* @BCMA_RESET_CTL, align 4
  %22 = call i32 @bgmac_idm_read(%struct.bgmac* %20, i32 %21)
  %23 = load i32, i32* @BCMA_RESET_CTL_RESET, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %28

27:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %26, %18, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @bgmac_idm_read(%struct.bgmac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
