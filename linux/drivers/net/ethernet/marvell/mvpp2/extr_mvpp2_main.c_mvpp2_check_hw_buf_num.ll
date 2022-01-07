; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_check_hw_buf_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_check_hw_buf_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_bm_pool = type { i32 }

@MVPP22_BM_POOL_PTRS_NUM_MASK = common dso_local global i32 0, align 4
@MVPP2_BM_BPPI_PTR_NUM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2*, %struct.mvpp2_bm_pool*)* @mvpp2_check_hw_buf_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_check_hw_buf_num(%struct.mvpp2* %0, %struct.mvpp2_bm_pool* %1) #0 {
  %3 = alloca %struct.mvpp2*, align 8
  %4 = alloca %struct.mvpp2_bm_pool*, align 8
  %5 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %3, align 8
  store %struct.mvpp2_bm_pool* %1, %struct.mvpp2_bm_pool** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %7 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %4, align 8
  %8 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @MVPP2_BM_POOL_PTRS_NUM_REG(i32 %9)
  %11 = call i32 @mvpp2_read(%struct.mvpp2* %6, i32 %10)
  %12 = load i32, i32* @MVPP22_BM_POOL_PTRS_NUM_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %17 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %4, align 8
  %18 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @MVPP2_BM_BPPI_PTRS_NUM_REG(i32 %19)
  %21 = call i32 @mvpp2_read(%struct.mvpp2* %16, i32 %20)
  %22 = load i32, i32* @MVPP2_BM_BPPI_PTR_NUM_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %2
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @mvpp2_read(%struct.mvpp2*, i32) #1

declare dso_local i32 @MVPP2_BM_POOL_PTRS_NUM_REG(i32) #1

declare dso_local i32 @MVPP2_BM_BPPI_PTRS_NUM_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
