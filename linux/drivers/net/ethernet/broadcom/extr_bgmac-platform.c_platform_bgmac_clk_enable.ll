; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-platform.c_platform_bgmac_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-platform.c_platform_bgmac_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BCMA_RESET_CTL = common dso_local global i32 0, align 4
@BCMA_IOCTL = common dso_local global i32 0, align 4
@BGMAC_AWCACHE = common dso_local global i32 0, align 4
@BGMAC_ARCACHE = common dso_local global i32 0, align 4
@BGMAC_AWUSER = common dso_local global i32 0, align 4
@BGMAC_ARUSER = common dso_local global i32 0, align 4
@BGMAC_CLK_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgmac*, i32)* @platform_bgmac_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @platform_bgmac_clk_enable(%struct.bgmac* %0, i32 %1) #0 {
  %3 = alloca %struct.bgmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %7 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %53

12:                                               ; preds = %2
  %13 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %14 = load i32, i32* @BCMA_RESET_CTL, align 4
  %15 = call i32 @bgmac_idm_read(%struct.bgmac* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %20 = load i32, i32* @BCMA_RESET_CTL, align 4
  %21 = call i32 @bgmac_idm_write(%struct.bgmac* %19, i32 %20, i32 0)
  %22 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %23 = load i32, i32* @BCMA_RESET_CTL, align 4
  %24 = call i32 @bgmac_idm_read(%struct.bgmac* %22, i32 %23)
  %25 = call i32 @udelay(i32 1)
  br label %26

26:                                               ; preds = %18, %12
  %27 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %28 = load i32, i32* @BCMA_IOCTL, align 4
  %29 = call i32 @bgmac_idm_read(%struct.bgmac* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @BGMAC_AWCACHE, align 4
  %32 = load i32, i32* @BGMAC_ARCACHE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @BGMAC_AWUSER, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @BGMAC_ARUSER, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = and i32 %30, %38
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @BGMAC_CLK_EN, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %46 = load i32, i32* @BCMA_IOCTL, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @bgmac_idm_write(%struct.bgmac* %45, i32 %46, i32 %47)
  %49 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %50 = load i32, i32* @BCMA_IOCTL, align 4
  %51 = call i32 @bgmac_idm_read(%struct.bgmac* %49, i32 %50)
  %52 = call i32 @udelay(i32 1)
  br label %53

53:                                               ; preds = %26, %11
  ret void
}

declare dso_local i32 @bgmac_idm_read(%struct.bgmac*, i32) #1

declare dso_local i32 @bgmac_idm_write(%struct.bgmac*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
