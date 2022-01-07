; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nb8800_priv = type { i64, %struct.TYPE_4__*, i8*, i8*, i8*, i64 }
%struct.TYPE_4__ = type { i64 }

@RX_DESC_COUNT = common dso_local global i32 0, align 4
@TX_DESC_COUNT = common dso_local global i32 0, align 4
@RX_DESC_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TX_DESC_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @nb8800_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nb8800_dma_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.nb8800_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.nb8800_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.nb8800_priv* %10, %struct.nb8800_priv** %4, align 8
  %11 = load i32, i32* @RX_DESC_COUNT, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @TX_DESC_COUNT, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RX_DESC_SIZE, align 4
  %18 = load %struct.nb8800_priv*, %struct.nb8800_priv** %4, align 8
  %19 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %18, i32 0, i32 5
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @dma_alloc_coherent(i32 %16, i32 %17, i64* %19, i32 %20)
  %22 = load %struct.nb8800_priv*, %struct.nb8800_priv** %4, align 8
  %23 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = load %struct.nb8800_priv*, %struct.nb8800_priv** %4, align 8
  %25 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %24, i32 0, i32 4
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %111

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kcalloc(i32 %30, i32 1, i32 %31)
  %33 = load %struct.nb8800_priv*, %struct.nb8800_priv** %4, align 8
  %34 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.nb8800_priv*, %struct.nb8800_priv** %4, align 8
  %36 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %111

40:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %53, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @nb8800_alloc_rx(%struct.net_device* %46, i32 %47, i32 0)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %111

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %41

56:                                               ; preds = %41
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @TX_DESC_SIZE, align 4
  %62 = load %struct.nb8800_priv*, %struct.nb8800_priv** %4, align 8
  %63 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %62, i32 0, i32 0
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @dma_alloc_coherent(i32 %60, i32 %61, i64* %63, i32 %64)
  %66 = load %struct.nb8800_priv*, %struct.nb8800_priv** %4, align 8
  %67 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.nb8800_priv*, %struct.nb8800_priv** %4, align 8
  %69 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %56
  br label %111

73:                                               ; preds = %56
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i8* @kcalloc(i32 %74, i32 8, i32 %75)
  %77 = bitcast i8* %76 to %struct.TYPE_4__*
  %78 = load %struct.nb8800_priv*, %struct.nb8800_priv** %4, align 8
  %79 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %78, i32 0, i32 1
  store %struct.TYPE_4__* %77, %struct.TYPE_4__** %79, align 8
  %80 = load %struct.nb8800_priv*, %struct.nb8800_priv** %4, align 8
  %81 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = icmp ne %struct.TYPE_4__* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %73
  br label %111

85:                                               ; preds = %73
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %105, %85
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %86
  %91 = load %struct.nb8800_priv*, %struct.nb8800_priv** %4, align 8
  %92 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = zext i32 %94 to i64
  %96 = mul i64 %95, 4
  %97 = add i64 %93, %96
  %98 = load %struct.nb8800_priv*, %struct.nb8800_priv** %4, align 8
  %99 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i64 %97, i64* %104, align 8
  br label %105

105:                                              ; preds = %90
  %106 = load i32, i32* %7, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %86

108:                                              ; preds = %86
  %109 = load %struct.net_device*, %struct.net_device** %3, align 8
  %110 = call i32 @nb8800_dma_reset(%struct.net_device* %109)
  store i32 0, i32* %2, align 4
  br label %116

111:                                              ; preds = %84, %72, %51, %39, %28
  %112 = load %struct.net_device*, %struct.net_device** %3, align 8
  %113 = call i32 @nb8800_dma_free(%struct.net_device* %112)
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %111, %108
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.nb8800_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @nb8800_alloc_rx(%struct.net_device*, i32, i32) #1

declare dso_local i32 @nb8800_dma_reset(%struct.net_device*) #1

declare dso_local i32 @nb8800_dma_free(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
