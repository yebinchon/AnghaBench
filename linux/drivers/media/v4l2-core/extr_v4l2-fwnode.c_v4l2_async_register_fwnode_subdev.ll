; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fwnode.c_v4l2_async_register_fwnode_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fwnode.c_v4l2_async_register_fwnode_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { %struct.v4l2_async_notifier*, %struct.device* }
%struct.v4l2_async_notifier = type { i32 }
%struct.device = type { i32 }
%struct.fwnode_handle = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_async_register_fwnode_subdev(%struct.v4l2_subdev* %0, i64 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.v4l2_async_notifier*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca %struct.fwnode_handle*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %17, i32 0, i32 1
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %13, align 8
  %20 = load %struct.device*, %struct.device** %13, align 8
  %21 = icmp ne %struct.device* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %111

29:                                               ; preds = %5
  %30 = load %struct.device*, %struct.device** %13, align 8
  %31 = call %struct.fwnode_handle* @dev_fwnode(%struct.device* %30)
  store %struct.fwnode_handle* %31, %struct.fwnode_handle** %14, align 8
  %32 = load %struct.fwnode_handle*, %struct.fwnode_handle** %14, align 8
  %33 = call i32 @fwnode_device_is_available(%struct.fwnode_handle* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %111

38:                                               ; preds = %29
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.v4l2_async_notifier* @kzalloc(i32 4, i32 %39)
  store %struct.v4l2_async_notifier* %40, %struct.v4l2_async_notifier** %12, align 8
  %41 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %12, align 8
  %42 = icmp ne %struct.v4l2_async_notifier* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %111

46:                                               ; preds = %38
  %47 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %12, align 8
  %48 = call i32 @v4l2_async_notifier_init(%struct.v4l2_async_notifier* %47)
  %49 = load i32*, i32** %9, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = load %struct.device*, %struct.device** %13, align 8
  %53 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %12, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @v4l2_async_notifier_parse_fwnode_endpoints(%struct.device* %52, %struct.v4l2_async_notifier* %53, i64 %54, i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %105

60:                                               ; preds = %51
  br label %85

61:                                               ; preds = %46
  store i32 0, i32* %16, align 4
  br label %62

62:                                               ; preds = %81, %61
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %62
  %67 = load %struct.device*, %struct.device** %13, align 8
  %68 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %12, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %16, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @v4l2_async_notifier_parse_fwnode_endpoints_by_port(%struct.device* %67, %struct.v4l2_async_notifier* %68, i64 %69, i32 %74, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %105

80:                                               ; preds = %66
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %16, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %16, align 4
  br label %62

84:                                               ; preds = %62
  br label %85

85:                                               ; preds = %84, %60
  %86 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %87 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %12, align 8
  %88 = call i32 @v4l2_async_subdev_notifier_register(%struct.v4l2_subdev* %86, %struct.v4l2_async_notifier* %87)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %105

92:                                               ; preds = %85
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %94 = call i32 @v4l2_async_register_subdev(%struct.v4l2_subdev* %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %102

98:                                               ; preds = %92
  %99 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %12, align 8
  %100 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %101 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %100, i32 0, i32 0
  store %struct.v4l2_async_notifier* %99, %struct.v4l2_async_notifier** %101, align 8
  store i32 0, i32* %6, align 4
  br label %111

102:                                              ; preds = %97
  %103 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %12, align 8
  %104 = call i32 @v4l2_async_notifier_unregister(%struct.v4l2_async_notifier* %103)
  br label %105

105:                                              ; preds = %102, %91, %79, %59
  %106 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %12, align 8
  %107 = call i32 @v4l2_async_notifier_cleanup(%struct.v4l2_async_notifier* %106)
  %108 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %12, align 8
  %109 = call i32 @kfree(%struct.v4l2_async_notifier* %108)
  %110 = load i32, i32* %15, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %105, %98, %43, %35, %26
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.fwnode_handle* @dev_fwnode(%struct.device*) #1

declare dso_local i32 @fwnode_device_is_available(%struct.fwnode_handle*) #1

declare dso_local %struct.v4l2_async_notifier* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_async_notifier_init(%struct.v4l2_async_notifier*) #1

declare dso_local i32 @v4l2_async_notifier_parse_fwnode_endpoints(%struct.device*, %struct.v4l2_async_notifier*, i64, i32) #1

declare dso_local i32 @v4l2_async_notifier_parse_fwnode_endpoints_by_port(%struct.device*, %struct.v4l2_async_notifier*, i64, i32, i32) #1

declare dso_local i32 @v4l2_async_subdev_notifier_register(%struct.v4l2_subdev*, %struct.v4l2_async_notifier*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_async_notifier_unregister(%struct.v4l2_async_notifier*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(%struct.v4l2_async_notifier*) #1

declare dso_local i32 @kfree(%struct.v4l2_async_notifier*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
