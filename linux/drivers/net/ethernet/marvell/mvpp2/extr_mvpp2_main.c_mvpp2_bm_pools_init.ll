; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_pools_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_pools_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mvpp2 = type { %struct.mvpp2_bm_pool*, i64 }
%struct.mvpp2_bm_pool = type { i32 }

@MVPP2_BM_POOLS_NUM = common dso_local global i32 0, align 4
@MVPP2_BM_POOL_SIZE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to create BM pool %d, size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.mvpp2*)* @mvpp2_bm_pools_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_bm_pools_init(%struct.device* %0, %struct.mvpp2* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mvpp2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mvpp2_bm_pool*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.mvpp2* %1, %struct.mvpp2** %5, align 8
  %11 = load i32, i32* @MVPP2_BM_POOLS_NUM, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %13 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %18 = call i32 @mvpp2_get_nrxqs(%struct.mvpp2* %17)
  %19 = mul nsw i32 %18, 2
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32, i32* @MVPP2_BM_POOL_SIZE_MAX, align 4
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %48, %20
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %28 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %27, i32 0, i32 0
  %29 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %29, i64 %31
  store %struct.mvpp2_bm_pool* %32, %struct.mvpp2_bm_pool** %10, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %10, align 8
  %35 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %38 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %10, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @mvpp2_bm_pool_create(%struct.device* %36, %struct.mvpp2* %37, %struct.mvpp2_bm_pool* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  br label %52

44:                                               ; preds = %26
  %45 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %46 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %10, align 8
  %47 = call i32 @mvpp2_bm_pool_bufsize_set(%struct.mvpp2* %45, %struct.mvpp2_bm_pool* %46, i32 0)
  br label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %22

51:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %77

52:                                               ; preds = %43
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %72, %52
  %60 = load i32, i32* %6, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %65 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %66 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %65, i32 0, i32 0
  %67 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %67, i64 %69
  %71 = call i32 @mvpp2_bm_pool_destroy(%struct.device* %63, %struct.mvpp2* %64, %struct.mvpp2_bm_pool* %70)
  br label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %6, align 4
  br label %59

75:                                               ; preds = %59
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %51
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @mvpp2_get_nrxqs(%struct.mvpp2*) #1

declare dso_local i32 @mvpp2_bm_pool_create(%struct.device*, %struct.mvpp2*, %struct.mvpp2_bm_pool*, i32) #1

declare dso_local i32 @mvpp2_bm_pool_bufsize_set(%struct.mvpp2*, %struct.mvpp2_bm_pool*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @mvpp2_bm_pool_destroy(%struct.device*, %struct.mvpp2*, %struct.mvpp2_bm_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
