; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_infer_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_infer_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_shared_private = type { i32, i32, i64 }

@SDMA_CONFIG = common dso_local global i64 0, align 8
@TX_BW_MTU_MOVED = common dso_local global i64 0, align 8
@TX_BW_CONTROL_NEW_LAYOUT = common dso_local global i32 0, align 4
@TX_BW_RATE = common dso_local global i64 0, align 8
@TX_BW_CONTROL_OLD_LAYOUT = common dso_local global i32 0, align 4
@TX_BW_CONTROL_ABSENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv643xx_eth_shared_private*)* @infer_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @infer_hw_params(%struct.mv643xx_eth_shared_private* %0) #0 {
  %2 = alloca %struct.mv643xx_eth_shared_private*, align 8
  store %struct.mv643xx_eth_shared_private* %0, %struct.mv643xx_eth_shared_private** %2, align 8
  %3 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %2, align 8
  %4 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, 1024
  %7 = load i64, i64* @SDMA_CONFIG, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writel(i32 33554432, i64 %8)
  %10 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %2, align 8
  %11 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 1024
  %14 = load i64, i64* @SDMA_CONFIG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  %17 = and i32 %16, 33554432
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %2, align 8
  %21 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %2, align 8
  %24 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %2, align 8
  %27 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1024
  %30 = load i64, i64* @TX_BW_MTU_MOVED, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 1, i64 %31)
  %33 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %2, align 8
  %34 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1024
  %37 = load i64, i64* @TX_BW_MTU_MOVED, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl(i64 %38)
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %25
  %43 = load i32, i32* @TX_BW_CONTROL_NEW_LAYOUT, align 4
  %44 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %2, align 8
  %45 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %72

46:                                               ; preds = %25
  %47 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %2, align 8
  %48 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1024
  %51 = load i64, i64* @TX_BW_RATE, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 7, i64 %52)
  %54 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %2, align 8
  %55 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1024
  %58 = load i64, i64* @TX_BW_RATE, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readl(i64 %59)
  %61 = and i32 %60, 7
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %46
  %64 = load i32, i32* @TX_BW_CONTROL_OLD_LAYOUT, align 4
  %65 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %2, align 8
  %66 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %71

67:                                               ; preds = %46
  %68 = load i32, i32* @TX_BW_CONTROL_ABSENT, align 4
  %69 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %2, align 8
  %70 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71, %42
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
