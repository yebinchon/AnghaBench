; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta_bm.c_mvneta_bm_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta_bm.c_mvneta_bm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mvneta_bm = type { i32, %struct.mvneta_bm_pool* }
%struct.mvneta_bm_pool = type { i32 }

@MVNETA_BM_POOLS_NUM = common dso_local global i32 0, align 4
@MVNETA_BM_COMMAND_REG = common dso_local global i32 0, align 4
@MVNETA_BM_STOP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mvneta_bm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_bm_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mvneta_bm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mvneta_bm_pool*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.mvneta_bm* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.mvneta_bm* %8, %struct.mvneta_bm** %3, align 8
  store i32 255, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MVNETA_BM_POOLS_NUM, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load %struct.mvneta_bm*, %struct.mvneta_bm** %3, align 8
  %15 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %14, i32 0, i32 1
  %16 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %16, i64 %18
  store %struct.mvneta_bm_pool* %19, %struct.mvneta_bm_pool** %6, align 8
  %20 = load %struct.mvneta_bm*, %struct.mvneta_bm** %3, align 8
  %21 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %6, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @mvneta_bm_pool_destroy(%struct.mvneta_bm* %20, %struct.mvneta_bm_pool* %21, i32 %22)
  br label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %9

27:                                               ; preds = %9
  %28 = load %struct.mvneta_bm*, %struct.mvneta_bm** %3, align 8
  %29 = call i32 @mvneta_bm_put_sram(%struct.mvneta_bm* %28)
  %30 = load %struct.mvneta_bm*, %struct.mvneta_bm** %3, align 8
  %31 = load i32, i32* @MVNETA_BM_COMMAND_REG, align 4
  %32 = load i32, i32* @MVNETA_BM_STOP_MASK, align 4
  %33 = call i32 @mvneta_bm_write(%struct.mvneta_bm* %30, i32 %31, i32 %32)
  %34 = load %struct.mvneta_bm*, %struct.mvneta_bm** %3, align 8
  %35 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @clk_disable_unprepare(i32 %36)
  ret i32 0
}

declare dso_local %struct.mvneta_bm* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mvneta_bm_pool_destroy(%struct.mvneta_bm*, %struct.mvneta_bm_pool*, i32) #1

declare dso_local i32 @mvneta_bm_put_sram(%struct.mvneta_bm*) #1

declare dso_local i32 @mvneta_bm_write(%struct.mvneta_bm*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
