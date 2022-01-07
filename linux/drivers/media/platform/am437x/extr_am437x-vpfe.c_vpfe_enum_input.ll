; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i32 }
%struct.vpfe_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vpfe_subdev_info* }
%struct.vpfe_subdev_info = type { %struct.v4l2_input* }

@.str = private unnamed_addr constant [17 x i8] c"vpfe_enum_input\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"input information not found for the subdev\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @vpfe_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.vpfe_device*, align 8
  %9 = alloca %struct.vpfe_subdev_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.vpfe_device* @video_drvdata(%struct.file* %12)
  store %struct.vpfe_device* %13, %struct.vpfe_device** %8, align 8
  %14 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %15 = call i32 @vpfe_dbg(i32 2, %struct.vpfe_device* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %17 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @vpfe_get_subdev_input_index(%struct.vpfe_device* %16, i32* %10, i32* %11, i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %24 = call i32 @vpfe_dbg(i32 1, %struct.vpfe_device* %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %45

27:                                               ; preds = %3
  %28 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %29 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %32, i64 %34
  store %struct.vpfe_subdev_info* %35, %struct.vpfe_subdev_info** %9, align 8
  %36 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %37 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %9, align 8
  %38 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %37, i32 0, i32 0
  %39 = load %struct.v4l2_input*, %struct.v4l2_input** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %39, i64 %41
  %43 = bitcast %struct.v4l2_input* %36 to i8*
  %44 = bitcast %struct.v4l2_input* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %27, %22
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @vpfe_dbg(i32, %struct.vpfe_device*, i8*) #1

declare dso_local i64 @vpfe_get_subdev_input_index(%struct.vpfe_device*, i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
