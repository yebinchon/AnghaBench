; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/hdcp/extr_mei_hdcp.c_mei_hdcp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/hdcp/extr_mei_hdcp.c_mei_hdcp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl_device = type { i32 }
%struct.mei_cl_device_id = type { i32 }
%struct.i915_hdcp_comp_master = type { i32 }
%struct.component_match = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"mei_cldev_enable Failed. %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mei_hdcp_component_match = common dso_local global i32 0, align 4
@mei_component_master_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Master comp add failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_cl_device*, %struct.mei_cl_device_id*)* @mei_hdcp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_hdcp_probe(%struct.mei_cl_device* %0, %struct.mei_cl_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_cl_device*, align 8
  %5 = alloca %struct.mei_cl_device_id*, align 8
  %6 = alloca %struct.i915_hdcp_comp_master*, align 8
  %7 = alloca %struct.component_match*, align 8
  %8 = alloca i32, align 4
  store %struct.mei_cl_device* %0, %struct.mei_cl_device** %4, align 8
  store %struct.mei_cl_device_id* %1, %struct.mei_cl_device_id** %5, align 8
  %9 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %10 = call i32 @mei_cldev_enable(%struct.mei_cl_device* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %15 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %14, i32 0, i32 0
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %61

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.i915_hdcp_comp_master* @kzalloc(i32 4, i32 %19)
  store %struct.i915_hdcp_comp_master* %20, %struct.i915_hdcp_comp_master** %6, align 8
  %21 = load %struct.i915_hdcp_comp_master*, %struct.i915_hdcp_comp_master** %6, align 8
  %22 = icmp ne %struct.i915_hdcp_comp_master* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %54

26:                                               ; preds = %18
  store %struct.component_match* null, %struct.component_match** %7, align 8
  %27 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %28 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %27, i32 0, i32 0
  %29 = load i32, i32* @mei_hdcp_component_match, align 4
  %30 = load %struct.i915_hdcp_comp_master*, %struct.i915_hdcp_comp_master** %6, align 8
  %31 = call i32 @component_match_add_typed(i32* %28, %struct.component_match** %7, i32 %29, %struct.i915_hdcp_comp_master* %30)
  %32 = load %struct.component_match*, %struct.component_match** %7, align 8
  %33 = call i64 @IS_ERR_OR_NULL(%struct.component_match* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %54

38:                                               ; preds = %26
  %39 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %40 = load %struct.i915_hdcp_comp_master*, %struct.i915_hdcp_comp_master** %6, align 8
  %41 = call i32 @mei_cldev_set_drvdata(%struct.mei_cl_device* %39, %struct.i915_hdcp_comp_master* %40)
  %42 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %43 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %42, i32 0, i32 0
  %44 = load %struct.component_match*, %struct.component_match** %7, align 8
  %45 = call i32 @component_master_add_with_match(i32* %43, i32* @mei_component_master_ops, %struct.component_match* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %50 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %49, i32 0, i32 0
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %54

53:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %63

54:                                               ; preds = %48, %35, %23
  %55 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %56 = call i32 @mei_cldev_set_drvdata(%struct.mei_cl_device* %55, %struct.i915_hdcp_comp_master* null)
  %57 = load %struct.i915_hdcp_comp_master*, %struct.i915_hdcp_comp_master** %6, align 8
  %58 = call i32 @kfree(%struct.i915_hdcp_comp_master* %57)
  %59 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %60 = call i32 @mei_cldev_disable(%struct.mei_cl_device* %59)
  br label %61

61:                                               ; preds = %54, %13
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %53
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @mei_cldev_enable(%struct.mei_cl_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.i915_hdcp_comp_master* @kzalloc(i32, i32) #1

declare dso_local i32 @component_match_add_typed(i32*, %struct.component_match**, i32, %struct.i915_hdcp_comp_master*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.component_match*) #1

declare dso_local i32 @mei_cldev_set_drvdata(%struct.mei_cl_device*, %struct.i915_hdcp_comp_master*) #1

declare dso_local i32 @component_master_add_with_match(i32*, i32*, %struct.component_match*) #1

declare dso_local i32 @kfree(%struct.i915_hdcp_comp_master*) #1

declare dso_local i32 @mei_cldev_disable(%struct.mei_cl_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
