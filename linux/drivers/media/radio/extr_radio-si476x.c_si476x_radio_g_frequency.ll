; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_g_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_g_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si476x_rsq_status_args = type { i32, i32, i32, i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_frequency = type { i64, i64, i32 }
%struct.si476x_radio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.si476x_rsq_status_args*, %struct.si476x_rsq_status_report*)* }
%struct.si476x_rsq_status_report = type { i32 }

@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@__const.si476x_radio_g_frequency.args = private unnamed_addr constant %struct.si476x_rsq_status_args { i32 0, i32 0, i32 1, i32 0, i32 0 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @si476x_radio_g_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_radio_g_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.si476x_radio*, align 8
  %10 = alloca %struct.si476x_rsq_status_report, align 4
  %11 = alloca %struct.si476x_rsq_status_args, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.si476x_radio* @video_drvdata(%struct.file* %12)
  store %struct.si476x_radio* %13, %struct.si476x_radio** %9, align 8
  %14 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %70

27:                                               ; preds = %18
  %28 = load %struct.si476x_radio*, %struct.si476x_radio** %9, align 8
  %29 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @si476x_core_lock(i32 %30)
  %32 = load %struct.si476x_radio*, %struct.si476x_radio** %9, align 8
  %33 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (i32, %struct.si476x_rsq_status_args*, %struct.si476x_rsq_status_report*)*, i32 (i32, %struct.si476x_rsq_status_args*, %struct.si476x_rsq_status_report*)** %35, align 8
  %37 = icmp ne i32 (i32, %struct.si476x_rsq_status_args*, %struct.si476x_rsq_status_report*)* %36, null
  br i1 %37, label %38, label %61

38:                                               ; preds = %27
  %39 = bitcast %struct.si476x_rsq_status_args* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 bitcast (%struct.si476x_rsq_status_args* @__const.si476x_radio_g_frequency.args to i8*), i64 20, i1 false)
  %40 = load %struct.si476x_radio*, %struct.si476x_radio** %9, align 8
  %41 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (i32, %struct.si476x_rsq_status_args*, %struct.si476x_rsq_status_report*)*, i32 (i32, %struct.si476x_rsq_status_args*, %struct.si476x_rsq_status_report*)** %43, align 8
  %45 = load %struct.si476x_radio*, %struct.si476x_radio** %9, align 8
  %46 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %44(i32 %47, %struct.si476x_rsq_status_args* %11, %struct.si476x_rsq_status_report* %10)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %38
  %52 = load %struct.si476x_radio*, %struct.si476x_radio** %9, align 8
  %53 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.si476x_rsq_status_report, %struct.si476x_rsq_status_report* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @si476x_to_v4l2(i32 %54, i32 %56)
  %58 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %51, %38
  br label %64

61:                                               ; preds = %27
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %61, %60
  %65 = load %struct.si476x_radio*, %struct.si476x_radio** %9, align 8
  %66 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @si476x_core_unlock(i32 %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %64, %24
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.si476x_radio* @video_drvdata(%struct.file*) #1

declare dso_local i32 @si476x_core_lock(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @si476x_to_v4l2(i32, i32) #1

declare dso_local i32 @si476x_core_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
