; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_vidioc_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_vidioc_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.sta2x11_vip = type { i32, i32, %struct.TYPE_4__, i32 }

@.str = private unnamed_addr constant [13 x i8] c"device busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unknown field format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DVP_TFO = common dso_local global i32 0, align 4
@DVP_BFO = common dso_local global i32 0, align 4
@DVP_TFS = common dso_local global i32 0, align 4
@DVP_BFS = common dso_local global i32 0, align 4
@DVP_VMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.sta2x11_vip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.sta2x11_vip* @video_drvdata(%struct.file* %13)
  store %struct.sta2x11_vip* %14, %struct.sta2x11_vip** %8, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %18 = call i32 @vidioc_try_fmt_vid_cap(%struct.file* %15, i8* %16, %struct.v4l2_format* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %4, align 4
  br label %149

23:                                               ; preds = %3
  %24 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %25 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %24, i32 0, i32 3
  %26 = call i64 @vb2_is_busy(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %30 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %29, i32 0, i32 1
  %31 = call i32 @v4l2_err(i32* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %149

34:                                               ; preds = %23
  %35 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %36 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %35, i32 0, i32 2
  %37 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = bitcast %struct.TYPE_4__* %36 to i8*
  %41 = bitcast %struct.TYPE_4__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 12, i1 false)
  %42 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %43 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %118 [
    i32 129, label %46
    i32 128, label %67
    i32 130, label %93
  ]

46:                                               ; preds = %34
  %47 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %48 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %50, 2
  %52 = sub nsw i32 %51, 1
  %53 = shl i32 %52, 16
  %54 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %55 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 2, %57
  %59 = sub nsw i32 %58, 1
  %60 = or i32 %53, %59
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %10, align 4
  %62 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %63 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 4, %65
  store i32 %66, i32* %11, align 4
  br label %124

67:                                               ; preds = %34
  %68 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %69 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 1
  %73 = shl i32 %72, 16
  %74 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %75 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 2, %77
  %79 = sub nsw i32 %78, 1
  %80 = or i32 %73, %79
  store i32 %80, i32* %9, align 4
  %81 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %82 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 2, %84
  %86 = sub nsw i32 %85, 1
  %87 = or i32 0, %86
  store i32 %87, i32* %10, align 4
  %88 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %89 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 2, %91
  store i32 %92, i32* %11, align 4
  br label %124

93:                                               ; preds = %34
  %94 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %95 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 2, %97
  %99 = sub nsw i32 %98, 1
  %100 = or i32 0, %99
  store i32 %100, i32* %9, align 4
  %101 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %102 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 16
  %106 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %107 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 2, %109
  %111 = sub nsw i32 %110, 1
  %112 = or i32 %105, %111
  store i32 %112, i32* %10, align 4
  %113 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %114 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 2, %116
  store i32 %117, i32* %11, align 4
  br label %124

118:                                              ; preds = %34
  %119 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %120 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %119, i32 0, i32 1
  %121 = call i32 @v4l2_err(i32* %120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %149

124:                                              ; preds = %93, %67, %46
  %125 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %126 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %125, i32 0, i32 0
  %127 = call i32 @spin_lock_irq(i32* %126)
  %128 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %129 = load i32, i32* @DVP_TFO, align 4
  %130 = call i32 @reg_write(%struct.sta2x11_vip* %128, i32 %129, i32 0)
  %131 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %132 = load i32, i32* @DVP_BFO, align 4
  %133 = call i32 @reg_write(%struct.sta2x11_vip* %131, i32 %132, i32 0)
  %134 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %135 = load i32, i32* @DVP_TFS, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @reg_write(%struct.sta2x11_vip* %134, i32 %135, i32 %136)
  %138 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %139 = load i32, i32* @DVP_BFS, align 4
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @reg_write(%struct.sta2x11_vip* %138, i32 %139, i32 %140)
  %142 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %143 = load i32, i32* @DVP_VMP, align 4
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @reg_write(%struct.sta2x11_vip* %142, i32 %143, i32 %144)
  %146 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %147 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %146, i32 0, i32 0
  %148 = call i32 @spin_unlock_irq(i32* %147)
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %124, %118, %28, %21
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.sta2x11_vip* @video_drvdata(%struct.file*) #1

declare dso_local i32 @vidioc_try_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @reg_write(%struct.sta2x11_vip*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
