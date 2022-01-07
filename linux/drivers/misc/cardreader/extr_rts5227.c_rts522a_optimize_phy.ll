; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5227.c_rts522a_optimize_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5227.c_rts522a_optimize_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@RTS522A_PM_CTRL3 = common dso_local global i32 0, align 4
@D3_DELINK_MODE_EN = common dso_local global i32 0, align 4
@IC_VER_A = common dso_local global i32 0, align 4
@PHY_RCR2 = common dso_local global i32 0, align 4
@PHY_RCR2_INIT_27S = common dso_local global i32 0, align 4
@PHY_RCR1 = common dso_local global i32 0, align 4
@PHY_RCR1_INIT_27S = common dso_local global i32 0, align 4
@PHY_FLD0 = common dso_local global i32 0, align 4
@PHY_FLD0_INIT_27S = common dso_local global i32 0, align 4
@PHY_FLD3 = common dso_local global i32 0, align 4
@PHY_FLD3_INIT_27S = common dso_local global i32 0, align 4
@PHY_FLD4 = common dso_local global i32 0, align 4
@PHY_FLD4_INIT_27S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*)* @rts522a_optimize_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts522a_optimize_phy(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_pcr*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %3, align 8
  %5 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %6 = load i32, i32* @RTS522A_PM_CTRL3, align 4
  %7 = load i32, i32* @D3_DELINK_MODE_EN, align 4
  %8 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %5, i32 %6, i32 %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %45

13:                                               ; preds = %1
  %14 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %15 = load i32, i32* @IC_VER_A, align 4
  %16 = call i64 @is_version(%struct.rtsx_pcr* %14, i32 21034, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %13
  %19 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %20 = load i32, i32* @PHY_RCR2, align 4
  %21 = load i32, i32* @PHY_RCR2_INIT_27S, align 4
  %22 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %19, i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %45

27:                                               ; preds = %18
  %28 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %29 = load i32, i32* @PHY_RCR1, align 4
  %30 = load i32, i32* @PHY_RCR1_INIT_27S, align 4
  %31 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %28, i32 %29, i32 %30)
  %32 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %33 = load i32, i32* @PHY_FLD0, align 4
  %34 = load i32, i32* @PHY_FLD0_INIT_27S, align 4
  %35 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %32, i32 %33, i32 %34)
  %36 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %37 = load i32, i32* @PHY_FLD3, align 4
  %38 = load i32, i32* @PHY_FLD3_INIT_27S, align 4
  %39 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %36, i32 %37, i32 %38)
  %40 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %41 = load i32, i32* @PHY_FLD4, align 4
  %42 = load i32, i32* @PHY_FLD4_INIT_27S, align 4
  %43 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %27, %13
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %25, %11
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

declare dso_local i64 @is_version(%struct.rtsx_pcr*, i32, i32) #1

declare dso_local i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
