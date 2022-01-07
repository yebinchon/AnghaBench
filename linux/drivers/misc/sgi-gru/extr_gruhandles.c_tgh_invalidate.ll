; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_gruhandles.c_tgh_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_gruhandles.c_tgh_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_tlb_global_handle = type { i64, i32, i32, i32, i32, i64, i16, i32 }

@TGHOP_TLBINV = common dso_local global i32 0, align 4
@tghop_invalidate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tgh_invalidate(%struct.gru_tlb_global_handle* %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i16 zeroext %7) #0 {
  %9 = alloca %struct.gru_tlb_global_handle*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  store %struct.gru_tlb_global_handle* %0, %struct.gru_tlb_global_handle** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i16 %7, i16* %16, align 2
  %17 = load i64, i64* %10, align 8
  %18 = load %struct.gru_tlb_global_handle*, %struct.gru_tlb_global_handle** %9, align 8
  %19 = getelementptr inbounds %struct.gru_tlb_global_handle, %struct.gru_tlb_global_handle* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.gru_tlb_global_handle*, %struct.gru_tlb_global_handle** %9, align 8
  %22 = getelementptr inbounds %struct.gru_tlb_global_handle, %struct.gru_tlb_global_handle* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load %struct.gru_tlb_global_handle*, %struct.gru_tlb_global_handle** %9, align 8
  %25 = getelementptr inbounds %struct.gru_tlb_global_handle, %struct.gru_tlb_global_handle* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %15, align 4
  %27 = load %struct.gru_tlb_global_handle*, %struct.gru_tlb_global_handle** %9, align 8
  %28 = getelementptr inbounds %struct.gru_tlb_global_handle, %struct.gru_tlb_global_handle* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.gru_tlb_global_handle*, %struct.gru_tlb_global_handle** %9, align 8
  %31 = getelementptr inbounds %struct.gru_tlb_global_handle, %struct.gru_tlb_global_handle* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.gru_tlb_global_handle*, %struct.gru_tlb_global_handle** %9, align 8
  %34 = getelementptr inbounds %struct.gru_tlb_global_handle, %struct.gru_tlb_global_handle* %33, i32 0, i32 5
  store i64 %32, i64* %34, align 8
  %35 = load i16, i16* %16, align 2
  %36 = load %struct.gru_tlb_global_handle*, %struct.gru_tlb_global_handle** %9, align 8
  %37 = getelementptr inbounds %struct.gru_tlb_global_handle, %struct.gru_tlb_global_handle* %36, i32 0, i32 6
  store i16 %35, i16* %37, align 8
  %38 = load i32, i32* @TGHOP_TLBINV, align 4
  %39 = load %struct.gru_tlb_global_handle*, %struct.gru_tlb_global_handle** %9, align 8
  %40 = getelementptr inbounds %struct.gru_tlb_global_handle, %struct.gru_tlb_global_handle* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load %struct.gru_tlb_global_handle*, %struct.gru_tlb_global_handle** %9, align 8
  %42 = call i32 @start_instruction(%struct.gru_tlb_global_handle* %41)
  %43 = load %struct.gru_tlb_global_handle*, %struct.gru_tlb_global_handle** %9, align 8
  %44 = load i32, i32* @tghop_invalidate, align 4
  %45 = call i32 @wait_instruction_complete(%struct.gru_tlb_global_handle* %43, i32 %44)
  ret i32 %45
}

declare dso_local i32 @start_instruction(%struct.gru_tlb_global_handle*) #1

declare dso_local i32 @wait_instruction_complete(%struct.gru_tlb_global_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
