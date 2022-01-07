; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_mac_clk_spd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_mac_clk_spd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32 }

@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@PLA_MAC_PWR_CTRL = common dso_local global i32 0, align 4
@ALDPS_SPDWN_RATIO = common dso_local global i32 0, align 4
@PLA_MAC_PWR_CTRL2 = common dso_local global i32 0, align 4
@EEE_SPDWN_RATIO = common dso_local global i32 0, align 4
@PLA_MAC_PWR_CTRL3 = common dso_local global i32 0, align 4
@PKT_AVAIL_SPDWN_EN = common dso_local global i32 0, align 4
@SUSPEND_SPDWN_EN = common dso_local global i32 0, align 4
@U1U2_SPDWN_EN = common dso_local global i32 0, align 4
@L1_SPDWN_EN = common dso_local global i32 0, align 4
@PLA_MAC_PWR_CTRL4 = common dso_local global i32 0, align 4
@PWRSAVE_SPDWN_EN = common dso_local global i32 0, align 4
@RXDV_SPDWN_EN = common dso_local global i32 0, align 4
@TX10MIDLE_EN = common dso_local global i32 0, align 4
@TP100_SPDWN_EN = common dso_local global i32 0, align 4
@TP500_SPDWN_EN = common dso_local global i32 0, align 4
@EEE_SPDWN_EN = common dso_local global i32 0, align 4
@TP1000_SPDWN_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*, i32)* @r8153_mac_clk_spd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8153_mac_clk_spd(%struct.r8152* %0, i32 %1) #0 {
  %3 = alloca %struct.r8152*, align 8
  %4 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %46

7:                                                ; preds = %2
  %8 = load %struct.r8152*, %struct.r8152** %3, align 8
  %9 = load i32, i32* @MCU_TYPE_PLA, align 4
  %10 = load i32, i32* @PLA_MAC_PWR_CTRL, align 4
  %11 = load i32, i32* @ALDPS_SPDWN_RATIO, align 4
  %12 = call i32 @ocp_write_word(%struct.r8152* %8, i32 %9, i32 %10, i32 %11)
  %13 = load %struct.r8152*, %struct.r8152** %3, align 8
  %14 = load i32, i32* @MCU_TYPE_PLA, align 4
  %15 = load i32, i32* @PLA_MAC_PWR_CTRL2, align 4
  %16 = load i32, i32* @EEE_SPDWN_RATIO, align 4
  %17 = call i32 @ocp_write_word(%struct.r8152* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.r8152*, %struct.r8152** %3, align 8
  %19 = load i32, i32* @MCU_TYPE_PLA, align 4
  %20 = load i32, i32* @PLA_MAC_PWR_CTRL3, align 4
  %21 = load i32, i32* @PKT_AVAIL_SPDWN_EN, align 4
  %22 = load i32, i32* @SUSPEND_SPDWN_EN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @U1U2_SPDWN_EN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @L1_SPDWN_EN, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @ocp_write_word(%struct.r8152* %18, i32 %19, i32 %20, i32 %27)
  %29 = load %struct.r8152*, %struct.r8152** %3, align 8
  %30 = load i32, i32* @MCU_TYPE_PLA, align 4
  %31 = load i32, i32* @PLA_MAC_PWR_CTRL4, align 4
  %32 = load i32, i32* @PWRSAVE_SPDWN_EN, align 4
  %33 = load i32, i32* @RXDV_SPDWN_EN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @TX10MIDLE_EN, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @TP100_SPDWN_EN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @TP500_SPDWN_EN, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @EEE_SPDWN_EN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @TP1000_SPDWN_EN, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @ocp_write_word(%struct.r8152* %29, i32 %30, i32 %31, i32 %44)
  br label %63

46:                                               ; preds = %2
  %47 = load %struct.r8152*, %struct.r8152** %3, align 8
  %48 = load i32, i32* @MCU_TYPE_PLA, align 4
  %49 = load i32, i32* @PLA_MAC_PWR_CTRL, align 4
  %50 = call i32 @ocp_write_word(%struct.r8152* %47, i32 %48, i32 %49, i32 0)
  %51 = load %struct.r8152*, %struct.r8152** %3, align 8
  %52 = load i32, i32* @MCU_TYPE_PLA, align 4
  %53 = load i32, i32* @PLA_MAC_PWR_CTRL2, align 4
  %54 = call i32 @ocp_write_word(%struct.r8152* %51, i32 %52, i32 %53, i32 0)
  %55 = load %struct.r8152*, %struct.r8152** %3, align 8
  %56 = load i32, i32* @MCU_TYPE_PLA, align 4
  %57 = load i32, i32* @PLA_MAC_PWR_CTRL3, align 4
  %58 = call i32 @ocp_write_word(%struct.r8152* %55, i32 %56, i32 %57, i32 0)
  %59 = load %struct.r8152*, %struct.r8152** %3, align 8
  %60 = load i32, i32* @MCU_TYPE_PLA, align 4
  %61 = load i32, i32* @PLA_MAC_PWR_CTRL4, align 4
  %62 = call i32 @ocp_write_word(%struct.r8152* %59, i32 %60, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %46, %7
  ret void
}

declare dso_local i32 @ocp_write_word(%struct.r8152*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
