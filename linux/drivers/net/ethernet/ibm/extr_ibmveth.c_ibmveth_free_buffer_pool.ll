; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_free_buffer_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_free_buffer_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmveth_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ibmveth_buff_pool = type { i32, %struct.sk_buff**, %struct.sk_buff**, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmveth_adapter*, %struct.ibmveth_buff_pool*)* @ibmveth_free_buffer_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmveth_free_buffer_pool(%struct.ibmveth_adapter* %0, %struct.ibmveth_buff_pool* %1) #0 {
  %3 = alloca %struct.ibmveth_adapter*, align 8
  %4 = alloca %struct.ibmveth_buff_pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.ibmveth_adapter* %0, %struct.ibmveth_adapter** %3, align 8
  store %struct.ibmveth_buff_pool* %1, %struct.ibmveth_buff_pool** %4, align 8
  %7 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %8 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %7, i32 0, i32 4
  %9 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  %10 = call i32 @kfree(%struct.sk_buff** %9)
  %11 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %12 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %11, i32 0, i32 4
  store %struct.sk_buff** null, %struct.sk_buff*** %12, align 8
  %13 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %14 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %13, i32 0, i32 1
  %15 = load %struct.sk_buff**, %struct.sk_buff*** %14, align 8
  %16 = icmp ne %struct.sk_buff** %15, null
  br i1 %16, label %17, label %69

17:                                               ; preds = %2
  %18 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %19 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %18, i32 0, i32 2
  %20 = load %struct.sk_buff**, %struct.sk_buff*** %19, align 8
  %21 = icmp ne %struct.sk_buff** %20, null
  br i1 %21, label %22, label %69

22:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %65, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %26 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %68

29:                                               ; preds = %23
  %30 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %31 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %30, i32 0, i32 1
  %32 = load %struct.sk_buff**, %struct.sk_buff*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %32, i64 %34
  %36 = load %struct.sk_buff*, %struct.sk_buff** %35, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %6, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %39, label %64

39:                                               ; preds = %29
  %40 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %45 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %44, i32 0, i32 2
  %46 = load %struct.sk_buff**, %struct.sk_buff*** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %46, i64 %48
  %50 = load %struct.sk_buff*, %struct.sk_buff** %49, align 8
  %51 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %52 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %55 = call i32 @dma_unmap_single(i32* %43, %struct.sk_buff* %50, i32 %53, i32 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %56)
  %58 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %59 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %58, i32 0, i32 1
  %60 = load %struct.sk_buff**, %struct.sk_buff*** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %60, i64 %62
  store %struct.sk_buff* null, %struct.sk_buff** %63, align 8
  br label %64

64:                                               ; preds = %39, %29
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %23

68:                                               ; preds = %23
  br label %69

69:                                               ; preds = %68, %17, %2
  %70 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %71 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %70, i32 0, i32 2
  %72 = load %struct.sk_buff**, %struct.sk_buff*** %71, align 8
  %73 = icmp ne %struct.sk_buff** %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %76 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %75, i32 0, i32 2
  %77 = load %struct.sk_buff**, %struct.sk_buff*** %76, align 8
  %78 = call i32 @kfree(%struct.sk_buff** %77)
  %79 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %80 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %79, i32 0, i32 2
  store %struct.sk_buff** null, %struct.sk_buff*** %80, align 8
  br label %81

81:                                               ; preds = %74, %69
  %82 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %83 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %82, i32 0, i32 1
  %84 = load %struct.sk_buff**, %struct.sk_buff*** %83, align 8
  %85 = icmp ne %struct.sk_buff** %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %88 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %87, i32 0, i32 1
  %89 = load %struct.sk_buff**, %struct.sk_buff*** %88, align 8
  %90 = call i32 @kfree(%struct.sk_buff** %89)
  %91 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %92 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %91, i32 0, i32 1
  store %struct.sk_buff** null, %struct.sk_buff*** %92, align 8
  br label %93

93:                                               ; preds = %86, %81
  ret void
}

declare dso_local i32 @kfree(%struct.sk_buff**) #1

declare dso_local i32 @dma_unmap_single(i32*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
