; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_other_pq_map_rt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_other_pq_map_rt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }

@QM_REG_PQOTHER2PF_0_RT_OFFSET = common dso_local global i64 0, align 8
@QM_REG_MAXPQSIZE_2_RT_OFFSET = common dso_local global i64 0, align 8
@QM_PF_QUEUE_GROUP_SIZE = common dso_local global i64 0, align 8
@QM_OTHER_PQS_PER_PF = common dso_local global i64 0, align 8
@QM_REG_BASEADDROTHERPQ_RT_OFFSET = common dso_local global i64 0, align 8
@QM_REG_PTRTBLOTHER_RT_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, i64, i32, i64, i64, i64)* @qed_other_pq_map_rt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_other_pq_map_rt_init(%struct.qed_hwfn* %0, i64 %1, i32 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %19, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = add nsw i64 %21, %22
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = call i64 @QM_PQ_MEM_4KB(i64 %24)
  store i64 %25, i64* %14, align 8
  %26 = load i64, i64* %12, align 8
  store i64 %26, i64* %15, align 8
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %28 = load i64, i64* @QM_REG_PQOTHER2PF_0_RT_OFFSET, align 8
  %29 = load i64, i64* %19, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %27, i64 %30, i64 %31)
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %34 = load i64, i64* @QM_REG_MAXPQSIZE_2_RT_OFFSET, align 8
  %35 = load i64, i64* %13, align 8
  %36 = call i64 @QM_PQ_SIZE_256B(i64 %35)
  %37 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %33, i64 %34, i64 %36)
  store i64 0, i64* %16, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @QM_PF_QUEUE_GROUP_SIZE, align 8
  %40 = mul nsw i64 %38, %39
  store i64 %40, i64* %18, align 8
  br label %41

41:                                               ; preds = %75, %6
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* @QM_OTHER_PQS_PER_PF, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %80

45:                                               ; preds = %41
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %47 = load i64, i64* @QM_REG_BASEADDROTHERPQ_RT_OFFSET, align 8
  %48 = load i64, i64* %18, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i64, i64* %15, align 8
  %51 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %46, i64 %49, i64 %50)
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %45
  store i64 0, i64* %17, align 8
  br label %55

55:                                               ; preds = %67, %54
  %56 = load i64, i64* %17, align 8
  %57 = icmp slt i64 %56, 2
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %60 = load i64, i64* @QM_REG_PTRTBLOTHER_RT_OFFSET, align 8
  %61 = load i64, i64* %18, align 8
  %62 = mul nsw i64 %61, 2
  %63 = add nsw i64 %60, %62
  %64 = load i64, i64* %17, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %59, i64 %65, i64 0)
  br label %67

67:                                               ; preds = %58
  %68 = load i64, i64* %17, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %17, align 8
  br label %55

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %45
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %15, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %15, align 8
  br label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %16, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %16, align 8
  %78 = load i64, i64* %18, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %18, align 8
  br label %41

80:                                               ; preds = %41
  ret void
}

declare dso_local i64 @QM_PQ_MEM_4KB(i64) #1

declare dso_local i32 @STORE_RT_REG(%struct.qed_hwfn*, i64, i64) #1

declare dso_local i64 @QM_PQ_SIZE_256B(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
