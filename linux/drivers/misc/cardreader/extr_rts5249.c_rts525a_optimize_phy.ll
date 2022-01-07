; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts525a_optimize_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts525a_optimize_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@RTS524A_PM_CTRL3 = common dso_local global i32 0, align 4
@D3_DELINK_MODE_EN = common dso_local global i32 0, align 4
@_PHY_FLD0 = common dso_local global i32 0, align 4
@_PHY_FLD0_CLK_REQ_20C = common dso_local global i32 0, align 4
@_PHY_FLD0_RX_IDLE_EN = common dso_local global i32 0, align 4
@_PHY_FLD0_BIT_ERR_RSTN = common dso_local global i32 0, align 4
@_PHY_FLD0_BER_COUNT = common dso_local global i32 0, align 4
@_PHY_FLD0_BER_TIMER = common dso_local global i32 0, align 4
@_PHY_FLD0_CHECK_EN = common dso_local global i32 0, align 4
@_PHY_ANA03 = common dso_local global i32 0, align 4
@_PHY_ANA03_TIMER_MAX = common dso_local global i32 0, align 4
@_PHY_ANA03_OOBS_DEB_EN = common dso_local global i32 0, align 4
@_PHY_CMU_DEBUG_EN = common dso_local global i32 0, align 4
@IC_VER_A = common dso_local global i32 0, align 4
@_PHY_REV0 = common dso_local global i32 0, align 4
@_PHY_REV0_FILTER_OUT = common dso_local global i32 0, align 4
@_PHY_REV0_CDR_BYPASS_PFD = common dso_local global i32 0, align 4
@_PHY_REV0_CDR_RX_IDLE_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*)* @rts525a_optimize_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts525a_optimize_phy(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_pcr*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %3, align 8
  %5 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %6 = load i32, i32* @RTS524A_PM_CTRL3, align 4
  %7 = load i32, i32* @D3_DELINK_MODE_EN, align 4
  %8 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %5, i32 %6, i32 %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %15 = load i32, i32* @_PHY_FLD0, align 4
  %16 = load i32, i32* @_PHY_FLD0_CLK_REQ_20C, align 4
  %17 = load i32, i32* @_PHY_FLD0_RX_IDLE_EN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @_PHY_FLD0_BIT_ERR_RSTN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @_PHY_FLD0_BER_COUNT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @_PHY_FLD0_BER_TIMER, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @_PHY_FLD0_CHECK_EN, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %14, i32 %15, i32 %26)
  %28 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %29 = load i32, i32* @_PHY_ANA03, align 4
  %30 = load i32, i32* @_PHY_ANA03_TIMER_MAX, align 4
  %31 = load i32, i32* @_PHY_ANA03_OOBS_DEB_EN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @_PHY_CMU_DEBUG_EN, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %28, i32 %29, i32 %34)
  %36 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %37 = load i32, i32* @IC_VER_A, align 4
  %38 = call i64 @is_version(%struct.rtsx_pcr* %36, i32 21082, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %13
  %41 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %42 = load i32, i32* @_PHY_REV0, align 4
  %43 = load i32, i32* @_PHY_REV0_FILTER_OUT, align 4
  %44 = load i32, i32* @_PHY_REV0_CDR_BYPASS_PFD, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @_PHY_REV0_CDR_RX_IDLE_BYPASS, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %41, i32 %42, i32 %47)
  br label %49

49:                                               ; preds = %40, %13
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr*, i32, i32) #1

declare dso_local i64 @is_version(%struct.rtsx_pcr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
