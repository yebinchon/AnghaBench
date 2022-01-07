; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_release_rx_pools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_release_rx_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, %struct.ibmvnic_rx_pool*, i32 }
%struct.ibmvnic_rx_pool = type { i32, %struct.ibmvnic_rx_pool*, i32*, i32, %struct.ibmvnic_rx_pool* }

@.str = private unnamed_addr constant [23 x i8] c"Releasing rx_pool[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvnic_adapter*)* @release_rx_pools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_rx_pools(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca %struct.ibmvnic_adapter*, align 8
  %3 = alloca %struct.ibmvnic_rx_pool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %2, align 8
  %6 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %6, i32 0, i32 1
  %8 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %7, align 8
  %9 = icmp ne %struct.ibmvnic_rx_pool* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %98

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %86, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %89

18:                                               ; preds = %12
  %19 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %19, i32 0, i32 1
  %21 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %21, i64 %23
  store %struct.ibmvnic_rx_pool* %24, %struct.ibmvnic_rx_pool** %3, align 8
  %25 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @netdev_dbg(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %3, align 8
  %31 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %30, i32 0, i32 4
  %32 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %31, align 8
  %33 = call i32 @kfree(%struct.ibmvnic_rx_pool* %32)
  %34 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %35 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %3, align 8
  %36 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %35, i32 0, i32 3
  %37 = call i32 @free_long_term_buff(%struct.ibmvnic_adapter* %34, i32* %36)
  %38 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %3, align 8
  %39 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %38, i32 0, i32 1
  %40 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %39, align 8
  %41 = icmp ne %struct.ibmvnic_rx_pool* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %18
  br label %86

43:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %78, %43
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %3, align 8
  %47 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %44
  %51 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %3, align 8
  %52 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %51, i32 0, i32 1
  %53 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %53, i64 %55
  %57 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %77

60:                                               ; preds = %50
  %61 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %3, align 8
  %62 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %61, i32 0, i32 1
  %63 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %63, i64 %65
  %67 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @dev_kfree_skb_any(i32* %68)
  %70 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %3, align 8
  %71 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %70, i32 0, i32 1
  %72 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %72, i64 %74
  %76 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %75, i32 0, i32 2
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %60, %50
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %44

81:                                               ; preds = %44
  %82 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %3, align 8
  %83 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %82, i32 0, i32 1
  %84 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %83, align 8
  %85 = call i32 @kfree(%struct.ibmvnic_rx_pool* %84)
  br label %86

86:                                               ; preds = %81, %42
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %12

89:                                               ; preds = %12
  %90 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %91 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %90, i32 0, i32 1
  %92 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %91, align 8
  %93 = call i32 @kfree(%struct.ibmvnic_rx_pool* %92)
  %94 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %95 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %94, i32 0, i32 1
  store %struct.ibmvnic_rx_pool* null, %struct.ibmvnic_rx_pool** %95, align 8
  %96 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %97 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  br label %98

98:                                               ; preds = %89, %10
  ret void
}

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.ibmvnic_rx_pool*) #1

declare dso_local i32 @free_long_term_buff(%struct.ibmvnic_adapter*, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
