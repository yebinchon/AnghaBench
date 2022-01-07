; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_omap3isp_resizer_register_entities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_omap3isp_resizer_register_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_res_device = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap3isp_resizer_register_entities(%struct.isp_res_device* %0, %struct.v4l2_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isp_res_device*, align 8
  %5 = alloca %struct.v4l2_device*, align 8
  %6 = alloca i32, align 4
  store %struct.isp_res_device* %0, %struct.isp_res_device** %4, align 8
  store %struct.v4l2_device* %1, %struct.v4l2_device** %5, align 8
  %7 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %8 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %13 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %16 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %17 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %16, i32 0, i32 2
  %18 = call i32 @v4l2_device_register_subdev(%struct.v4l2_device* %15, %struct.TYPE_4__* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %39

22:                                               ; preds = %2
  %23 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %24 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %23, i32 0, i32 1
  %25 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %26 = call i32 @omap3isp_video_register(i32* %24, %struct.v4l2_device* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %39

30:                                               ; preds = %22
  %31 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %32 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %31, i32 0, i32 0
  %33 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %34 = call i32 @omap3isp_video_register(i32* %32, %struct.v4l2_device* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %39

38:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %43

39:                                               ; preds = %37, %29, %21
  %40 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %41 = call i32 @omap3isp_resizer_unregister_entities(%struct.isp_res_device* %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %38
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @v4l2_device_register_subdev(%struct.v4l2_device*, %struct.TYPE_4__*) #1

declare dso_local i32 @omap3isp_video_register(i32*, %struct.v4l2_device*) #1

declare dso_local i32 @omap3isp_resizer_unregister_entities(%struct.isp_res_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
