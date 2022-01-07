; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_rtsx_pci_ms.c_ms_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_rtsx_pci_ms.c_ms_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_pci_ms = type { %struct.rtsx_pcr* }
%struct.rtsx_pcr = type { i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_CLK_EN = common dso_local global i32 0, align 4
@MS_CLK_EN = common dso_local global i32 0, align 4
@CARD_OE = common dso_local global i32 0, align 4
@MS_OUTPUT_EN = common dso_local global i32 0, align 4
@RTSX_MS_CARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.realtek_pci_ms*)* @ms_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_power_off(%struct.realtek_pci_ms* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.realtek_pci_ms*, align 8
  %4 = alloca %struct.rtsx_pcr*, align 8
  %5 = alloca i32, align 4
  store %struct.realtek_pci_ms* %0, %struct.realtek_pci_ms** %3, align 8
  %6 = load %struct.realtek_pci_ms*, %struct.realtek_pci_ms** %3, align 8
  %7 = getelementptr inbounds %struct.realtek_pci_ms, %struct.realtek_pci_ms* %6, i32 0, i32 0
  %8 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %7, align 8
  store %struct.rtsx_pcr* %8, %struct.rtsx_pcr** %4, align 8
  %9 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %10 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %9)
  %11 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %12 = load i32, i32* @WRITE_REG_CMD, align 4
  %13 = load i32, i32* @CARD_CLK_EN, align 4
  %14 = load i32, i32* @MS_CLK_EN, align 4
  %15 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %11, i32 %12, i32 %13, i32 %14, i32 0)
  %16 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %17 = load i32, i32* @WRITE_REG_CMD, align 4
  %18 = load i32, i32* @CARD_OE, align 4
  %19 = load i32, i32* @MS_OUTPUT_EN, align 4
  %20 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %16, i32 %17, i32 %18, i32 %19, i32 0)
  %21 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %22 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %21, i32 100)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %39

27:                                               ; preds = %1
  %28 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %29 = load i32, i32* @RTSX_MS_CARD, align 4
  %30 = call i32 @rtsx_pci_card_power_off(%struct.rtsx_pcr* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %39

35:                                               ; preds = %27
  %36 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %37 = load i32, i32* @RTSX_MS_CARD, align 4
  %38 = call i32 @rtsx_pci_card_pull_ctl_disable(%struct.rtsx_pcr* %36, i32 %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %33, %25
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_pci_card_power_off(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_pci_card_pull_ctl_disable(%struct.rtsx_pcr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
