; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_g_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_g_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.file = type { i32 }
%struct.vpfe_device = type { i64, %struct.vpfe_subdev_info* }
%struct.vpfe_subdev_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"vpfe_g_std\0A\00", align 1
@V4L2_IN_CAP_STD = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i32 0, align 4
@vpfe_standards = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32*)* @vpfe_g_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_g_std(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vpfe_device*, align 8
  %9 = alloca %struct.vpfe_subdev_info*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.vpfe_device* @video_drvdata(%struct.file* %10)
  store %struct.vpfe_device* %11, %struct.vpfe_device** %8, align 8
  %12 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %13 = call i32 @vpfe_dbg(i32 2, %struct.vpfe_device* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %15 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %14, i32 0, i32 1
  %16 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %15, align 8
  store %struct.vpfe_subdev_info* %16, %struct.vpfe_subdev_info** %9, align 8
  %17 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %9, align 8
  %18 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @V4L2_IN_CAP_STD, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ENODATA, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %37

28:                                               ; preds = %3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vpfe_standards, align 8
  %30 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %31 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %28, %25
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @vpfe_dbg(i32, %struct.vpfe_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
