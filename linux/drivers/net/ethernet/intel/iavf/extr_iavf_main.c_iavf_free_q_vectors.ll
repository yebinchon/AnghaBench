; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_free_q_vectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_free_q_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, i32, %struct.iavf_q_vector* }
%struct.iavf_q_vector = type { i32 }

@NONQ_VECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_adapter*)* @iavf_free_q_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_free_q_vectors(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iavf_q_vector*, align 8
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %7 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %7, i32 0, i32 2
  %9 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %8, align 8
  %10 = icmp ne %struct.iavf_q_vector* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %50

12:                                               ; preds = %1
  %13 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @NONQ_VECS, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %40, %12
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %26, i32 0, i32 2
  %28 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %28, i64 %30
  store %struct.iavf_q_vector* %31, %struct.iavf_q_vector** %6, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %6, align 8
  %37 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %36, i32 0, i32 0
  %38 = call i32 @netif_napi_del(i32* %37)
  br label %39

39:                                               ; preds = %35, %25
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %21

43:                                               ; preds = %21
  %44 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %44, i32 0, i32 2
  %46 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %45, align 8
  %47 = call i32 @kfree(%struct.iavf_q_vector* %46)
  %48 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %48, i32 0, i32 2
  store %struct.iavf_q_vector* null, %struct.iavf_q_vector** %49, align 8
  br label %50

50:                                               ; preds = %43, %11
  ret void
}

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @kfree(%struct.iavf_q_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
