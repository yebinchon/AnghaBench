; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_chain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_chain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_chain = type { i32 }
%struct.qed_chain_ext_pbl = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Cannot allocate a chain with the given arguments:\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"[use_mode %d, mode %d, cnt_type %d, num_elems %d, elem_size %zu]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_chain_alloc(%struct.qed_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, %struct.qed_chain* %6, %struct.qed_chain_ext_pbl* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.qed_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.qed_chain*, align 8
  %17 = alloca %struct.qed_chain_ext_pbl*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store %struct.qed_chain* %6, %struct.qed_chain** %16, align 8
  store %struct.qed_chain_ext_pbl* %7, %struct.qed_chain_ext_pbl** %17, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp eq i32 %20, 128
  br i1 %21, label %22, label %23

22:                                               ; preds = %8
  store i32 1, i32* %18, align 4
  br label %28

23:                                               ; preds = %8
  %24 = load i32, i32* %14, align 4
  %25 = load i64, i64* %15, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @QED_CHAIN_PAGE_CNT(i32 %24, i64 %25, i32 %26)
  store i32 %27, i32* %18, align 4
  br label %28

28:                                               ; preds = %23, %22
  %29 = load %struct.qed_dev*, %struct.qed_dev** %10, align 8
  %30 = load i32, i32* %13, align 4
  %31 = load i64, i64* %15, align 8
  %32 = load i32, i32* %18, align 4
  %33 = call i32 @qed_chain_alloc_sanity_check(%struct.qed_dev* %29, i32 %30, i64 %31, i32 %32)
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %19, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %28
  %37 = load %struct.qed_dev*, %struct.qed_dev** %10, align 8
  %38 = call i32 (%struct.qed_dev*, i8*, ...) @DP_NOTICE(%struct.qed_dev* %37, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.qed_dev*, %struct.qed_dev** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i64, i64* %15, align 8
  %45 = call i32 (%struct.qed_dev*, i8*, ...) @DP_NOTICE(%struct.qed_dev* %39, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41, i32 %42, i32 %43, i64 %44)
  %46 = load i32, i32* %19, align 4
  store i32 %46, i32* %9, align 4
  br label %80

47:                                               ; preds = %28
  %48 = load %struct.qed_chain*, %struct.qed_chain** %16, align 8
  %49 = load i32, i32* %18, align 4
  %50 = load i64, i64* %15, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @qed_chain_init_params(%struct.qed_chain* %48, i32 %49, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %12, align 4
  switch i32 %56, label %70 [
    i32 130, label %57
    i32 128, label %61
    i32 129, label %65
  ]

57:                                               ; preds = %47
  %58 = load %struct.qed_dev*, %struct.qed_dev** %10, align 8
  %59 = load %struct.qed_chain*, %struct.qed_chain** %16, align 8
  %60 = call i32 @qed_chain_alloc_next_ptr(%struct.qed_dev* %58, %struct.qed_chain* %59)
  store i32 %60, i32* %19, align 4
  br label %70

61:                                               ; preds = %47
  %62 = load %struct.qed_dev*, %struct.qed_dev** %10, align 8
  %63 = load %struct.qed_chain*, %struct.qed_chain** %16, align 8
  %64 = call i32 @qed_chain_alloc_single(%struct.qed_dev* %62, %struct.qed_chain* %63)
  store i32 %64, i32* %19, align 4
  br label %70

65:                                               ; preds = %47
  %66 = load %struct.qed_dev*, %struct.qed_dev** %10, align 8
  %67 = load %struct.qed_chain*, %struct.qed_chain** %16, align 8
  %68 = load %struct.qed_chain_ext_pbl*, %struct.qed_chain_ext_pbl** %17, align 8
  %69 = call i32 @qed_chain_alloc_pbl(%struct.qed_dev* %66, %struct.qed_chain* %67, %struct.qed_chain_ext_pbl* %68)
  store i32 %69, i32* %19, align 4
  br label %70

70:                                               ; preds = %47, %65, %61, %57
  %71 = load i32, i32* %19, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %75

74:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  br label %80

75:                                               ; preds = %73
  %76 = load %struct.qed_dev*, %struct.qed_dev** %10, align 8
  %77 = load %struct.qed_chain*, %struct.qed_chain** %16, align 8
  %78 = call i32 @qed_chain_free(%struct.qed_dev* %76, %struct.qed_chain* %77)
  %79 = load i32, i32* %19, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %75, %74, %36
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local i32 @QED_CHAIN_PAGE_CNT(i32, i64, i32) #1

declare dso_local i32 @qed_chain_alloc_sanity_check(%struct.qed_dev*, i32, i64, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*, ...) #1

declare dso_local i32 @qed_chain_init_params(%struct.qed_chain*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @qed_chain_alloc_next_ptr(%struct.qed_dev*, %struct.qed_chain*) #1

declare dso_local i32 @qed_chain_alloc_single(%struct.qed_dev*, %struct.qed_chain*) #1

declare dso_local i32 @qed_chain_alloc_pbl(%struct.qed_dev*, %struct.qed_chain*, %struct.qed_chain_ext_pbl*) #1

declare dso_local i32 @qed_chain_free(%struct.qed_dev*, %struct.qed_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
