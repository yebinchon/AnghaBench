; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-spi.c_v4l2_spi_new_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-spi.c_v4l2_spi_new_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_device = type { i32 }
%struct.spi_master = type { i32 }
%struct.spi_board_info = type { i64* }
%struct.spi_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_subdev* @v4l2_spi_new_subdev(%struct.v4l2_device* %0, %struct.spi_master* %1, %struct.spi_board_info* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_device*, align 8
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca %struct.spi_board_info*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca %struct.spi_device*, align 8
  store %struct.v4l2_device* %0, %struct.v4l2_device** %5, align 8
  store %struct.spi_master* %1, %struct.spi_master** %6, align 8
  store %struct.spi_board_info* %2, %struct.spi_board_info** %7, align 8
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %8, align 8
  store %struct.spi_device* null, %struct.spi_device** %9, align 8
  %10 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %11 = icmp ne %struct.v4l2_device* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %4, align 8
  br label %72

13:                                               ; preds = %3
  %14 = load %struct.spi_board_info*, %struct.spi_board_info** %7, align 8
  %15 = getelementptr inbounds %struct.spi_board_info, %struct.spi_board_info* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.spi_board_info*, %struct.spi_board_info** %7, align 8
  %22 = getelementptr inbounds %struct.spi_board_info, %struct.spi_board_info* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = call i32 @request_module(i64* %23)
  br label %25

25:                                               ; preds = %20, %13
  %26 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %27 = load %struct.spi_board_info*, %struct.spi_board_info** %7, align 8
  %28 = call %struct.spi_device* @spi_new_device(%struct.spi_master* %26, %struct.spi_board_info* %27)
  store %struct.spi_device* %28, %struct.spi_device** %9, align 8
  %29 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %30 = icmp ne %struct.spi_device* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = icmp ne %struct.TYPE_3__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31, %25
  br label %64

38:                                               ; preds = %31
  %39 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @try_module_get(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  br label %64

48:                                               ; preds = %38
  %49 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %50 = call %struct.v4l2_subdev* @spi_get_drvdata(%struct.spi_device* %49)
  store %struct.v4l2_subdev* %50, %struct.v4l2_subdev** %8, align 8
  %51 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %53 = call i64 @v4l2_device_register_subdev(%struct.v4l2_device* %51, %struct.v4l2_subdev* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %8, align 8
  br label %56

56:                                               ; preds = %55, %48
  %57 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %58 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @module_put(i32 %62)
  br label %64

64:                                               ; preds = %56, %47, %37
  %65 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %66 = icmp ne %struct.v4l2_subdev* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %69 = call i32 @spi_unregister_device(%struct.spi_device* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  store %struct.v4l2_subdev* %71, %struct.v4l2_subdev** %4, align 8
  br label %72

72:                                               ; preds = %70, %12
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  ret %struct.v4l2_subdev* %73
}

declare dso_local i32 @request_module(i64*) #1

declare dso_local %struct.spi_device* @spi_new_device(%struct.spi_master*, %struct.spi_board_info*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.v4l2_subdev* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i64 @v4l2_device_register_subdev(%struct.v4l2_device*, %struct.v4l2_subdev*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @spi_unregister_device(%struct.spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
