; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_reset_rx_pools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_reset_rx_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, %struct.ibmvnic_rx_pool*, %struct.TYPE_2__* }
%struct.ibmvnic_rx_pool = type { i32, i32, i32*, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Re-setting rx_pool[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*)* @reset_rx_pools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_rx_pools(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca %struct.ibmvnic_rx_pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %3, align 8
  %10 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = bitcast %struct.TYPE_2__* %12 to i32*
  %14 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @be32_to_cpu(i32 %18)
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %13, i64 %20
  store i32* %21, i32** %9, align 8
  %22 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be32_to_cpu(i32 %26)
  store i32 %27, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %126, %1
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %129

32:                                               ; preds = %28
  %33 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %33, i32 0, i32 1
  %35 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %35, i64 %37
  store %struct.ibmvnic_rx_pool* %38, %struct.ibmvnic_rx_pool** %4, align 8
  %39 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @netdev_dbg(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %4, align 8
  %45 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @be64_to_cpu(i32 %51)
  %53 = icmp ne i32 %46, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %32
  %55 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %56 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %4, align 8
  %57 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %56, i32 0, i32 8
  %58 = call i32 @free_long_term_buff(%struct.ibmvnic_adapter* %55, i32* %57)
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @be64_to_cpu(i32 %63)
  %65 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %4, align 8
  %66 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %68 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %4, align 8
  %69 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %68, i32 0, i32 8
  %70 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %4, align 8
  %71 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %4, align 8
  %74 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %72, %75
  %77 = call i32 @alloc_long_term_buff(%struct.ibmvnic_adapter* %67, i32* %69, i32 %76)
  store i32 %77, i32* %8, align 4
  br label %83

78:                                               ; preds = %32
  %79 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %80 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %4, align 8
  %81 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %80, i32 0, i32 8
  %82 = call i32 @reset_long_term_buff(%struct.ibmvnic_adapter* %79, i32* %81)
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %78, %54
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %2, align 4
  br label %130

88:                                               ; preds = %83
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %103, %88
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %4, align 8
  %92 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %89
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %4, align 8
  %98 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %96, i32* %102, align 4
  br label %103

103:                                              ; preds = %95
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %89

106:                                              ; preds = %89
  %107 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %4, align 8
  %108 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %4, align 8
  %111 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 4
  %115 = trunc i64 %114 to i32
  %116 = call i32 @memset(i32 %109, i32 0, i32 %115)
  %117 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %4, align 8
  %118 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %117, i32 0, i32 6
  %119 = call i32 @atomic_set(i32* %118, i32 0)
  %120 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %4, align 8
  %121 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %120, i32 0, i32 5
  store i64 0, i64* %121, align 8
  %122 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %4, align 8
  %123 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %122, i32 0, i32 4
  store i64 0, i64* %123, align 8
  %124 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %4, align 8
  %125 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %124, i32 0, i32 3
  store i32 1, i32* %125, align 8
  br label %126

126:                                              ; preds = %106
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %28

129:                                              ; preds = %28
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %129, %86
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @free_long_term_buff(%struct.ibmvnic_adapter*, i32*) #1

declare dso_local i32 @alloc_long_term_buff(%struct.ibmvnic_adapter*, i32*, i32) #1

declare dso_local i32 @reset_long_term_buff(%struct.ibmvnic_adapter*, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
