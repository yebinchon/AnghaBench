; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_get_rdma_assert_ram_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_get_rdma_assert_ram_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }

@TSEM_REG_FAST_MEMORY = common dso_local global i64 0, align 8
@SEM_FAST_REG_INT_RAM = common dso_local global i64 0, align 8
@MSEM_REG_FAST_MEMORY = common dso_local global i64 0, align 8
@USEM_REG_FAST_MEMORY = common dso_local global i64 0, align 8
@XSEM_REG_FAST_MEMORY = common dso_local global i64 0, align 8
@YSEM_REG_FAST_MEMORY = common dso_local global i64 0, align 8
@PSEM_REG_FAST_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qed_hwfn*, i32)* @qed_get_rdma_assert_ram_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qed_get_rdma_assert_ram_addr(%struct.qed_hwfn* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %61 [
    i32 0, label %7
    i32 1, label %16
    i32 2, label %25
    i32 3, label %34
    i32 4, label %43
    i32 5, label %52
  ]

7:                                                ; preds = %2
  %8 = load i64, i64* @TSEM_REG_FAST_MEMORY, align 8
  %9 = load i64, i64* @SEM_FAST_REG_INT_RAM, align 8
  %10 = add nsw i64 %8, %9
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %12 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @TSTORM_RDMA_ASSERT_LEVEL_OFFSET(i32 %13)
  %15 = add nsw i64 %10, %14
  store i64 %15, i64* %3, align 8
  br label %62

16:                                               ; preds = %2
  %17 = load i64, i64* @MSEM_REG_FAST_MEMORY, align 8
  %18 = load i64, i64* @SEM_FAST_REG_INT_RAM, align 8
  %19 = add nsw i64 %17, %18
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %21 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @MSTORM_RDMA_ASSERT_LEVEL_OFFSET(i32 %22)
  %24 = add nsw i64 %19, %23
  store i64 %24, i64* %3, align 8
  br label %62

25:                                               ; preds = %2
  %26 = load i64, i64* @USEM_REG_FAST_MEMORY, align 8
  %27 = load i64, i64* @SEM_FAST_REG_INT_RAM, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %30 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @USTORM_RDMA_ASSERT_LEVEL_OFFSET(i32 %31)
  %33 = add nsw i64 %28, %32
  store i64 %33, i64* %3, align 8
  br label %62

34:                                               ; preds = %2
  %35 = load i64, i64* @XSEM_REG_FAST_MEMORY, align 8
  %36 = load i64, i64* @SEM_FAST_REG_INT_RAM, align 8
  %37 = add nsw i64 %35, %36
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %39 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @XSTORM_RDMA_ASSERT_LEVEL_OFFSET(i32 %40)
  %42 = add nsw i64 %37, %41
  store i64 %42, i64* %3, align 8
  br label %62

43:                                               ; preds = %2
  %44 = load i64, i64* @YSEM_REG_FAST_MEMORY, align 8
  %45 = load i64, i64* @SEM_FAST_REG_INT_RAM, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %48 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @YSTORM_RDMA_ASSERT_LEVEL_OFFSET(i32 %49)
  %51 = add nsw i64 %46, %50
  store i64 %51, i64* %3, align 8
  br label %62

52:                                               ; preds = %2
  %53 = load i64, i64* @PSEM_REG_FAST_MEMORY, align 8
  %54 = load i64, i64* @SEM_FAST_REG_INT_RAM, align 8
  %55 = add nsw i64 %53, %54
  %56 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %57 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @PSTORM_RDMA_ASSERT_LEVEL_OFFSET(i32 %58)
  %60 = add nsw i64 %55, %59
  store i64 %60, i64* %3, align 8
  br label %62

61:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %62

62:                                               ; preds = %61, %52, %43, %34, %25, %16, %7
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i64 @TSTORM_RDMA_ASSERT_LEVEL_OFFSET(i32) #1

declare dso_local i64 @MSTORM_RDMA_ASSERT_LEVEL_OFFSET(i32) #1

declare dso_local i64 @USTORM_RDMA_ASSERT_LEVEL_OFFSET(i32) #1

declare dso_local i64 @XSTORM_RDMA_ASSERT_LEVEL_OFFSET(i32) #1

declare dso_local i64 @YSTORM_RDMA_ASSERT_LEVEL_OFFSET(i32) #1

declare dso_local i64 @PSTORM_RDMA_ASSERT_LEVEL_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
