; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_chip_reset_idm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_chip_reset_idm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { i32, i32 }

@BCMA_IOST = common dso_local global i32 0, align 4
@BGMAC_FEAT_IOST_ATTACHED = common dso_local global i32 0, align 4
@BGMAC_BCMA_IOST_ATTACHED = common dso_local global i32 0, align 4
@BGMAC_FEAT_NO_RESET = common dso_local global i32 0, align 4
@BGMAC_BCMA_IOCTL_SW_CLKEN = common dso_local global i32 0, align 4
@BGMAC_BCMA_IOCTL_SW_RESET = common dso_local global i32 0, align 4
@BCMA_IOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgmac*)* @bgmac_chip_reset_idm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgmac_chip_reset_idm_config(%struct.bgmac* %0) #0 {
  %2 = alloca %struct.bgmac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %2, align 8
  %5 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %6 = load i32, i32* @BCMA_IOST, align 4
  %7 = call i32 @bgmac_idm_read(%struct.bgmac* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %9 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BGMAC_FEAT_IOST_ATTACHED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @BGMAC_BCMA_IOST_ATTACHED, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %21 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BGMAC_FEAT_NO_RESET, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @BGMAC_BCMA_IOST_ATTACHED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i32, i32* @BGMAC_BCMA_IOCTL_SW_CLKEN, align 4
  store i32 %32, i32* %4, align 4
  %33 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %34 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @BGMAC_BCMA_IOCTL_SW_RESET, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %31
  br label %42

42:                                               ; preds = %41, %26
  %43 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @bgmac_clk_enable(%struct.bgmac* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %19
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @BGMAC_BCMA_IOST_ATTACHED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %53 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %58 = load i32, i32* @BCMA_IOCTL, align 4
  %59 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %60 = load i32, i32* @BCMA_IOCTL, align 4
  %61 = call i32 @bgmac_idm_read(%struct.bgmac* %59, i32 %60)
  %62 = load i32, i32* @BGMAC_BCMA_IOCTL_SW_RESET, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = call i32 @bgmac_idm_write(%struct.bgmac* %57, i32 %58, i32 %64)
  br label %66

66:                                               ; preds = %56, %51, %46
  ret void
}

declare dso_local i32 @bgmac_idm_read(%struct.bgmac*, i32) #1

declare dso_local i32 @bgmac_clk_enable(%struct.bgmac*, i32) #1

declare dso_local i32 @bgmac_idm_write(%struct.bgmac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
