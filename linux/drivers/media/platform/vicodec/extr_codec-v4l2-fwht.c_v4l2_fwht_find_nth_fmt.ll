; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_codec-v4l2-fwht.c_v4l2_fwht_find_nth_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_codec-v4l2-fwht.c_v4l2_fwht_find_nth_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fwht_pixfmt_info = type { i32 }

@v4l2_fwht_pixfmts = common dso_local global %struct.v4l2_fwht_pixfmt_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_fwht_pixfmt_info* @v4l2_fwht_find_nth_fmt(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.v4l2_fwht_pixfmt_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %43, %5
  %15 = load i32, i32* %12, align 4
  %16 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** @v4l2_fwht_pixfmts, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.v4l2_fwht_pixfmt_info* %16)
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %14
  %20 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** @v4l2_fwht_pixfmts, align 8
  %21 = load i32, i32* %12, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %20, i64 %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @v4l2_fwht_validate_fmt(%struct.v4l2_fwht_pixfmt_info* %23, i32 %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %19
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** @v4l2_fwht_pixfmts, align 8
  %36 = load i32, i32* %12, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %35, i64 %37
  store %struct.v4l2_fwht_pixfmt_info* %38, %struct.v4l2_fwht_pixfmt_info** %6, align 8
  br label %47

39:                                               ; preds = %31
  %40 = load i32, i32* %11, align 4
  %41 = add i32 %40, -1
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %39, %19
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %12, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %14

46:                                               ; preds = %14
  store %struct.v4l2_fwht_pixfmt_info* null, %struct.v4l2_fwht_pixfmt_info** %6, align 8
  br label %47

47:                                               ; preds = %46, %34
  %48 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %6, align 8
  ret %struct.v4l2_fwht_pixfmt_info* %48
}

declare dso_local i32 @ARRAY_SIZE(%struct.v4l2_fwht_pixfmt_info*) #1

declare dso_local i32 @v4l2_fwht_validate_fmt(%struct.v4l2_fwht_pixfmt_info*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
