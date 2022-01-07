; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_create_page_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_create_page_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_pool = type { i32 }
%struct.cpsw_common = type { i32 }
%struct.page_pool_params = type { i32, i32, i32, i32, i32, i64 }

@PP_FLAG_DMA_MAP = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot create rx page pool\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page_pool* (%struct.cpsw_common*, i32)* @cpsw_create_page_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page_pool* @cpsw_create_page_pool(%struct.cpsw_common* %0, i32 %1) #0 {
  %3 = alloca %struct.cpsw_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page_pool_params, align 8
  %6 = alloca %struct.page_pool*, align 8
  store %struct.cpsw_common* %0, %struct.cpsw_common** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds %struct.page_pool_params, %struct.page_pool_params* %5, i32 0, i32 5
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @PP_FLAG_DMA_MAP, align 4
  %9 = getelementptr inbounds %struct.page_pool_params, %struct.page_pool_params* %5, i32 0, i32 4
  store i32 %8, i32* %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds %struct.page_pool_params, %struct.page_pool_params* %5, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* @NUMA_NO_NODE, align 4
  %13 = getelementptr inbounds %struct.page_pool_params, %struct.page_pool_params* %5, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %15 = getelementptr inbounds %struct.page_pool_params, %struct.page_pool_params* %5, i32 0, i32 2
  store i32 %14, i32* %15, align 8
  %16 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %17 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.page_pool_params, %struct.page_pool_params* %5, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = call %struct.page_pool* @page_pool_create(%struct.page_pool_params* %5)
  store %struct.page_pool* %20, %struct.page_pool** %6, align 8
  %21 = load %struct.page_pool*, %struct.page_pool** %6, align 8
  %22 = call i64 @IS_ERR(%struct.page_pool* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %26 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %24, %2
  %30 = load %struct.page_pool*, %struct.page_pool** %6, align 8
  ret %struct.page_pool* %30
}

declare dso_local %struct.page_pool* @page_pool_create(%struct.page_pool_params*) #1

declare dso_local i64 @IS_ERR(%struct.page_pool*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
