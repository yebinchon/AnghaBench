; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-core.c_s3c_camif_find_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-core.c_s3c_camif_find_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_fmt = type { i32, i64 }
%struct.camif_vp = type { i32 }

@camif_formats = common dso_local global %struct.camif_fmt* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.camif_fmt* @s3c_camif_find_format(%struct.camif_vp* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.camif_fmt*, align 8
  %5 = alloca %struct.camif_vp*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.camif_fmt*, align 8
  %9 = alloca %struct.camif_fmt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.camif_vp* %0, %struct.camif_vp** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.camif_fmt* null, %struct.camif_fmt** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.camif_fmt*, %struct.camif_fmt** @camif_formats, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.camif_fmt* %13)
  %15 = icmp sge i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.camif_fmt* null, %struct.camif_fmt** %4, align 8
  br label %66

17:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %61, %17
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.camif_fmt*, %struct.camif_fmt** @camif_formats, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.camif_fmt* %20)
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %23, label %64

23:                                               ; preds = %18
  %24 = load %struct.camif_fmt*, %struct.camif_fmt** @camif_formats, align 8
  %25 = load i32, i32* %10, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.camif_fmt, %struct.camif_fmt* %24, i64 %26
  store %struct.camif_fmt* %27, %struct.camif_fmt** %8, align 8
  %28 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %29 = icmp ne %struct.camif_vp* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %32 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.camif_fmt*, %struct.camif_fmt** %8, align 8
  %35 = getelementptr inbounds %struct.camif_fmt, %struct.camif_fmt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %61

40:                                               ; preds = %30, %23
  %41 = load i64*, i64** %6, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.camif_fmt*, %struct.camif_fmt** %8, align 8
  %45 = getelementptr inbounds %struct.camif_fmt, %struct.camif_fmt* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load %struct.camif_fmt*, %struct.camif_fmt** %8, align 8
  store %struct.camif_fmt* %51, %struct.camif_fmt** %4, align 8
  br label %66

52:                                               ; preds = %43, %40
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load %struct.camif_fmt*, %struct.camif_fmt** %8, align 8
  store %struct.camif_fmt* %57, %struct.camif_fmt** %9, align 8
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %58, %39
  %62 = load i32, i32* %10, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %18

64:                                               ; preds = %18
  %65 = load %struct.camif_fmt*, %struct.camif_fmt** %9, align 8
  store %struct.camif_fmt* %65, %struct.camif_fmt** %4, align 8
  br label %66

66:                                               ; preds = %64, %50, %16
  %67 = load %struct.camif_fmt*, %struct.camif_fmt** %4, align 8
  ret %struct.camif_fmt* %67
}

declare dso_local i32 @ARRAY_SIZE(%struct.camif_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
