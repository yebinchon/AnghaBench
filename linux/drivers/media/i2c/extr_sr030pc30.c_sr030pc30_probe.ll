; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_sr030pc30.c_sr030pc30_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_sr030pc30.c_sr030pc30_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sr030pc30_platform_data* }
%struct.sr030pc30_platform_data = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.sr030pc30_info = type { i32, i32, i8*, i8*, i8*, i8*, i8*, %struct.v4l2_ctrl_handler, %struct.sr030pc30_platform_data*, %struct.v4l2_subdev }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_subdev = type { %struct.v4l2_ctrl_handler* }

@.str = private unnamed_addr constant [18 x i8] c"No platform data!\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sr030pc30_ops = common dso_local global i32 0, align 4
@sr030pc30_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUTO_WHITE_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_RED_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_BLUE_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@EXPOS_MIN_MS = common dso_local global i32 0, align 4
@EXPOS_MAX_MS = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_MANUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @sr030pc30_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr030pc30_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.sr030pc30_info*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.v4l2_ctrl_handler*, align 8
  %9 = alloca %struct.sr030pc30_platform_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.sr030pc30_platform_data*, %struct.sr030pc30_platform_data** %14, align 8
  store %struct.sr030pc30_platform_data* %15, %struct.sr030pc30_platform_data** %9, align 8
  %16 = load %struct.sr030pc30_platform_data*, %struct.sr030pc30_platform_data** %9, align 8
  %17 = icmp ne %struct.sr030pc30_platform_data* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = call i32 @dev_err(%struct.TYPE_3__* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %112

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = call i32 @sr030pc30_detect(%struct.i2c_client* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %3, align 4
  br label %112

31:                                               ; preds = %24
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.sr030pc30_info* @devm_kzalloc(%struct.TYPE_3__* %33, i32 72, i32 %34)
  store %struct.sr030pc30_info* %35, %struct.sr030pc30_info** %6, align 8
  %36 = load %struct.sr030pc30_info*, %struct.sr030pc30_info** %6, align 8
  %37 = icmp ne %struct.sr030pc30_info* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %112

41:                                               ; preds = %31
  %42 = load %struct.sr030pc30_info*, %struct.sr030pc30_info** %6, align 8
  %43 = getelementptr inbounds %struct.sr030pc30_info, %struct.sr030pc30_info* %42, i32 0, i32 9
  store %struct.v4l2_subdev* %43, %struct.v4l2_subdev** %7, align 8
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.sr030pc30_platform_data*, %struct.sr030pc30_platform_data** %46, align 8
  %48 = load %struct.sr030pc30_info*, %struct.sr030pc30_info** %6, align 8
  %49 = getelementptr inbounds %struct.sr030pc30_info, %struct.sr030pc30_info* %48, i32 0, i32 8
  store %struct.sr030pc30_platform_data* %47, %struct.sr030pc30_platform_data** %49, align 8
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %50, %struct.i2c_client* %51, i32* @sr030pc30_ops)
  %53 = load %struct.sr030pc30_info*, %struct.sr030pc30_info** %6, align 8
  %54 = getelementptr inbounds %struct.sr030pc30_info, %struct.sr030pc30_info* %53, i32 0, i32 7
  store %struct.v4l2_ctrl_handler* %54, %struct.v4l2_ctrl_handler** %8, align 8
  %55 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %56 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %55, i32 6)
  %57 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %58 = load i32, i32* @V4L2_CID_AUTO_WHITE_BALANCE, align 4
  %59 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %57, i32* @sr030pc30_ctrl_ops, i32 %58, i32 0, i32 1, i32 1, i32 1)
  %60 = load %struct.sr030pc30_info*, %struct.sr030pc30_info** %6, align 8
  %61 = getelementptr inbounds %struct.sr030pc30_info, %struct.sr030pc30_info* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %63 = load i32, i32* @V4L2_CID_RED_BALANCE, align 4
  %64 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %62, i32* @sr030pc30_ctrl_ops, i32 %63, i32 0, i32 127, i32 1, i32 64)
  %65 = load %struct.sr030pc30_info*, %struct.sr030pc30_info** %6, align 8
  %66 = getelementptr inbounds %struct.sr030pc30_info, %struct.sr030pc30_info* %65, i32 0, i32 6
  store i8* %64, i8** %66, align 8
  %67 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %68 = load i32, i32* @V4L2_CID_BLUE_BALANCE, align 4
  %69 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %67, i32* @sr030pc30_ctrl_ops, i32 %68, i32 0, i32 127, i32 1, i32 64)
  %70 = load %struct.sr030pc30_info*, %struct.sr030pc30_info** %6, align 8
  %71 = getelementptr inbounds %struct.sr030pc30_info, %struct.sr030pc30_info* %70, i32 0, i32 5
  store i8* %69, i8** %71, align 8
  %72 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %73 = load i32, i32* @V4L2_CID_EXPOSURE_AUTO, align 4
  %74 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %72, i32* @sr030pc30_ctrl_ops, i32 %73, i32 0, i32 1, i32 1, i32 1)
  %75 = load %struct.sr030pc30_info*, %struct.sr030pc30_info** %6, align 8
  %76 = getelementptr inbounds %struct.sr030pc30_info, %struct.sr030pc30_info* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %78 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %79 = load i32, i32* @EXPOS_MIN_MS, align 4
  %80 = load i32, i32* @EXPOS_MAX_MS, align 4
  %81 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %77, i32* @sr030pc30_ctrl_ops, i32 %78, i32 %79, i32 %80, i32 1, i32 30)
  %82 = load %struct.sr030pc30_info*, %struct.sr030pc30_info** %6, align 8
  %83 = getelementptr inbounds %struct.sr030pc30_info, %struct.sr030pc30_info* %82, i32 0, i32 4
  store i8* %81, i8** %83, align 8
  %84 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %85 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %85, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %84, %struct.v4l2_ctrl_handler** %86, align 8
  %87 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %88 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %41
  %92 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %93 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %11, align 4
  %95 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %96 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %95)
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %3, align 4
  br label %112

98:                                               ; preds = %41
  %99 = load %struct.sr030pc30_info*, %struct.sr030pc30_info** %6, align 8
  %100 = getelementptr inbounds %struct.sr030pc30_info, %struct.sr030pc30_info* %99, i32 0, i32 3
  %101 = call i32 @v4l2_ctrl_auto_cluster(i32 3, i8** %100, i32 0, i32 0)
  %102 = load %struct.sr030pc30_info*, %struct.sr030pc30_info** %6, align 8
  %103 = getelementptr inbounds %struct.sr030pc30_info, %struct.sr030pc30_info* %102, i32 0, i32 2
  %104 = load i32, i32* @V4L2_EXPOSURE_MANUAL, align 4
  %105 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %103, i32 %104, i32 0)
  %106 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %107 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %106)
  %108 = load %struct.sr030pc30_info*, %struct.sr030pc30_info** %6, align 8
  %109 = getelementptr inbounds %struct.sr030pc30_info, %struct.sr030pc30_info* %108, i32 0, i32 0
  store i32 -1, i32* %109, align 8
  %110 = load %struct.sr030pc30_info*, %struct.sr030pc30_info** %6, align 8
  %111 = getelementptr inbounds %struct.sr030pc30_info, %struct.sr030pc30_info* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %98, %91, %38, %29, %18
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @sr030pc30_detect(%struct.i2c_client*) #1

declare dso_local %struct.sr030pc30_info* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
