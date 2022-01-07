; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_reset_interrupt_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_reset_interrupt_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32 }

@IGB_FLAG_HAS_MSIX = common dso_local global i32 0, align 4
@IGB_FLAG_HAS_MSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_reset_interrupt_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_reset_interrupt_capability(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %4 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IGB_FLAG_HAS_MSIX, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pci_disable_msix(i32 %16)
  br label %31

18:                                               ; preds = %1
  %19 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IGB_FLAG_HAS_MSI, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pci_disable_msi(i32 %28)
  br label %30

30:                                               ; preds = %25, %18
  br label %31

31:                                               ; preds = %30, %13
  br label %32

32:                                               ; preds = %36, %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %3, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @igb_reset_q_vector(%struct.igb_adapter* %37, i32 %38)
  br label %32

40:                                               ; preds = %32
  ret void
}

declare dso_local i32 @pci_disable_msix(i32) #1

declare dso_local i32 @pci_disable_msi(i32) #1

declare dso_local i32 @igb_reset_q_vector(%struct.igb_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
