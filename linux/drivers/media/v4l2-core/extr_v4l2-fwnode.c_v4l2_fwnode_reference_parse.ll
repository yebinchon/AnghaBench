; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fwnode.c_v4l2_fwnode_reference_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fwnode.c_v4l2_fwnode_reference_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.v4l2_async_notifier = type { i32 }
%struct.fwnode_reference_args = type { i32 }
%struct.v4l2_async_subdev = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.v4l2_async_notifier*, i8*)* @v4l2_fwnode_reference_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_fwnode_reference_parse(%struct.device* %0, %struct.v4l2_async_notifier* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.v4l2_async_notifier*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fwnode_reference_args, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.v4l2_async_subdev*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.v4l2_async_notifier* %1, %struct.v4l2_async_notifier** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %24, %3
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call i32 @dev_fwnode(%struct.device* %13)
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @fwnode_property_get_reference_args(i32 %14, i8* %15, i32* null, i32 0, i32 %16, %struct.fwnode_reference_args* %8)
  store i32 %17, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %8, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @fwnode_handle_put(i32 %22)
  br label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %9, align 4
  br label %12

27:                                               ; preds = %12
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %80

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @ENODATA, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %80

45:                                               ; preds = %38, %33
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %76, %45
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = call i32 @dev_fwnode(%struct.device* %47)
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @fwnode_property_get_reference_args(i32 %48, i8* %49, i32* null, i32 0, i32 %50, %struct.fwnode_reference_args* %8)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br i1 %53, label %54, label %79

54:                                               ; preds = %46
  %55 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %6, align 8
  %56 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %8, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.v4l2_async_subdev* @v4l2_async_notifier_add_fwnode_subdev(%struct.v4l2_async_notifier* %55, i32 %57, i32 4)
  store %struct.v4l2_async_subdev* %58, %struct.v4l2_async_subdev** %11, align 8
  %59 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @fwnode_handle_put(i32 %60)
  %62 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %11, align 8
  %63 = call i64 @IS_ERR(%struct.v4l2_async_subdev* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %54
  %66 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %11, align 8
  %67 = call i32 @PTR_ERR(%struct.v4l2_async_subdev* %66)
  %68 = load i32, i32* @EEXIST, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %76

72:                                               ; preds = %65
  %73 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %11, align 8
  %74 = call i32 @PTR_ERR(%struct.v4l2_async_subdev* %73)
  store i32 %74, i32* %4, align 4
  br label %80

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75, %71
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %46

79:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %72, %43, %30
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @fwnode_property_get_reference_args(i32, i8*, i32*, i32, i32, %struct.fwnode_reference_args*) #1

declare dso_local i32 @dev_fwnode(%struct.device*) #1

declare dso_local i32 @fwnode_handle_put(i32) #1

declare dso_local %struct.v4l2_async_subdev* @v4l2_async_notifier_add_fwnode_subdev(%struct.v4l2_async_notifier*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.v4l2_async_subdev*) #1

declare dso_local i32 @PTR_ERR(%struct.v4l2_async_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
