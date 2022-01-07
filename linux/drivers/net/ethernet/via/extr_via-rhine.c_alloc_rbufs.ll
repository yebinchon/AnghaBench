; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_alloc_rbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_alloc_rbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rhine_private = type { i32, i32, %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i8*, i8*, i64 }
%struct.rhine_skb_dma = type { i32 }

@PKT_BUF_SZ = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @alloc_rbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_rbufs(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rhine_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rhine_skb_dma, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.rhine_private* @netdev_priv(%struct.net_device* %8)
  store %struct.rhine_private* %9, %struct.rhine_private** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sle i32 %12, 1500
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @PKT_BUF_SZ, align 4
  br label %21

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 32
  br label %21

21:                                               ; preds = %16, %14
  %22 = phi i32 [ %15, %14 ], [ %20, %16 ]
  %23 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %24 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %26 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %70, %21
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @RX_RING_SIZE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %73

32:                                               ; preds = %28
  %33 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %34 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %41 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %45 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i8* %43, i8** %50, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %58 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i8* %56, i8** %63, align 8
  %64 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %65 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %64, i32 0, i32 3
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %32
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %28

73:                                               ; preds = %28
  %74 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %75 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @cpu_to_le32(i32 %76)
  %78 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %79 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i8* %77, i8** %85, align 8
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %102, %73
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @RX_RING_SIZE, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %86
  %91 = load %struct.net_device*, %struct.net_device** %2, align 8
  %92 = call i32 @rhine_skb_dma_init(%struct.net_device* %91, %struct.rhine_skb_dma* %7)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.net_device*, %struct.net_device** %2, align 8
  %97 = call i32 @free_rbufs(%struct.net_device* %96)
  br label %108

98:                                               ; preds = %90
  %99 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @rhine_skb_dma_nic_store(%struct.rhine_private* %99, %struct.rhine_skb_dma* %7, i32 %100)
  br label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %86

105:                                              ; preds = %86
  %106 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %107 = call i32 @rhine_reset_rbufs(%struct.rhine_private* %106)
  br label %108

108:                                              ; preds = %105, %95
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.rhine_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @rhine_skb_dma_init(%struct.net_device*, %struct.rhine_skb_dma*) #1

declare dso_local i32 @free_rbufs(%struct.net_device*) #1

declare dso_local i32 @rhine_skb_dma_nic_store(%struct.rhine_private*, %struct.rhine_skb_dma*, i32) #1

declare dso_local i32 @rhine_reset_rbufs(%struct.rhine_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
