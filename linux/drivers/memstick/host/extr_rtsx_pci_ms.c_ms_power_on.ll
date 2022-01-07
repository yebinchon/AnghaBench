; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_rtsx_pci_ms.c_ms_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_rtsx_pci_ms.c_ms_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_pci_ms = type { %struct.rtsx_pcr* }
%struct.rtsx_pcr = type { i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_SELECT = common dso_local global i32 0, align 4
@MS_MOD_SEL = common dso_local global i32 0, align 4
@CARD_SHARE_MODE = common dso_local global i32 0, align 4
@CARD_SHARE_MASK = common dso_local global i32 0, align 4
@CARD_SHARE_48_MS = common dso_local global i32 0, align 4
@CARD_CLK_EN = common dso_local global i32 0, align 4
@MS_CLK_EN = common dso_local global i32 0, align 4
@RTSX_MS_CARD = common dso_local global i32 0, align 4
@CARD_OE = common dso_local global i32 0, align 4
@MS_OUTPUT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.realtek_pci_ms*)* @ms_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_power_on(%struct.realtek_pci_ms* %0) #0 {
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
  %13 = load i32, i32* @CARD_SELECT, align 4
  %14 = load i32, i32* @MS_MOD_SEL, align 4
  %15 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %11, i32 %12, i32 %13, i32 7, i32 %14)
  %16 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %17 = load i32, i32* @WRITE_REG_CMD, align 4
  %18 = load i32, i32* @CARD_SHARE_MODE, align 4
  %19 = load i32, i32* @CARD_SHARE_MASK, align 4
  %20 = load i32, i32* @CARD_SHARE_48_MS, align 4
  %21 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %23 = load i32, i32* @WRITE_REG_CMD, align 4
  %24 = load i32, i32* @CARD_CLK_EN, align 4
  %25 = load i32, i32* @MS_CLK_EN, align 4
  %26 = load i32, i32* @MS_CLK_EN, align 4
  %27 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %22, i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %29 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %28, i32 100)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %62

34:                                               ; preds = %1
  %35 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %36 = load i32, i32* @RTSX_MS_CARD, align 4
  %37 = call i32 @rtsx_pci_card_pull_ctl_enable(%struct.rtsx_pcr* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %62

42:                                               ; preds = %34
  %43 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %44 = load i32, i32* @RTSX_MS_CARD, align 4
  %45 = call i32 @rtsx_pci_card_power_on(%struct.rtsx_pcr* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %62

50:                                               ; preds = %42
  %51 = call i32 @msleep(i32 150)
  %52 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %53 = load i32, i32* @CARD_OE, align 4
  %54 = load i32, i32* @MS_OUTPUT_EN, align 4
  %55 = load i32, i32* @MS_OUTPUT_EN, align 4
  %56 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %59, %48, %40, %32
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_pci_card_pull_ctl_enable(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_pci_card_power_on(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
