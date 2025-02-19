; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_request_irq_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_request_irq_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_pci = type { i32 }
%struct.ath10k_ahb = type { i32 }

@ath10k_ahb_interrupt_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ath10k_ahb\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to request legacy irq %d: %d\0A\00", align 1
@ATH10K_PCI_IRQ_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_ahb_request_irq_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_ahb_request_irq_legacy(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_pci*, align 8
  %5 = alloca %struct.ath10k_ahb*, align 8
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %7)
  store %struct.ath10k_pci* %8, %struct.ath10k_pci** %4, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = call %struct.ath10k_ahb* @ath10k_ahb_priv(%struct.ath10k* %9)
  store %struct.ath10k_ahb* %10, %struct.ath10k_ahb** %5, align 8
  %11 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %5, align 8
  %12 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ath10k_ahb_interrupt_handler, align 4
  %15 = load i32, i32* @IRQF_SHARED, align 4
  %16 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %17 = call i32 @request_irq(i32 %13, i32 %14, i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.ath10k* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %22 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %5, align 8
  %23 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ath10k_warn(%struct.ath10k* %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @ATH10K_PCI_IRQ_LEGACY, align 4
  %30 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %31 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %20
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

declare dso_local %struct.ath10k_ahb* @ath10k_ahb_priv(%struct.ath10k*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.ath10k*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
