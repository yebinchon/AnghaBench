; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtl8411.c_rtl8411_card_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtl8411.c_rtl8411_card_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_PWR_CTL = common dso_local global i32 0, align 4
@BPP_POWER_MASK = common dso_local global i32 0, align 4
@BPP_POWER_5_PERCENT_ON = common dso_local global i32 0, align 4
@LDO_CTL = common dso_local global i32 0, align 4
@BPP_LDO_POWB = common dso_local global i32 0, align 4
@BPP_LDO_SUSPEND = common dso_local global i32 0, align 4
@BPP_POWER_10_PERCENT_ON = common dso_local global i32 0, align 4
@BPP_POWER_15_PERCENT_ON = common dso_local global i32 0, align 4
@BPP_POWER_ON = common dso_local global i32 0, align 4
@BPP_LDO_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*, i32)* @rtl8411_card_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8411_card_power_on(%struct.rtsx_pcr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_pcr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %8 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %7)
  %9 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %10 = load i32, i32* @WRITE_REG_CMD, align 4
  %11 = load i32, i32* @CARD_PWR_CTL, align 4
  %12 = load i32, i32* @BPP_POWER_MASK, align 4
  %13 = load i32, i32* @BPP_POWER_5_PERCENT_ON, align 4
  %14 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %9, i32 %10, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %16 = load i32, i32* @WRITE_REG_CMD, align 4
  %17 = load i32, i32* @LDO_CTL, align 4
  %18 = load i32, i32* @BPP_LDO_POWB, align 4
  %19 = load i32, i32* @BPP_LDO_SUSPEND, align 4
  %20 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %22 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %21, i32 100)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %66

27:                                               ; preds = %2
  %28 = call i32 @udelay(i32 150)
  %29 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %30 = load i32, i32* @CARD_PWR_CTL, align 4
  %31 = load i32, i32* @BPP_POWER_MASK, align 4
  %32 = load i32, i32* @BPP_POWER_10_PERCENT_ON, align 4
  %33 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %66

38:                                               ; preds = %27
  %39 = call i32 @udelay(i32 150)
  %40 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %41 = load i32, i32* @CARD_PWR_CTL, align 4
  %42 = load i32, i32* @BPP_POWER_MASK, align 4
  %43 = load i32, i32* @BPP_POWER_15_PERCENT_ON, align 4
  %44 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %66

49:                                               ; preds = %38
  %50 = call i32 @udelay(i32 150)
  %51 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %52 = load i32, i32* @CARD_PWR_CTL, align 4
  %53 = load i32, i32* @BPP_POWER_MASK, align 4
  %54 = load i32, i32* @BPP_POWER_ON, align 4
  %55 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %66

60:                                               ; preds = %49
  %61 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %62 = load i32, i32* @LDO_CTL, align 4
  %63 = load i32, i32* @BPP_LDO_POWB, align 4
  %64 = load i32, i32* @BPP_LDO_ON, align 4
  %65 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %60, %58, %47, %36, %25
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
