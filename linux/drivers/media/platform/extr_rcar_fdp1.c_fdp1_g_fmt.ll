; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_g_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_g_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fdp1_q_data = type { i32 }
%struct.fdp1_ctx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @fdp1_g_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdp1_g_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.fdp1_q_data*, align 8
  %9 = alloca %struct.fdp1_ctx*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.fdp1_ctx* @fh_to_ctx(i8* %10)
  store %struct.fdp1_ctx* %11, %struct.fdp1_ctx** %9, align 8
  %12 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %9, align 8
  %13 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @v4l2_m2m_get_vq(i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %36

24:                                               ; preds = %3
  %25 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %9, align 8
  %26 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.fdp1_q_data* @get_q_data(%struct.fdp1_ctx* %25, i32 %28)
  store %struct.fdp1_q_data* %29, %struct.fdp1_q_data** %8, align 8
  %30 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %8, align 8
  %31 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %24, %21
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.fdp1_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local %struct.fdp1_q_data* @get_q_data(%struct.fdp1_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
