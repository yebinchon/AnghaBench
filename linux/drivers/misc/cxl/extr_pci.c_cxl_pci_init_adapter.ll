; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_pci_init_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_pci_init_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cxl* (%struct.pci_dev*)* @cxl_pci_init_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cxl* @cxl_pci_init_adapter(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.cxl*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.cxl*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = call %struct.cxl* (...) @cxl_alloc_adapter()
  store %struct.cxl* %6, %struct.cxl** %4, align 8
  %7 = load %struct.cxl*, %struct.cxl** %4, align 8
  %8 = icmp ne %struct.cxl* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.cxl* @ERR_PTR(i32 %11)
  store %struct.cxl* %12, %struct.cxl** %2, align 8
  br label %73

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32 @kzalloc(i32 4, i32 %14)
  %16 = load %struct.cxl*, %struct.cxl** %4, align 8
  %17 = getelementptr inbounds %struct.cxl, %struct.cxl* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.cxl*, %struct.cxl** %4, align 8
  %19 = getelementptr inbounds %struct.cxl, %struct.cxl* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %67

25:                                               ; preds = %13
  %26 = load %struct.cxl*, %struct.cxl** %4, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = call i32 @set_sl_ops(%struct.cxl* %26, %struct.pci_dev* %27)
  %29 = load %struct.cxl*, %struct.cxl** %4, align 8
  %30 = getelementptr inbounds %struct.cxl, %struct.cxl* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.cxl*, %struct.cxl** %4, align 8
  %32 = getelementptr inbounds %struct.cxl, %struct.cxl* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = load %struct.cxl*, %struct.cxl** %4, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = call i32 @cxl_configure_adapter(%struct.cxl* %33, %struct.pci_dev* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %40 = call i32 @pci_disable_device(%struct.pci_dev* %39)
  br label %67

41:                                               ; preds = %25
  %42 = load %struct.cxl*, %struct.cxl** %4, align 8
  %43 = call i32 @cxl_debugfs_adapter_add(%struct.cxl* %42)
  %44 = load %struct.cxl*, %struct.cxl** %4, align 8
  %45 = call i32 @cxl_register_adapter(%struct.cxl* %44)
  store i32 %45, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %57

48:                                               ; preds = %41
  %49 = load %struct.cxl*, %struct.cxl** %4, align 8
  %50 = call i32 @cxl_sysfs_adapter_add(%struct.cxl* %49)
  store i32 %50, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %57

53:                                               ; preds = %48
  %54 = load %struct.cxl*, %struct.cxl** %4, align 8
  %55 = call i32 @cxl_adapter_context_unlock(%struct.cxl* %54)
  %56 = load %struct.cxl*, %struct.cxl** %4, align 8
  store %struct.cxl* %56, %struct.cxl** %2, align 8
  br label %73

57:                                               ; preds = %52, %47
  %58 = load %struct.cxl*, %struct.cxl** %4, align 8
  %59 = call i32 @cxl_debugfs_adapter_remove(%struct.cxl* %58)
  %60 = load %struct.cxl*, %struct.cxl** %4, align 8
  %61 = call i32 @cxl_deconfigure_adapter(%struct.cxl* %60)
  %62 = load %struct.cxl*, %struct.cxl** %4, align 8
  %63 = getelementptr inbounds %struct.cxl, %struct.cxl* %62, i32 0, i32 2
  %64 = call i32 @device_unregister(i32* %63)
  %65 = load i32, i32* %5, align 4
  %66 = call %struct.cxl* @ERR_PTR(i32 %65)
  store %struct.cxl* %66, %struct.cxl** %2, align 8
  br label %73

67:                                               ; preds = %38, %22
  %68 = load %struct.cxl*, %struct.cxl** %4, align 8
  %69 = getelementptr inbounds %struct.cxl, %struct.cxl* %68, i32 0, i32 2
  %70 = call i32 @cxl_release_adapter(i32* %69)
  %71 = load i32, i32* %5, align 4
  %72 = call %struct.cxl* @ERR_PTR(i32 %71)
  store %struct.cxl* %72, %struct.cxl** %2, align 8
  br label %73

73:                                               ; preds = %67, %57, %53, %9
  %74 = load %struct.cxl*, %struct.cxl** %2, align 8
  ret %struct.cxl* %74
}

declare dso_local %struct.cxl* @cxl_alloc_adapter(...) #1

declare dso_local %struct.cxl* @ERR_PTR(i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @set_sl_ops(%struct.cxl*, %struct.pci_dev*) #1

declare dso_local i32 @cxl_configure_adapter(%struct.cxl*, %struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @cxl_debugfs_adapter_add(%struct.cxl*) #1

declare dso_local i32 @cxl_register_adapter(%struct.cxl*) #1

declare dso_local i32 @cxl_sysfs_adapter_add(%struct.cxl*) #1

declare dso_local i32 @cxl_adapter_context_unlock(%struct.cxl*) #1

declare dso_local i32 @cxl_debugfs_adapter_remove(%struct.cxl*) #1

declare dso_local i32 @cxl_deconfigure_adapter(%struct.cxl*) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @cxl_release_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
