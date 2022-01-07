; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_up_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_up_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"wl%d\0A\00", align 1
@ON = common dso_local global i32 0, align 4
@BCMA_CLKMODE_FAST = common dso_local global i32 0, align 4
@OFF = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@BRCMS_USE_COREFLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_hardware*)* @brcms_b_up_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_b_up_prep(%struct.brcms_hardware* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcms_hardware*, align 8
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %3, align 8
  %4 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %5 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %8 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @brcms_dbg_info(%struct.TYPE_3__* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %12 = load i32, i32* @ON, align 4
  %13 = call i32 @brcms_b_xtal(%struct.brcms_hardware* %11, i32 %12)
  %14 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %15 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ai_clkctl_init(i32 %16)
  %18 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %19 = load i32, i32* @BCMA_CLKMODE_FAST, align 4
  %20 = call i32 @brcms_b_clkctl_clk(%struct.brcms_hardware* %18, i32 %19)
  %21 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %22 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %27 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = call i32 @bcma_host_pci_irq_ctl(i32 %25, %struct.TYPE_3__* %28, i32 1)
  %30 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %31 = call i64 @brcms_b_radio_read_hwdisabled(%struct.brcms_hardware* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %1
  %34 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %35 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bcma_host_pci_down(i32 %38)
  %40 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %41 = load i32, i32* @OFF, align 4
  %42 = call i32 @brcms_b_xtal(%struct.brcms_hardware* %40, i32 %41)
  %43 = load i32, i32* @ENOMEDIUM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %55

45:                                               ; preds = %1
  %46 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %47 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bcma_host_pci_up(i32 %50)
  %52 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %53 = load i32, i32* @BRCMS_USE_COREFLAGS, align 4
  %54 = call i32 @brcms_b_corereset(%struct.brcms_hardware* %52, i32 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %45, %33
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @brcms_dbg_info(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @brcms_b_xtal(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @ai_clkctl_init(i32) #1

declare dso_local i32 @brcms_b_clkctl_clk(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @bcma_host_pci_irq_ctl(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @brcms_b_radio_read_hwdisabled(%struct.brcms_hardware*) #1

declare dso_local i32 @bcma_host_pci_down(i32) #1

declare dso_local i32 @bcma_host_pci_up(i32) #1

declare dso_local i32 @brcms_b_corereset(%struct.brcms_hardware*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
