; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_pool_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_pool_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mvpp2 = type { i32 }
%struct.mvpp2_bm_pool = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"cannot free all buffers in pool %d, buf_num left %d\0A\00", align 1
@MVPP2_BM_STOP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.mvpp2*, %struct.mvpp2_bm_pool*)* @mvpp2_bm_pool_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_bm_pool_destroy(%struct.device* %0, %struct.mvpp2* %1, %struct.mvpp2_bm_pool* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mvpp2*, align 8
  %7 = alloca %struct.mvpp2_bm_pool*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.mvpp2* %1, %struct.mvpp2** %6, align 8
  store %struct.mvpp2_bm_pool* %2, %struct.mvpp2_bm_pool** %7, align 8
  %10 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %11 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %7, align 8
  %12 = call i32 @mvpp2_check_hw_buf_num(%struct.mvpp2* %10, %struct.mvpp2_bm_pool* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %15 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @mvpp2_bm_bufs_free(%struct.device* %13, %struct.mvpp2* %14, %struct.mvpp2_bm_pool* %15, i32 %16)
  %18 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %19 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %7, align 8
  %20 = call i32 @mvpp2_check_hw_buf_num(%struct.mvpp2* %18, %struct.mvpp2_bm_pool* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %7, align 8
  %25 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %7, align 8
  %28 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  store i32 0, i32* %4, align 4
  br label %59

31:                                               ; preds = %3
  %32 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %33 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %7, align 8
  %34 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @MVPP2_BM_POOL_CTRL_REG(i32 %35)
  %37 = call i32 @mvpp2_read(%struct.mvpp2* %32, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @MVPP2_BM_STOP_MASK, align 4
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %42 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %7, align 8
  %43 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @MVPP2_BM_POOL_CTRL_REG(i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @mvpp2_write(%struct.mvpp2* %41, i32 %45, i32 %46)
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %7, align 8
  %50 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %7, align 8
  %53 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %7, align 8
  %56 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dma_free_coherent(%struct.device* %48, i32 %51, i32 %54, i32 %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %31, %23
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @mvpp2_check_hw_buf_num(%struct.mvpp2*, %struct.mvpp2_bm_pool*) #1

declare dso_local i32 @mvpp2_bm_bufs_free(%struct.device*, %struct.mvpp2*, %struct.mvpp2_bm_pool*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @mvpp2_read(%struct.mvpp2*, i32) #1

declare dso_local i32 @MVPP2_BM_POOL_CTRL_REG(i32) #1

declare dso_local i32 @mvpp2_write(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
