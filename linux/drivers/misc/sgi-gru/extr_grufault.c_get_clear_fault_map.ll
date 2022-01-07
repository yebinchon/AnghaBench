; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufault.c_get_clear_fault_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufault.c_get_clear_fault_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_state = type { i32 }
%struct.gru_tlb_fault_map = type { i64*, i64* }

@GRU_NUM_CBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gru_state*, %struct.gru_tlb_fault_map*, %struct.gru_tlb_fault_map*)* @get_clear_fault_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_clear_fault_map(%struct.gru_state* %0, %struct.gru_tlb_fault_map* %1, %struct.gru_tlb_fault_map* %2) #0 {
  %4 = alloca %struct.gru_state*, align 8
  %5 = alloca %struct.gru_tlb_fault_map*, align 8
  %6 = alloca %struct.gru_tlb_fault_map*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.gru_tlb_fault_map*, align 8
  store %struct.gru_state* %0, %struct.gru_state** %4, align 8
  store %struct.gru_tlb_fault_map* %1, %struct.gru_tlb_fault_map** %5, align 8
  store %struct.gru_tlb_fault_map* %2, %struct.gru_tlb_fault_map** %6, align 8
  %10 = load %struct.gru_state*, %struct.gru_state** %4, align 8
  %11 = call i32 (...) @gru_cpu_fault_map_id()
  %12 = call %struct.gru_tlb_fault_map* @get_tfm_for_cpu(%struct.gru_state* %10, i32 %11)
  store %struct.gru_tlb_fault_map* %12, %struct.gru_tlb_fault_map** %9, align 8
  %13 = load %struct.gru_tlb_fault_map*, %struct.gru_tlb_fault_map** %9, align 8
  %14 = call i32 @prefetchw(%struct.gru_tlb_fault_map* %13)
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %65, %3
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* @GRU_NUM_CBE, align 4
  %18 = call i64 @BITS_TO_LONGS(i32 %17)
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %68

20:                                               ; preds = %15
  %21 = load %struct.gru_tlb_fault_map*, %struct.gru_tlb_fault_map** %9, align 8
  %22 = getelementptr inbounds %struct.gru_tlb_fault_map, %struct.gru_tlb_fault_map* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load %struct.gru_tlb_fault_map*, %struct.gru_tlb_fault_map** %9, align 8
  %31 = getelementptr inbounds %struct.gru_tlb_fault_map, %struct.gru_tlb_fault_map* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = call i64 @xchg(i64* %34, i64 0)
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %29, %20
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.gru_tlb_fault_map*, %struct.gru_tlb_fault_map** %5, align 8
  %39 = getelementptr inbounds %struct.gru_tlb_fault_map, %struct.gru_tlb_fault_map* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 %37, i64* %42, align 8
  %43 = load %struct.gru_tlb_fault_map*, %struct.gru_tlb_fault_map** %9, align 8
  %44 = getelementptr inbounds %struct.gru_tlb_fault_map, %struct.gru_tlb_fault_map* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %36
  %52 = load %struct.gru_tlb_fault_map*, %struct.gru_tlb_fault_map** %9, align 8
  %53 = getelementptr inbounds %struct.gru_tlb_fault_map, %struct.gru_tlb_fault_map* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = call i64 @xchg(i64* %56, i64 0)
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %51, %36
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.gru_tlb_fault_map*, %struct.gru_tlb_fault_map** %6, align 8
  %61 = getelementptr inbounds %struct.gru_tlb_fault_map, %struct.gru_tlb_fault_map* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 %59, i64* %64, align 8
  br label %65

65:                                               ; preds = %58
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %7, align 8
  br label %15

68:                                               ; preds = %15
  %69 = load %struct.gru_tlb_fault_map*, %struct.gru_tlb_fault_map** %9, align 8
  %70 = call i32 @gru_flush_cache(%struct.gru_tlb_fault_map* %69)
  ret void
}

declare dso_local %struct.gru_tlb_fault_map* @get_tfm_for_cpu(%struct.gru_state*, i32) #1

declare dso_local i32 @gru_cpu_fault_map_id(...) #1

declare dso_local i32 @prefetchw(%struct.gru_tlb_fault_map*) #1

declare dso_local i64 @BITS_TO_LONGS(i32) #1

declare dso_local i64 @xchg(i64*, i64) #1

declare dso_local i32 @gru_flush_cache(%struct.gru_tlb_fault_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
