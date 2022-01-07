; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_free_tbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_free_tbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.rhine_private = type { i32**, %struct.TYPE_6__**, i64*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i8*, i64 }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@TXDESC = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @free_tbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_tbufs(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rhine_private*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.rhine_private* @netdev_priv(%struct.net_device* %6)
  store %struct.rhine_private* %7, %struct.rhine_private** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %100, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @TX_RING_SIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %103

16:                                               ; preds = %12
  %17 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %18 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @TXDESC, align 4
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %27 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %26, i32 0, i32 3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i8* %25, i8** %32, align 8
  %33 = call i8* @cpu_to_le32(i32 -1159790384)
  %34 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %35 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %34, i32 0, i32 3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i8* %33, i8** %40, align 8
  %41 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %42 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %43, i64 %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %49, label %87

49:                                               ; preds = %16
  %50 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %51 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %49
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %61 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %60, i32 0, i32 2
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %68 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %69, i64 %71
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @DMA_TO_DEVICE, align 4
  %77 = call i32 @dma_unmap_single(%struct.device* %59, i64 %66, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %58, %49
  %79 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %80 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %81, i64 %83
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = call i32 @dev_kfree_skb(%struct.TYPE_6__* %85)
  br label %87

87:                                               ; preds = %78, %16
  %88 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %89 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %90, i64 %92
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %93, align 8
  %94 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %95 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %94, i32 0, i32 0
  %96 = load i32**, i32*** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  store i32* null, i32** %99, align 8
  br label %100

100:                                              ; preds = %87
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %12

103:                                              ; preds = %12
  ret void
}

declare dso_local %struct.rhine_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
