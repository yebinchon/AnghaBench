; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/spi/extr_gs1662.c_gs_s_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/spi/extr_gs1662.c_gs_s_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_dv_timings = type { i32 }
%struct.gs = type { %struct.v4l2_dv_timings }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_dv_timings*)* @gs_s_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_s_dv_timings(%struct.v4l2_subdev* %0, %struct.v4l2_dv_timings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_dv_timings*, align 8
  %6 = alloca %struct.gs*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_dv_timings* %1, %struct.v4l2_dv_timings** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.gs* @to_gs(%struct.v4l2_subdev* %8)
  store %struct.gs* %9, %struct.gs** %6, align 8
  %10 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %11 = call i32 @get_register_timings(%struct.v4l2_dv_timings* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.gs*, %struct.gs** %6, align 8
  %19 = getelementptr inbounds %struct.gs, %struct.gs* %18, i32 0, i32 0
  %20 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %21 = bitcast %struct.v4l2_dv_timings* %19 to i8*
  %22 = bitcast %struct.v4l2_dv_timings* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %17, %14
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.gs* @to_gs(%struct.v4l2_subdev*) #1

declare dso_local i32 @get_register_timings(%struct.v4l2_dv_timings*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
