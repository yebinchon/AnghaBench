; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_parser.c_parse_alloc_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_parser.c_parse_alloc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i32 }
%struct.hfi_buffer_alloc_mode_supported = type { i64, i64, i64* }

@MAX_ALLOC_MODE_ENTRIES = common dso_local global i64 0, align 8
@HFI_BUFFER_OUTPUT = common dso_local global i64 0, align 8
@HFI_BUFFER_OUTPUT2 = common dso_local global i64 0, align 8
@fill_buf_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_core*, i64, i64, i8*)* @parse_alloc_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_alloc_mode(%struct.venus_core* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.venus_core*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.hfi_buffer_alloc_mode_supported*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  store %struct.venus_core* %0, %struct.venus_core** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.hfi_buffer_alloc_mode_supported*
  store %struct.hfi_buffer_alloc_mode_supported* %13, %struct.hfi_buffer_alloc_mode_supported** %9, align 8
  %14 = load %struct.hfi_buffer_alloc_mode_supported*, %struct.hfi_buffer_alloc_mode_supported** %9, align 8
  %15 = getelementptr inbounds %struct.hfi_buffer_alloc_mode_supported, %struct.hfi_buffer_alloc_mode_supported* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @MAX_ALLOC_MODE_ENTRIES, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %57

21:                                               ; preds = %4
  %22 = load %struct.hfi_buffer_alloc_mode_supported*, %struct.hfi_buffer_alloc_mode_supported** %9, align 8
  %23 = getelementptr inbounds %struct.hfi_buffer_alloc_mode_supported, %struct.hfi_buffer_alloc_mode_supported* %22, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  store i64* %24, i64** %11, align 8
  br label %25

25:                                               ; preds = %54, %21
  %26 = load i64, i64* %10, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %10, align 8
  %28 = icmp ne i64 %26, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load %struct.hfi_buffer_alloc_mode_supported*, %struct.hfi_buffer_alloc_mode_supported** %9, align 8
  %31 = getelementptr inbounds %struct.hfi_buffer_alloc_mode_supported, %struct.hfi_buffer_alloc_mode_supported* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @HFI_BUFFER_OUTPUT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.hfi_buffer_alloc_mode_supported*, %struct.hfi_buffer_alloc_mode_supported** %9, align 8
  %37 = getelementptr inbounds %struct.hfi_buffer_alloc_mode_supported, %struct.hfi_buffer_alloc_mode_supported* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HFI_BUFFER_OUTPUT2, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %35, %29
  %42 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %43 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %46 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ARRAY_SIZE(i32 %47)
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* @fill_buf_mode, align 4
  %52 = load i64*, i64** %11, align 8
  %53 = call i32 @for_each_codec(i32 %44, i32 %48, i64 %49, i64 %50, i32 %51, i64* %52, i32 1)
  br label %54

54:                                               ; preds = %41, %35
  %55 = load i64*, i64** %11, align 8
  %56 = getelementptr inbounds i64, i64* %55, i32 1
  store i64* %56, i64** %11, align 8
  br label %25

57:                                               ; preds = %20, %25
  ret void
}

declare dso_local i32 @for_each_codec(i32, i32, i64, i64, i32, i64*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
