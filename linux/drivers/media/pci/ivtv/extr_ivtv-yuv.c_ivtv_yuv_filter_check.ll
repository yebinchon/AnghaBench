; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-yuv.c_ivtv_yuv_filter_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-yuv.c_ivtv_yuv_filter_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32 }

@IVTV_YUV_HORIZONTAL_FILTER_OFFSET = common dso_local global i64 0, align 8
@IVTV_YUV_VERTICAL_FILTER_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"YUV filter table not found in firmware.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_yuv_filter_check(%struct.ivtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 16, i32* %5, align 4
  store i32 4, i32* %6, align 4
  br label %7

7:                                                ; preds = %31, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 16
  br i1 %9, label %10, label %38

10:                                               ; preds = %7
  %11 = load i64, i64* @IVTV_YUV_HORIZONTAL_FILTER_OFFSET, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = call i32 @read_dec(i64 %14)
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 %16, 16
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %10
  %20 = load i64, i64* @IVTV_YUV_VERTICAL_FILTER_OFFSET, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = call i32 @read_dec(i64 %23)
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 %25, 16
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %19, %10
  %29 = call i32 @IVTV_WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %39

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 24
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 12
  store i32 %37, i32* %6, align 4
  br label %7

38:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %28
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @read_dec(i64) #1

declare dso_local i32 @IVTV_WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
