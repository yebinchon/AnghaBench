; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_vidioc_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_vidioc_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32 }
%struct.s5p_mfc_dev = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@S5P_MFC_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @vidioc_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.s5p_mfc_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.s5p_mfc_dev* @video_drvdata(%struct.file* %8)
  store %struct.s5p_mfc_dev* %9, %struct.s5p_mfc_dev** %7, align 8
  %10 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @S5P_MFC_NAME, align 4
  %14 = call i32 @strscpy(i32 %12, i32 %13, i32 4)
  %15 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %7, align 8
  %19 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strscpy(i32 %17, i32 %22, i32 4)
  %24 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %7, align 8
  %28 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i8* @dev_name(i32* %30)
  %32 = call i32 @snprintf(i32 %26, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %31)
  ret i32 0
}

declare dso_local %struct.s5p_mfc_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
