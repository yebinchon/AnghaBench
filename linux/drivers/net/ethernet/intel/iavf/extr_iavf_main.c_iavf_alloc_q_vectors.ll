; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_alloc_q_vectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_alloc_q_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, i32, i32, %struct.iavf_q_vector* }
%struct.iavf_q_vector = type { i32, i32, i32, i32, i32*, %struct.iavf_adapter* }

@NONQ_VECS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cpu_possible_mask = common dso_local global i32 0, align 4
@iavf_napi_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_adapter*)* @iavf_alloc_q_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_alloc_q_vectors(%struct.iavf_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iavf_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iavf_q_vector*, align 8
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @NONQ_VECS, align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.iavf_q_vector* @kcalloc(i32 %12, i32 32, i32 %13)
  %15 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %15, i32 0, i32 3
  store %struct.iavf_q_vector* %14, %struct.iavf_q_vector** %16, align 8
  %17 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %17, i32 0, i32 3
  %19 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %18, align 8
  %20 = icmp ne %struct.iavf_q_vector* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %65

24:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %61, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %25
  %30 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %30, i32 0, i32 3
  %32 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %32, i64 %34
  store %struct.iavf_q_vector* %35, %struct.iavf_q_vector** %6, align 8
  %36 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %37 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %6, align 8
  %38 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %37, i32 0, i32 5
  store %struct.iavf_adapter* %36, %struct.iavf_adapter** %38, align 8
  %39 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %39, i32 0, i32 2
  %41 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %6, align 8
  %42 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %41, i32 0, i32 4
  store i32* %40, i32** %42, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %6, align 8
  %45 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %6, align 8
  %48 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %6, align 8
  %50 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %49, i32 0, i32 3
  %51 = load i32, i32* @cpu_possible_mask, align 4
  %52 = call i32 @cpumask_copy(i32* %50, i32 %51)
  %53 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %6, align 8
  %57 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %56, i32 0, i32 2
  %58 = load i32, i32* @iavf_napi_poll, align 4
  %59 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %60 = call i32 @netif_napi_add(i32 %55, i32* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %29
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %25

64:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %21
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.iavf_q_vector* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @cpumask_copy(i32*, i32) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
