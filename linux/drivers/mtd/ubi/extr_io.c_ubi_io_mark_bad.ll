; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_ubi_io_mark_bad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_ubi_io_mark_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, i64, %struct.mtd_info* }
%struct.mtd_info = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"read-only mode\00", align 1
@EROFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot mark PEB %d bad, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_io_mark_bad(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %9 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %8, i32 0, i32 4
  %10 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  store %struct.mtd_info* %10, %struct.mtd_info** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %16 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i1 [ false, %2 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @ubi_assert(i32 %21)
  %23 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %29 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EROFS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %55

32:                                               ; preds = %19
  %33 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %34 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %55

38:                                               ; preds = %32
  %39 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %42 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  %45 = call i32 @mtd_block_markbad(%struct.mtd_info* %39, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %38
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %37, %27
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, ...) #1

declare dso_local i32 @mtd_block_markbad(%struct.mtd_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
