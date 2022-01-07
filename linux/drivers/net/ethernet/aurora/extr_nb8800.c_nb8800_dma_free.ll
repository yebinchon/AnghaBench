; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_dma_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nb8800_priv = type { i32*, i32, i32*, i32, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@RX_DESC_COUNT = common dso_local global i32 0, align 4
@TX_DESC_COUNT = common dso_local global i32 0, align 4
@RX_DESC_SIZE = common dso_local global i32 0, align 4
@TX_DESC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @nb8800_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nb8800_dma_free(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nb8800_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.nb8800_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.nb8800_priv* %6, %struct.nb8800_priv** %3, align 8
  %7 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %8 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %7, i32 0, i32 5
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %47

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %37, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @RX_DESC_COUNT, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %18 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %17, i32 0, i32 5
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %16
  %27 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %28 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %27, i32 0, i32 5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @put_page(i64 %34)
  br label %36

36:                                               ; preds = %26, %16
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %12

40:                                               ; preds = %12
  %41 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %42 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %41, i32 0, i32 5
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @kfree(%struct.TYPE_4__* %43)
  %45 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %46 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %45, i32 0, i32 5
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %46, align 8
  br label %47

47:                                               ; preds = %40, %1
  %48 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %49 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %48, i32 0, i32 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = icmp ne %struct.TYPE_4__* %50, null
  br i1 %51, label %52, label %77

52:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %67, %52
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @TX_DESC_COUNT, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %59 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %58, i32 0, i32 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @kfree_skb(i32 %65)
  br label %67

67:                                               ; preds = %57
  %68 = load i32, i32* %4, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %53

70:                                               ; preds = %53
  %71 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %72 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %71, i32 0, i32 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = call i32 @kfree(%struct.TYPE_4__* %73)
  %75 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %76 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %75, i32 0, i32 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %76, align 8
  br label %77

77:                                               ; preds = %70, %47
  %78 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %79 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @RX_DESC_SIZE, align 4
  %88 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %89 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %92 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dma_free_coherent(i32 %86, i32 %87, i32* %90, i32 %93)
  %95 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %96 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %95, i32 0, i32 2
  store i32* null, i32** %96, align 8
  br label %97

97:                                               ; preds = %82, %77
  %98 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %99 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %117

102:                                              ; preds = %97
  %103 = load %struct.net_device*, %struct.net_device** %2, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @TX_DESC_SIZE, align 4
  %108 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %109 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %112 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @dma_free_coherent(i32 %106, i32 %107, i32* %110, i32 %113)
  %115 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %116 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %115, i32 0, i32 0
  store i32* null, i32** %116, align 8
  br label %117

117:                                              ; preds = %102, %97
  ret void
}

declare dso_local %struct.nb8800_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @put_page(i64) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
