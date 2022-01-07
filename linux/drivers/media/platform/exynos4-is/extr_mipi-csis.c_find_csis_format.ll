; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c_find_csis_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c_find_csis_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csis_pix_format = type { i64 }
%struct.v4l2_mbus_framefmt = type { i64 }

@s5pcsis_formats = common dso_local global %struct.csis_pix_format* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.csis_pix_format* (%struct.v4l2_mbus_framefmt*)* @find_csis_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.csis_pix_format* @find_csis_format(%struct.v4l2_mbus_framefmt* %0) #0 {
  %2 = alloca %struct.csis_pix_format*, align 8
  %3 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %4 = alloca i32, align 4
  store %struct.v4l2_mbus_framefmt* %0, %struct.v4l2_mbus_framefmt** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.csis_pix_format*, %struct.csis_pix_format** @s5pcsis_formats, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.csis_pix_format* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %5
  %11 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %12 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.csis_pix_format*, %struct.csis_pix_format** @s5pcsis_formats, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.csis_pix_format, %struct.csis_pix_format* %14, i64 %16
  %18 = getelementptr inbounds %struct.csis_pix_format, %struct.csis_pix_format* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %13, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %10
  %22 = load %struct.csis_pix_format*, %struct.csis_pix_format** @s5pcsis_formats, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.csis_pix_format, %struct.csis_pix_format* %22, i64 %24
  store %struct.csis_pix_format* %25, %struct.csis_pix_format** %2, align 8
  br label %31

26:                                               ; preds = %10
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %5

30:                                               ; preds = %5
  store %struct.csis_pix_format* null, %struct.csis_pix_format** %2, align 8
  br label %31

31:                                               ; preds = %30, %21
  %32 = load %struct.csis_pix_format*, %struct.csis_pix_format** %2, align 8
  ret %struct.csis_pix_format* %32
}

declare dso_local i32 @ARRAY_SIZE(%struct.csis_pix_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
