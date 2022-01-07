; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_alloc_slices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_alloc_slices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i32, i32, i32, %struct.myri10ge_slice_state*, %struct.pci_dev* }
%struct.myri10ge_slice_state = type { i32, i32, %struct.myri10ge_priv*, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@myri10ge_poll = common dso_local global i32 0, align 4
@myri10ge_napi_weight = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.myri10ge_priv*)* @myri10ge_alloc_slices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_alloc_slices(%struct.myri10ge_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.myri10ge_priv*, align 8
  %4 = alloca %struct.myri10ge_slice_state*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %3, align 8
  %8 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %9 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %8, i32 0, i32 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %5, align 8
  %11 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %12 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 48, %14
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.myri10ge_slice_state* @kzalloc(i64 %16, i32 %17)
  %19 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %20 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %19, i32 0, i32 3
  store %struct.myri10ge_slice_state* %18, %struct.myri10ge_slice_state** %20, align 8
  %21 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %22 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %21, i32 0, i32 3
  %23 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %22, align 8
  %24 = icmp eq %struct.myri10ge_slice_state* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %107

28:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %98, %28
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %32 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %101

35:                                               ; preds = %29
  %36 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %37 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %36, i32 0, i32 3
  %38 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %38, i64 %40
  store %struct.myri10ge_slice_state* %41, %struct.myri10ge_slice_state** %4, align 8
  %42 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %43 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  store i64 %46, i64* %6, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %4, align 8
  %51 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @dma_alloc_coherent(i32* %48, i64 %49, i32* %52, i32 %53)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %4, align 8
  %57 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32* %55, i32** %58, align 8
  %59 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %4, align 8
  %60 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %35
  br label %102

65:                                               ; preds = %35
  store i64 4, i64* %6, align 8
  %66 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 0
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %4, align 8
  %70 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %69, i32 0, i32 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i8* @dma_alloc_coherent(i32* %67, i64 %68, i32* %70, i32 %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %4, align 8
  %75 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %74, i32 0, i32 3
  store i32* %73, i32** %75, align 8
  %76 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %4, align 8
  %77 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %65
  br label %102

81:                                               ; preds = %65
  %82 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %83 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %4, align 8
  %84 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %83, i32 0, i32 2
  store %struct.myri10ge_priv* %82, %struct.myri10ge_priv** %84, align 8
  %85 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %86 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %4, align 8
  %89 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %4, align 8
  %91 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %4, align 8
  %94 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %93, i32 0, i32 0
  %95 = load i32, i32* @myri10ge_poll, align 4
  %96 = load i32, i32* @myri10ge_napi_weight, align 4
  %97 = call i32 @netif_napi_add(i32 %92, i32* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %81
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %29

101:                                              ; preds = %29
  store i32 0, i32* %2, align 4
  br label %107

102:                                              ; preds = %80, %64
  %103 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %104 = call i32 @myri10ge_free_slices(%struct.myri10ge_priv* %103)
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %102, %101, %25
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.myri10ge_slice_state* @kzalloc(i64, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i32 @myri10ge_free_slices(%struct.myri10ge_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
