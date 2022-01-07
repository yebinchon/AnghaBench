; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_parse_platform_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_parse_platform_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceu_device = type { i32, %struct.ceu_subdev* }
%struct.ceu_subdev = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ceu_platform_data = type { i32, %struct.ceu_async_subdev* }
%struct.ceu_async_subdev = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@V4L2_ASYNC_MATCH_I2C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceu_device*, %struct.ceu_platform_data*)* @ceu_parse_platform_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceu_parse_platform_data(%struct.ceu_device* %0, %struct.ceu_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceu_device*, align 8
  %5 = alloca %struct.ceu_platform_data*, align 8
  %6 = alloca %struct.ceu_async_subdev*, align 8
  %7 = alloca %struct.ceu_subdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ceu_device* %0, %struct.ceu_device** %4, align 8
  store %struct.ceu_platform_data* %1, %struct.ceu_platform_data** %5, align 8
  %10 = load %struct.ceu_platform_data*, %struct.ceu_platform_data** %5, align 8
  %11 = getelementptr inbounds %struct.ceu_platform_data, %struct.ceu_platform_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %96

17:                                               ; preds = %2
  %18 = load %struct.ceu_device*, %struct.ceu_device** %4, align 8
  %19 = load %struct.ceu_platform_data*, %struct.ceu_platform_data** %5, align 8
  %20 = getelementptr inbounds %struct.ceu_platform_data, %struct.ceu_platform_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ceu_init_async_subdevs(%struct.ceu_device* %18, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %96

27:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %89, %27
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.ceu_platform_data*, %struct.ceu_platform_data** %5, align 8
  %31 = getelementptr inbounds %struct.ceu_platform_data, %struct.ceu_platform_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %92

34:                                               ; preds = %28
  %35 = load %struct.ceu_platform_data*, %struct.ceu_platform_data** %5, align 8
  %36 = getelementptr inbounds %struct.ceu_platform_data, %struct.ceu_platform_data* %35, i32 0, i32 1
  %37 = load %struct.ceu_async_subdev*, %struct.ceu_async_subdev** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ceu_async_subdev, %struct.ceu_async_subdev* %37, i64 %39
  store %struct.ceu_async_subdev* %40, %struct.ceu_async_subdev** %6, align 8
  %41 = load %struct.ceu_device*, %struct.ceu_device** %4, align 8
  %42 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %41, i32 0, i32 1
  %43 = load %struct.ceu_subdev*, %struct.ceu_subdev** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %43, i64 %45
  store %struct.ceu_subdev* %46, %struct.ceu_subdev** %7, align 8
  %47 = load %struct.ceu_subdev*, %struct.ceu_subdev** %7, align 8
  %48 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.ceu_async_subdev*, %struct.ceu_async_subdev** %6, align 8
  %52 = getelementptr inbounds %struct.ceu_async_subdev, %struct.ceu_async_subdev* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ceu_subdev*, %struct.ceu_subdev** %7, align 8
  %55 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @V4L2_ASYNC_MATCH_I2C, align 4
  %57 = load %struct.ceu_subdev*, %struct.ceu_subdev** %7, align 8
  %58 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load %struct.ceu_async_subdev*, %struct.ceu_async_subdev** %6, align 8
  %61 = getelementptr inbounds %struct.ceu_async_subdev, %struct.ceu_async_subdev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ceu_subdev*, %struct.ceu_subdev** %7, align 8
  %64 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 %62, i32* %67, align 4
  %68 = load %struct.ceu_async_subdev*, %struct.ceu_async_subdev** %6, align 8
  %69 = getelementptr inbounds %struct.ceu_async_subdev, %struct.ceu_async_subdev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ceu_subdev*, %struct.ceu_subdev** %7, align 8
  %72 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %70, i32* %75, align 4
  %76 = load %struct.ceu_device*, %struct.ceu_device** %4, align 8
  %77 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %76, i32 0, i32 0
  %78 = load %struct.ceu_subdev*, %struct.ceu_subdev** %7, align 8
  %79 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %78, i32 0, i32 0
  %80 = call i32 @v4l2_async_notifier_add_subdev(i32* %77, %struct.TYPE_6__* %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %34
  %84 = load %struct.ceu_device*, %struct.ceu_device** %4, align 8
  %85 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %84, i32 0, i32 0
  %86 = call i32 @v4l2_async_notifier_cleanup(i32* %85)
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  br label %96

88:                                               ; preds = %34
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %28

92:                                               ; preds = %28
  %93 = load %struct.ceu_platform_data*, %struct.ceu_platform_data** %5, align 8
  %94 = getelementptr inbounds %struct.ceu_platform_data, %struct.ceu_platform_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %83, %25, %14
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @ceu_init_async_subdevs(%struct.ceu_device*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @v4l2_async_notifier_add_subdev(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
