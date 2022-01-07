; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-jpeg.c_coda_jpeg_check_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-jpeg.c_coda_jpeg_check_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i32 }
%struct.vb2_buffer = type { i32 }

@SOI_MARKER = common dso_local global i64 0, align 8
@EOI_MARKER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_jpeg_check_buffer(%struct.coda_ctx* %0, %struct.vb2_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.coda_ctx*, align 8
  %5 = alloca %struct.vb2_buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %4, align 8
  store %struct.vb2_buffer* %1, %struct.vb2_buffer** %5, align 8
  %11 = load %struct.vb2_buffer*, %struct.vb2_buffer** %5, align 8
  %12 = call i8* @vb2_plane_vaddr(%struct.vb2_buffer* %11, i32 0)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = call i64 @be16_to_cpup(i32* %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @SOI_MARKER, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

20:                                               ; preds = %2
  %21 = load %struct.vb2_buffer*, %struct.vb2_buffer** %5, align 8
  %22 = call i32 @vb2_get_plane_payload(%struct.vb2_buffer* %21, i32 0)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %23, 2
  %25 = load i8*, i8** %6, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr i8, i8* %25, i64 %26
  store i8* %27, i8** %6, align 8
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %53, %20
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 32
  br i1 %30, label %31, label %56

31:                                               ; preds = %28
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 0, %34
  %36 = getelementptr i8, i8* %32, i64 %35
  %37 = bitcast i8* %36 to i32*
  %38 = call i64 @be16_to_cpup(i32* %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @EOI_MARKER, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %31
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.vb2_buffer*, %struct.vb2_buffer** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 %47, %48
  %50 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %46, i32 0, i32 %49)
  br label %51

51:                                               ; preds = %45, %42
  store i32 1, i32* %3, align 4
  br label %57

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %28

56:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %51, %19
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i8* @vb2_plane_vaddr(%struct.vb2_buffer*, i32) #1

declare dso_local i64 @be16_to_cpup(i32*) #1

declare dso_local i32 @vb2_get_plane_payload(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
