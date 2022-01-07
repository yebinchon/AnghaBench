; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_alloc_pci_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_alloc_pci_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_adapter = type { i8*, i8*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to enable adapter: error %d\0A\00", align 1
@vmxnet3_driver_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to request region for adapter: error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Failed to map bar0\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Failed to map bar1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmxnet3_adapter*)* @vmxnet3_alloc_pci_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_alloc_pci_resources(%struct.vmxnet3_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmxnet3_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.vmxnet3_adapter* %0, %struct.vmxnet3_adapter** %3, align 8
  %8 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %8, i32 0, i32 2
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %7, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %12 = call i32 @pci_enable_device(%struct.pci_dev* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %87

21:                                               ; preds = %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %23 = load i32, i32* @vmxnet3_driver_name, align 4
  %24 = call i32 @pci_request_selected_regions(%struct.pci_dev* %22, i32 3, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i32*, i8*, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %83

32:                                               ; preds = %21
  %33 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %34 = call i32 @pci_set_master(%struct.pci_dev* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %36 = call i64 @pci_resource_start(%struct.pci_dev* %35, i32 0)
  store i64 %36, i64* %5, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %38 = call i64 @pci_resource_len(%struct.pci_dev* %37, i32 0)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i8* @ioremap(i64 %39, i64 %40)
  %42 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %32
  %49 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = call i32 (i32*, i8*, ...) @dev_err(i32* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %80

54:                                               ; preds = %32
  %55 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %56 = call i64 @pci_resource_start(%struct.pci_dev* %55, i32 1)
  store i64 %56, i64* %5, align 8
  %57 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %58 = call i64 @pci_resource_len(%struct.pci_dev* %57, i32 1)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i8* @ioremap(i64 %59, i64 %60)
  %62 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %54
  %69 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 0
  %71 = call i32 (i32*, i8*, ...) @dev_err(i32* %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %75

74:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %87

75:                                               ; preds = %68
  %76 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @iounmap(i8* %78)
  br label %80

80:                                               ; preds = %75, %48
  %81 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %82 = call i32 @pci_release_selected_regions(%struct.pci_dev* %81, i32 3)
  br label %83

83:                                               ; preds = %80, %27
  %84 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %85 = call i32 @pci_disable_device(%struct.pci_dev* %84)
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %83, %74, %15
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_request_selected_regions(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i8* @ioremap(i64, i64) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @pci_release_selected_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
