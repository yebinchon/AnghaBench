; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis190.c_sis190_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis190.c_sis190_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sis190_private = type { i32, i8*, i32, i8*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@TX_RING_BYTES = common dso_local global i32 0, align 4
@RX_RING_BYTES = common dso_local global i32 0, align 4
@sis190_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sis190_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis190_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sis190_private*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.sis190_private* @netdev_priv(%struct.net_device* %6)
  store %struct.sis190_private* %7, %struct.sis190_private** %3, align 8
  %8 = load %struct.sis190_private*, %struct.sis190_private** %3, align 8
  %9 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %8, i32 0, i32 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.sis190_private*, %struct.sis190_private** %3, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call i32 @sis190_set_rxbufsize(%struct.sis190_private* %13, %struct.net_device* %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = load i32, i32* @TX_RING_BYTES, align 4
  %18 = load %struct.sis190_private*, %struct.sis190_private** %3, align 8
  %19 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %18, i32 0, i32 0
  %20 = call i8* @pci_alloc_consistent(%struct.pci_dev* %16, i32 %17, i32* %19)
  %21 = load %struct.sis190_private*, %struct.sis190_private** %3, align 8
  %22 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.sis190_private*, %struct.sis190_private** %3, align 8
  %24 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %66

28:                                               ; preds = %1
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load i32, i32* @RX_RING_BYTES, align 4
  %31 = load %struct.sis190_private*, %struct.sis190_private** %3, align 8
  %32 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %31, i32 0, i32 2
  %33 = call i8* @pci_alloc_consistent(%struct.pci_dev* %29, i32 %30, i32* %32)
  %34 = load %struct.sis190_private*, %struct.sis190_private** %3, align 8
  %35 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.sis190_private*, %struct.sis190_private** %3, align 8
  %37 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %36, i32 0, i32 3
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %28
  br label %83

41:                                               ; preds = %28
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = call i32 @sis190_init_ring(%struct.net_device* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %73

47:                                               ; preds = %41
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = call i32 @sis190_request_timer(%struct.net_device* %48)
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @sis190_irq, align 4
  %54 = load i32, i32* @IRQF_SHARED, align 4
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = call i32 @request_irq(i32 %52, i32 %53, i32 %54, i32 %57, %struct.net_device* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  br label %68

63:                                               ; preds = %47
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = call i32 @sis190_hw_start(%struct.net_device* %64)
  br label %66

66:                                               ; preds = %83, %63, %27
  %67 = load i32, i32* %5, align 4
  ret i32 %67

68:                                               ; preds = %62
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = call i32 @sis190_delete_timer(%struct.net_device* %69)
  %71 = load %struct.sis190_private*, %struct.sis190_private** %3, align 8
  %72 = call i32 @sis190_rx_clear(%struct.sis190_private* %71)
  br label %73

73:                                               ; preds = %68, %46
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = load i32, i32* @RX_RING_BYTES, align 4
  %76 = load %struct.sis190_private*, %struct.sis190_private** %3, align 8
  %77 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.sis190_private*, %struct.sis190_private** %3, align 8
  %80 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @pci_free_consistent(%struct.pci_dev* %74, i32 %75, i8* %78, i32 %81)
  br label %83

83:                                               ; preds = %73, %40
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = load i32, i32* @TX_RING_BYTES, align 4
  %86 = load %struct.sis190_private*, %struct.sis190_private** %3, align 8
  %87 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.sis190_private*, %struct.sis190_private** %3, align 8
  %90 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @pci_free_consistent(%struct.pci_dev* %84, i32 %85, i8* %88, i32 %91)
  br label %66
}

declare dso_local %struct.sis190_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sis190_set_rxbufsize(%struct.sis190_private*, %struct.net_device*) #1

declare dso_local i8* @pci_alloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @sis190_init_ring(%struct.net_device*) #1

declare dso_local i32 @sis190_request_timer(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @sis190_hw_start(%struct.net_device*) #1

declare dso_local i32 @sis190_delete_timer(%struct.net_device*) #1

declare dso_local i32 @sis190_rx_clear(%struct.sis190_private*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
