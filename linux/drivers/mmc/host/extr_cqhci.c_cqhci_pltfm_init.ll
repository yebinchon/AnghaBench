; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_pltfm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_pltfm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cqhci_host = type { i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cqhci_mem\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"CMDQ not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to remap cqhci regs\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"CMDQ ioremap: done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cqhci_host* @cqhci_pltfm_init(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.cqhci_host*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cqhci_host*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.resource* null, %struct.resource** %5, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @IORESOURCE_MEM, align 4
  %8 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %6, i32 %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %8, %struct.resource** %5, align 8
  %9 = load %struct.resource*, %struct.resource** %5, align 8
  %10 = icmp ne %struct.resource* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call i32 @dev_dbg(i32* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.cqhci_host* @ERR_PTR(i32 %16)
  store %struct.cqhci_host* %17, %struct.cqhci_host** %2, align 8
  br label %56

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.cqhci_host* @devm_kzalloc(i32* %20, i32 4, i32 %21)
  store %struct.cqhci_host* %22, %struct.cqhci_host** %4, align 8
  %23 = load %struct.cqhci_host*, %struct.cqhci_host** %4, align 8
  %24 = icmp ne %struct.cqhci_host* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.cqhci_host* @ERR_PTR(i32 %27)
  store %struct.cqhci_host* %28, %struct.cqhci_host** %2, align 8
  br label %56

29:                                               ; preds = %18
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.resource*, %struct.resource** %5, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.resource*, %struct.resource** %5, align 8
  %36 = call i32 @resource_size(%struct.resource* %35)
  %37 = call i32 @devm_ioremap(i32* %31, i32 %34, i32 %36)
  %38 = load %struct.cqhci_host*, %struct.cqhci_host** %4, align 8
  %39 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.cqhci_host*, %struct.cqhci_host** %4, align 8
  %41 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %29
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.cqhci_host* @ERR_PTR(i32 %49)
  store %struct.cqhci_host* %50, %struct.cqhci_host** %2, align 8
  br label %56

51:                                               ; preds = %29
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @dev_dbg(i32* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.cqhci_host*, %struct.cqhci_host** %4, align 8
  store %struct.cqhci_host* %55, %struct.cqhci_host** %2, align 8
  br label %56

56:                                               ; preds = %51, %44, %25, %11
  %57 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  ret %struct.cqhci_host* %57
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.cqhci_host* @ERR_PTR(i32) #1

declare dso_local %struct.cqhci_host* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
