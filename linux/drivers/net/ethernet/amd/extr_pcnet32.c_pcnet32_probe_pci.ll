; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_probe_pci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_probe_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@pcnet32_debug = common dso_local global i32 0, align 4
@NETIF_MSG_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to enable device -- err=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"card has no PCI IO resources, aborting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PCNET32_DMA_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"architecture does not support 32bit PCI busmaster DMA\0A\00", align 1
@PCNET32_TOTAL_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"pcnet32_probe_pci\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"io address range already allocated\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @pcnet32_probe_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcnet32_probe_pci(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i32 @pci_enable_device(%struct.pci_dev* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i32, i32* @pcnet32_debug, align 4
  %14 = load i32, i32* @NETIF_MSG_PROBE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %80

22:                                               ; preds = %2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i32 @pci_set_master(%struct.pci_dev* %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = call i64 @pci_resource_start(%struct.pci_dev* %25, i32 0)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @pcnet32_debug, align 4
  %31 = load i32, i32* @NETIF_MSG_PROBE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %72

39:                                               ; preds = %22
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = load i32, i32* @PCNET32_DMA_MASK, align 4
  %42 = call i32 @pci_set_dma_mask(%struct.pci_dev* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i32, i32* @pcnet32_debug, align 4
  %47 = load i32, i32* @NETIF_MSG_PROBE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %45
  br label %72

53:                                               ; preds = %39
  %54 = load i64, i64* %6, align 8
  %55 = load i32, i32* @PCNET32_TOTAL_SIZE, align 4
  %56 = call i32 @request_region(i64 %54, i32 %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @pcnet32_debug, align 4
  %60 = load i32, i32* @NETIF_MSG_PROBE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %72

68:                                               ; preds = %53
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = call i32 @pcnet32_probe1(i64 %69, i32 1, %struct.pci_dev* %70)
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %65, %52, %36
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = call i32 @pci_disable_device(%struct.pci_dev* %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %20
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @request_region(i64, i32, i8*) #1

declare dso_local i32 @pcnet32_probe1(i64, i32, %struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
