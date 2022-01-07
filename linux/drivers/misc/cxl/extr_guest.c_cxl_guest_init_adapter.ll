; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_cxl_guest_init_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_cxl_guest_init_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { %struct.platform_device* }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@release_adapter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cxl* @cxl_guest_init_adapter(%struct.device_node* %0, %struct.platform_device* %1) #0 {
  %3 = alloca %struct.cxl*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.cxl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  store i32 1, i32* %7, align 4
  %9 = call %struct.cxl* (...) @cxl_alloc_adapter()
  store %struct.cxl* %9, %struct.cxl** %6, align 8
  %10 = icmp ne %struct.cxl* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.cxl* @ERR_PTR(i32 %13)
  store %struct.cxl* %14, %struct.cxl** %3, align 8
  br label %100

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.TYPE_3__* @kzalloc(i32 4, i32 %16)
  %18 = load %struct.cxl*, %struct.cxl** %6, align 8
  %19 = getelementptr inbounds %struct.cxl, %struct.cxl* %18, i32 0, i32 2
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %19, align 8
  %20 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.cxl*, %struct.cxl** %6, align 8
  %23 = call i32 @free_adapter(%struct.cxl* %22)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.cxl* @ERR_PTR(i32 %25)
  store %struct.cxl* %26, %struct.cxl** %3, align 8
  br label %100

27:                                               ; preds = %15
  %28 = load %struct.cxl*, %struct.cxl** %6, align 8
  %29 = getelementptr inbounds %struct.cxl, %struct.cxl* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %31 = load %struct.cxl*, %struct.cxl** %6, align 8
  %32 = getelementptr inbounds %struct.cxl, %struct.cxl* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store %struct.platform_device* %30, %struct.platform_device** %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.cxl*, %struct.cxl** %6, align 8
  %38 = getelementptr inbounds %struct.cxl, %struct.cxl* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32* %36, i32** %39, align 8
  %40 = load i32, i32* @release_adapter, align 4
  %41 = load %struct.cxl*, %struct.cxl** %6, align 8
  %42 = getelementptr inbounds %struct.cxl, %struct.cxl* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.cxl*, %struct.cxl** %6, align 8
  %47 = call i32 @dev_set_drvdata(i32* %45, %struct.cxl* %46)
  %48 = load %struct.cxl*, %struct.cxl** %6, align 8
  %49 = getelementptr inbounds %struct.cxl, %struct.cxl* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.cxl*, %struct.cxl** %6, align 8
  %51 = load %struct.device_node*, %struct.device_node** %4, align 8
  %52 = call i32 @cxl_of_read_adapter_handle(%struct.cxl* %50, %struct.device_node* %51)
  store i32 %52, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %27
  br label %91

55:                                               ; preds = %27
  %56 = load %struct.cxl*, %struct.cxl** %6, align 8
  %57 = load %struct.device_node*, %struct.device_node** %4, align 8
  %58 = call i32 @cxl_of_read_adapter_properties(%struct.cxl* %56, %struct.device_node* %57)
  store i32 %58, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %91

61:                                               ; preds = %55
  %62 = load %struct.cxl*, %struct.cxl** %6, align 8
  %63 = call i32 @properties_look_ok(%struct.cxl* %62)
  store i32 %63, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %91

66:                                               ; preds = %61
  %67 = load %struct.cxl*, %struct.cxl** %6, align 8
  %68 = call i32 @cxl_guest_add_chardev(%struct.cxl* %67)
  store i32 %68, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %91

71:                                               ; preds = %66
  %72 = load %struct.cxl*, %struct.cxl** %6, align 8
  %73 = call i32 @cxl_register_adapter(%struct.cxl* %72)
  store i32 %73, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %85

76:                                               ; preds = %71
  %77 = load %struct.cxl*, %struct.cxl** %6, align 8
  %78 = call i32 @cxl_sysfs_adapter_add(%struct.cxl* %77)
  store i32 %78, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %85

81:                                               ; preds = %76
  %82 = load %struct.cxl*, %struct.cxl** %6, align 8
  %83 = call i32 @cxl_adapter_context_unlock(%struct.cxl* %82)
  %84 = load %struct.cxl*, %struct.cxl** %6, align 8
  store %struct.cxl* %84, %struct.cxl** %3, align 8
  br label %100

85:                                               ; preds = %80, %75
  %86 = load %struct.cxl*, %struct.cxl** %6, align 8
  %87 = getelementptr inbounds %struct.cxl, %struct.cxl* %86, i32 0, i32 1
  %88 = call i32 @device_unregister(%struct.TYPE_4__* %87)
  store i32 0, i32* %7, align 4
  %89 = load %struct.cxl*, %struct.cxl** %6, align 8
  %90 = call i32 @cxl_guest_remove_chardev(%struct.cxl* %89)
  br label %91

91:                                               ; preds = %85, %70, %65, %60, %54
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.cxl*, %struct.cxl** %6, align 8
  %96 = call i32 @free_adapter(%struct.cxl* %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32, i32* %8, align 4
  %99 = call %struct.cxl* @ERR_PTR(i32 %98)
  store %struct.cxl* %99, %struct.cxl** %3, align 8
  br label %100

100:                                              ; preds = %97, %81, %21, %11
  %101 = load %struct.cxl*, %struct.cxl** %3, align 8
  ret %struct.cxl* %101
}

declare dso_local %struct.cxl* @cxl_alloc_adapter(...) #1

declare dso_local %struct.cxl* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_3__* @kzalloc(i32, i32) #1

declare dso_local i32 @free_adapter(%struct.cxl*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.cxl*) #1

declare dso_local i32 @cxl_of_read_adapter_handle(%struct.cxl*, %struct.device_node*) #1

declare dso_local i32 @cxl_of_read_adapter_properties(%struct.cxl*, %struct.device_node*) #1

declare dso_local i32 @properties_look_ok(%struct.cxl*) #1

declare dso_local i32 @cxl_guest_add_chardev(%struct.cxl*) #1

declare dso_local i32 @cxl_register_adapter(%struct.cxl*) #1

declare dso_local i32 @cxl_sysfs_adapter_add(%struct.cxl*) #1

declare dso_local i32 @cxl_adapter_context_unlock(%struct.cxl*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_4__*) #1

declare dso_local i32 @cxl_guest_remove_chardev(%struct.cxl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
