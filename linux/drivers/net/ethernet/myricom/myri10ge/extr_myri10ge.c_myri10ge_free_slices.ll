; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_free_slices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_free_slices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i32, i32, %struct.myri10ge_slice_state*, %struct.pci_dev* }
%struct.myri10ge_slice_state = type { i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myri10ge_priv*)* @myri10ge_free_slices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myri10ge_free_slices(%struct.myri10ge_priv* %0) #0 {
  %2 = alloca %struct.myri10ge_priv*, align 8
  %3 = alloca %struct.myri10ge_slice_state*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %2, align 8
  %7 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %8 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %7, i32 0, i32 3
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %11 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %10, i32 0, i32 2
  %12 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %11, align 8
  %13 = icmp eq %struct.myri10ge_slice_state* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %91

15:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %80, %15
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %19 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %83

22:                                               ; preds = %16
  %23 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %24 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %23, i32 0, i32 2
  %25 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %25, i64 %27
  store %struct.myri10ge_slice_state* %28, %struct.myri10ge_slice_state** %3, align 8
  %29 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %30 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %22
  %35 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %36 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  store i64 %39, i64* %5, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %44 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %48 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dma_free_coherent(i32* %41, i64 %42, i32* %46, i32 %50)
  %52 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %53 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %34, %22
  %56 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %57 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  store i64 4, i64* %5, align 8
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %65 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %68 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dma_free_coherent(i32* %62, i64 %63, i32* %66, i32 %69)
  %71 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %72 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %71, i32 0, i32 1
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %60, %55
  %74 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %75 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %74, i32 0, i32 0
  %76 = call i32 @napi_hash_del(i32* %75)
  %77 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %78 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %77, i32 0, i32 0
  %79 = call i32 @netif_napi_del(i32* %78)
  br label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %16

83:                                               ; preds = %16
  %84 = call i32 (...) @synchronize_rcu()
  %85 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %86 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %85, i32 0, i32 2
  %87 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %86, align 8
  %88 = call i32 @kfree(%struct.myri10ge_slice_state* %87)
  %89 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %90 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %89, i32 0, i32 2
  store %struct.myri10ge_slice_state* null, %struct.myri10ge_slice_state** %90, align 8
  br label %91

91:                                               ; preds = %83, %14
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @napi_hash_del(i32*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @kfree(%struct.myri10ge_slice_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
