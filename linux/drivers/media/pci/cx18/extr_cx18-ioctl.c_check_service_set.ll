; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_check_service_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_check_service_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_sliced_vbi_format = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_sliced_vbi_format*, i32)* @check_service_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_service_set(%struct.v4l2_sliced_vbi_format* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_sliced_vbi_format*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_sliced_vbi_format* %0, %struct.v4l2_sliced_vbi_format** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %58, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %61

11:                                               ; preds = %8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %54, %11
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 24
  br i1 %14, label %15, label %57

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %18, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @select_service_from_set(i32 %16, i32 %17, i32 %28, i32 %29)
  %31 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %3, align 8
  %32 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %30, i32* %40, align 4
  %41 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %3, align 8
  %42 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %15
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %12

57:                                               ; preds = %12
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %8

61:                                               ; preds = %8
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  ret i32 %64
}

declare dso_local i32 @select_service_from_set(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
