; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_get_app_input_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_get_app_input_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_device = type { i32, %struct.TYPE_2__*, %struct.vpfe_config* }
%struct.TYPE_2__ = type { i32 }
%struct.vpfe_config = type { i32, %struct.vpfe_subdev_info* }
%struct.vpfe_subdev_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpfe_device*, i32*)* @vpfe_get_app_input_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_get_app_input_index(%struct.vpfe_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpfe_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vpfe_config*, align 8
  %7 = alloca %struct.vpfe_subdev_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vpfe_device* %0, %struct.vpfe_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %11 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %10, i32 0, i32 2
  %12 = load %struct.vpfe_config*, %struct.vpfe_config** %11, align 8
  store %struct.vpfe_config* %12, %struct.vpfe_config** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %58, %2
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.vpfe_config*, %struct.vpfe_config** %6, align 8
  %16 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %61

19:                                               ; preds = %13
  %20 = load %struct.vpfe_config*, %struct.vpfe_config** %6, align 8
  %21 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %20, i32 0, i32 1
  %22 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %22, i64 %24
  store %struct.vpfe_subdev_info* %25, %struct.vpfe_subdev_info** %7, align 8
  %26 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %7, align 8
  %27 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %30 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strcmp(i32 %28, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %19
  %37 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %38 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %7, align 8
  %41 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %64

45:                                               ; preds = %36
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %48 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %46, %49
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %64

52:                                               ; preds = %19
  %53 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %7, align 8
  %54 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %13

61:                                               ; preds = %13
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %45, %44
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
