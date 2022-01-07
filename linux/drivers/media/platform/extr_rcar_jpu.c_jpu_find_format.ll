; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_find_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_find_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpu_fmt = type { i64, i32 }

@JPU_FMT_TYPE_OUTPUT = common dso_local global i32 0, align 4
@JPU_ENC_OUTPUT = common dso_local global i32 0, align 4
@JPU_ENC_CAPTURE = common dso_local global i32 0, align 4
@JPU_DEC_OUTPUT = common dso_local global i32 0, align 4
@JPU_DEC_CAPTURE = common dso_local global i32 0, align 4
@jpu_formats = common dso_local global %struct.jpu_fmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.jpu_fmt* (i32, i64, i32)* @jpu_find_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.jpu_fmt* @jpu_find_format(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.jpu_fmt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.jpu_fmt*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @JPU_FMT_TYPE_OUTPUT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @JPU_ENC_OUTPUT, align 4
  br label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @JPU_ENC_CAPTURE, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %9, align 4
  br label %33

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @JPU_FMT_TYPE_OUTPUT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @JPU_DEC_OUTPUT, align 4
  br label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @JPU_DEC_CAPTURE, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %31, %21
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %59, %33
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.jpu_fmt*, %struct.jpu_fmt** @jpu_formats, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.jpu_fmt* %36)
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = load %struct.jpu_fmt*, %struct.jpu_fmt** @jpu_formats, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.jpu_fmt, %struct.jpu_fmt* %40, i64 %42
  store %struct.jpu_fmt* %43, %struct.jpu_fmt** %10, align 8
  %44 = load %struct.jpu_fmt*, %struct.jpu_fmt** %10, align 8
  %45 = getelementptr inbounds %struct.jpu_fmt, %struct.jpu_fmt* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %39
  %50 = load %struct.jpu_fmt*, %struct.jpu_fmt** %10, align 8
  %51 = getelementptr inbounds %struct.jpu_fmt, %struct.jpu_fmt* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load %struct.jpu_fmt*, %struct.jpu_fmt** %10, align 8
  store %struct.jpu_fmt* %57, %struct.jpu_fmt** %4, align 8
  br label %63

58:                                               ; preds = %49, %39
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %34

62:                                               ; preds = %34
  store %struct.jpu_fmt* null, %struct.jpu_fmt** %4, align 8
  br label %63

63:                                               ; preds = %62, %56
  %64 = load %struct.jpu_fmt*, %struct.jpu_fmt** %4, align 8
  ret %struct.jpu_fmt* %64
}

declare dso_local i32 @ARRAY_SIZE(%struct.jpu_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
