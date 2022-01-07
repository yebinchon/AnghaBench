; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_clean_rx_pools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_clean_rx_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, i32, i32, %struct.ibmvnic_rx_pool* }
%struct.ibmvnic_rx_pool = type { %struct.ibmvnic_rx_buff* }
%struct.ibmvnic_rx_buff = type { i32* }

@.str = private unnamed_addr constant [22 x i8] c"Cleaning rx_pool[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvnic_adapter*)* @clean_rx_pools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_rx_pools(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca %struct.ibmvnic_adapter*, align 8
  %3 = alloca %struct.ibmvnic_rx_pool*, align 8
  %4 = alloca %struct.ibmvnic_rx_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %2, align 8
  %9 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %9, i32 0, i32 3
  %11 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %10, align 8
  %12 = icmp ne %struct.ibmvnic_rx_pool* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %79

14:                                               ; preds = %1
  %15 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %76, %14
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %79

25:                                               ; preds = %21
  %26 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %26, i32 0, i32 3
  %28 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %28, i64 %30
  store %struct.ibmvnic_rx_pool* %31, %struct.ibmvnic_rx_pool** %3, align 8
  %32 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %3, align 8
  %33 = icmp ne %struct.ibmvnic_rx_pool* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %3, align 8
  %36 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %35, i32 0, i32 0
  %37 = load %struct.ibmvnic_rx_buff*, %struct.ibmvnic_rx_buff** %36, align 8
  %38 = icmp ne %struct.ibmvnic_rx_buff* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %25
  br label %76

40:                                               ; preds = %34
  %41 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @netdev_dbg(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %72, %40
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %46
  %51 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %3, align 8
  %52 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %51, i32 0, i32 0
  %53 = load %struct.ibmvnic_rx_buff*, %struct.ibmvnic_rx_buff** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ibmvnic_rx_buff, %struct.ibmvnic_rx_buff* %53, i64 %55
  store %struct.ibmvnic_rx_buff* %56, %struct.ibmvnic_rx_buff** %4, align 8
  %57 = load %struct.ibmvnic_rx_buff*, %struct.ibmvnic_rx_buff** %4, align 8
  %58 = icmp ne %struct.ibmvnic_rx_buff* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %50
  %60 = load %struct.ibmvnic_rx_buff*, %struct.ibmvnic_rx_buff** %4, align 8
  %61 = getelementptr inbounds %struct.ibmvnic_rx_buff, %struct.ibmvnic_rx_buff* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.ibmvnic_rx_buff*, %struct.ibmvnic_rx_buff** %4, align 8
  %66 = getelementptr inbounds %struct.ibmvnic_rx_buff, %struct.ibmvnic_rx_buff* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @dev_kfree_skb_any(i32* %67)
  %69 = load %struct.ibmvnic_rx_buff*, %struct.ibmvnic_rx_buff** %4, align 8
  %70 = getelementptr inbounds %struct.ibmvnic_rx_buff, %struct.ibmvnic_rx_buff* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %64, %59, %50
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %46

75:                                               ; preds = %46
  br label %76

76:                                               ; preds = %75, %39
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %21

79:                                               ; preds = %13, %21
  ret void
}

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
