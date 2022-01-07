; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { i32, %struct.pci_dev*, %struct.net_device* }
%struct.pci_dev = type { i32, i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Unable to allocate MSI interrupt Error: %d\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@atl1c_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Unable to allocate interrupt Error: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"atl1c_request_irq OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1c_adapter*)* @atl1c_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_request_irq(%struct.atl1c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1c_adapter*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %3, align 8
  %8 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %8, i32 0, i32 1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %11, i32 0, i32 2
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %16, i32 0, i32 1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %19 = call i32 @pci_enable_msi(%struct.pci_dev* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %1
  %23 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %24 = call i64 @netif_msg_ifup(%struct.atl1c_adapter* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %22
  %32 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %1
  %35 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @IRQF_SHARED, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %44, i32 0, i32 1
  %46 = load %struct.pci_dev*, %struct.pci_dev** %45, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @atl1c_intr, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.net_device*, %struct.net_device** %5, align 8
  %55 = call i32 @request_irq(i32 %48, i32 %49, i32 %50, i32 %53, %struct.net_device* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %43
  %59 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %60 = call i64 @netif_msg_ifup(%struct.atl1c_adapter* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %62, %58
  %68 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %73, i32 0, i32 1
  %75 = load %struct.pci_dev*, %struct.pci_dev** %74, align 8
  %76 = call i32 @pci_disable_msi(%struct.pci_dev* %75)
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %89

79:                                               ; preds = %43
  %80 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %81 = call i64 @netif_msg_ifup(%struct.atl1c_adapter* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 0
  %86 = call i32 @dev_dbg(i32* %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %77
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i64 @netif_msg_ifup(%struct.atl1c_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
