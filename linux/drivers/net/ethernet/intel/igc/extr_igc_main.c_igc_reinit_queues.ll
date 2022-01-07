; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_reinit_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_reinit_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { %struct.pci_dev*, %struct.net_device* }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Unable to allocate memory for queues\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igc_reinit_queues(%struct.igc_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.igc_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.igc_adapter* %0, %struct.igc_adapter** %3, align 8
  %7 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %7, i32 0, i32 1
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i64 @netif_running(%struct.net_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call i32 @igc_close(%struct.net_device* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %21 = call i32 @igc_reset_interrupt_capability(%struct.igc_adapter* %20)
  %22 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %23 = call i64 @igc_init_interrupt_scheme(%struct.igc_adapter* %22, i32 1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %40

31:                                               ; preds = %19
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = call i64 @netif_running(%struct.net_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i32 @igc_open(%struct.net_device* %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %25
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @igc_close(%struct.net_device*) #1

declare dso_local i32 @igc_reset_interrupt_capability(%struct.igc_adapter*) #1

declare dso_local i64 @igc_init_interrupt_scheme(%struct.igc_adapter*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @igc_open(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
