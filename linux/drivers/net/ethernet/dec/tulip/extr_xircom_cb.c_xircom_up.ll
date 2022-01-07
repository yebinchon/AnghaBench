; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_xircom_cb.c_xircom_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_xircom_cb.c_xircom_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xircom_private = type { i32, i32, i32 }

@PCI_POWERMGMT = common dso_local global i32 0, align 4
@NUMDESCRIPTORS = common dso_local global i32 0, align 4
@bufferoffsets = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xircom_private*)* @xircom_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xircom_up(%struct.xircom_private* %0) #0 {
  %2 = alloca %struct.xircom_private*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.xircom_private* %0, %struct.xircom_private** %2, align 8
  %5 = load %struct.xircom_private*, %struct.xircom_private** %2, align 8
  %6 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PCI_POWERMGMT, align 4
  %9 = call i32 @pci_write_config_dword(i32 %7, i32 %8, i32 0)
  %10 = load %struct.xircom_private*, %struct.xircom_private** %2, align 8
  %11 = call i32 @setup_descriptors(%struct.xircom_private* %10)
  %12 = load %struct.xircom_private*, %struct.xircom_private** %2, align 8
  %13 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %12, i32 0, i32 1
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.xircom_private*, %struct.xircom_private** %2, align 8
  %17 = call i32 @enable_link_interrupt(%struct.xircom_private* %16)
  %18 = load %struct.xircom_private*, %struct.xircom_private** %2, align 8
  %19 = call i32 @enable_transmit_interrupt(%struct.xircom_private* %18)
  %20 = load %struct.xircom_private*, %struct.xircom_private** %2, align 8
  %21 = call i32 @enable_receive_interrupt(%struct.xircom_private* %20)
  %22 = load %struct.xircom_private*, %struct.xircom_private** %2, align 8
  %23 = call i32 @enable_common_interrupts(%struct.xircom_private* %22)
  %24 = load %struct.xircom_private*, %struct.xircom_private** %2, align 8
  %25 = call i32 @enable_promisc(%struct.xircom_private* %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %42, %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @NUMDESCRIPTORS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load %struct.xircom_private*, %struct.xircom_private** %2, align 8
  %32 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.xircom_private*, %struct.xircom_private** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32*, i32** @bufferoffsets, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @investigate_read_descriptor(i32 %33, %struct.xircom_private* %34, i32 %35, i32 %40)
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %26

45:                                               ; preds = %26
  %46 = load %struct.xircom_private*, %struct.xircom_private** %2, align 8
  %47 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %46, i32 0, i32 1
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.xircom_private*, %struct.xircom_private** %2, align 8
  %51 = call i32 @trigger_receive(%struct.xircom_private* %50)
  %52 = load %struct.xircom_private*, %struct.xircom_private** %2, align 8
  %53 = call i32 @trigger_transmit(%struct.xircom_private* %52)
  %54 = load %struct.xircom_private*, %struct.xircom_private** %2, align 8
  %55 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @netif_start_queue(i32 %56)
  ret void
}

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @setup_descriptors(%struct.xircom_private*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @enable_link_interrupt(%struct.xircom_private*) #1

declare dso_local i32 @enable_transmit_interrupt(%struct.xircom_private*) #1

declare dso_local i32 @enable_receive_interrupt(%struct.xircom_private*) #1

declare dso_local i32 @enable_common_interrupts(%struct.xircom_private*) #1

declare dso_local i32 @enable_promisc(%struct.xircom_private*) #1

declare dso_local i32 @investigate_read_descriptor(i32, %struct.xircom_private*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @trigger_receive(%struct.xircom_private*) #1

declare dso_local i32 @trigger_transmit(%struct.xircom_private*) #1

declare dso_local i32 @netif_start_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
