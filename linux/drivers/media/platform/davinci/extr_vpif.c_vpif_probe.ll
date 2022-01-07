; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif.c_vpif_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif.c_vpif_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.platform_device = type { i8*, i32, i32, %struct.TYPE_7__, %struct.resource* }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, i32, i32, i32 }
%struct.device_node = type { i32 }

@vpif_probe.res = internal global %struct.resource* null, align 8
@vpif_probe.res_irq = internal global %struct.resource* null, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@vpif_base = common dso_local global i32 0, align 4
@vpif_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"vpif probe success\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Missing IRQ resource.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"vpif_capture\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Unable to allocate memory for pdev_capture.\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"vpif_display\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Unable to allocate memory for pdev_display.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vpif_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.device_node* null, %struct.device_node** %6, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @IORESOURCE_MEM, align 4
  %9 = call %struct.resource* @platform_get_resource(%struct.platform_device* %7, i32 %8, i32 0)
  store %struct.resource* %9, %struct.resource** @vpif_probe.res, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 3
  %12 = load %struct.resource*, %struct.resource** @vpif_probe.res, align 8
  %13 = call i32 @devm_ioremap_resource(%struct.TYPE_7__* %11, %struct.resource* %12)
  store i32 %13, i32* @vpif_base, align 4
  %14 = load i32, i32* @vpif_base, align 4
  %15 = call i64 @IS_ERR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @vpif_base, align 4
  %19 = call i32 @PTR_ERR(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %137

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 3
  %23 = call i32 @pm_runtime_enable(%struct.TYPE_7__* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 3
  %26 = call i32 @pm_runtime_get(%struct.TYPE_7__* %25)
  %27 = call i32 @spin_lock_init(i32* @vpif_lock)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 3
  %30 = call i32 @dev_info(%struct.TYPE_7__* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.device_node*, %struct.device_node** %6, align 8
  %36 = call %struct.device_node* @of_graph_get_next_endpoint(i32 %34, %struct.device_node* %35)
  store %struct.device_node* %36, %struct.device_node** %6, align 8
  %37 = load %struct.device_node*, %struct.device_node** %6, align 8
  %38 = icmp ne %struct.device_node* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %137

40:                                               ; preds = %20
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load i32, i32* @IORESOURCE_IRQ, align 4
  %43 = call %struct.resource* @platform_get_resource(%struct.platform_device* %41, i32 %42, i32 0)
  store %struct.resource* %43, %struct.resource** @vpif_probe.res_irq, align 8
  %44 = load %struct.resource*, %struct.resource** @vpif_probe.res_irq, align 8
  %45 = icmp ne %struct.resource* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 3
  %49 = call i32 @dev_warn(%struct.TYPE_7__* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %137

52:                                               ; preds = %40
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 3
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.platform_device* @devm_kzalloc(%struct.TYPE_7__* %54, i32 48, i32 %55)
  store %struct.platform_device* %56, %struct.platform_device** %4, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %58 = icmp ne %struct.platform_device* %57, null
  br i1 %58, label %59, label %90

59:                                               ; preds = %52
  %60 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 1
  store i32 -1, i32* %63, align 8
  %64 = load %struct.resource*, %struct.resource** @vpif_probe.res_irq, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 4
  store %struct.resource* %64, %struct.resource** %66, align 8
  %67 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 2
  store i32 1, i32* %68, align 4
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 4
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 8
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 3
  %85 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %87, align 8
  %88 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %89 = call i32 @platform_device_register(%struct.platform_device* %88)
  br label %94

90:                                               ; preds = %52
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 3
  %93 = call i32 @dev_warn(%struct.TYPE_7__* %92, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %59
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 3
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call %struct.platform_device* @devm_kzalloc(%struct.TYPE_7__* %96, i32 48, i32 %97)
  store %struct.platform_device* %98, %struct.platform_device** %5, align 8
  %99 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %100 = icmp ne %struct.platform_device* %99, null
  br i1 %100, label %101, label %132

101:                                              ; preds = %94
  %102 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %103, align 8
  %104 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 1
  store i32 -1, i32* %105, align 8
  %106 = load %struct.resource*, %struct.resource** @vpif_probe.res_irq, align 8
  %107 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 4
  store %struct.resource* %106, %struct.resource** %108, align 8
  %109 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 2
  store i32 1, i32* %110, align 4
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  store i32 %114, i32* %117, align 4
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 8
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 3
  %127 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store %struct.TYPE_7__* %126, %struct.TYPE_7__** %129, align 8
  %130 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %131 = call i32 @platform_device_register(%struct.platform_device* %130)
  br label %136

132:                                              ; preds = %94
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 3
  %135 = call i32 @dev_warn(%struct.TYPE_7__* %134, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %136

136:                                              ; preds = %132, %101
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %136, %46, %39, %17
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_7__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_7__*) #1

declare dso_local i32 @pm_runtime_get(%struct.TYPE_7__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.device_node* @of_graph_get_next_endpoint(i32, %struct.device_node*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.platform_device* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @platform_device_register(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
