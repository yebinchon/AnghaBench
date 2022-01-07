; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_setup_rx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_setup_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, %struct.TYPE_2__*, %struct.jme_ring* }
%struct.TYPE_2__ = type { i32 }
%struct.jme_ring = type { i64, i32*, i64, i32*, i64, i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@RING_DESC_ALIGN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_adapter*)* @jme_setup_rx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_setup_rx_resources(%struct.jme_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jme_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jme_ring*, align 8
  store %struct.jme_adapter* %0, %struct.jme_adapter** %3, align 8
  %6 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %6, i32 0, i32 2
  %8 = load %struct.jme_ring*, %struct.jme_ring** %7, align 8
  %9 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %8, i64 0
  store %struct.jme_ring* %9, %struct.jme_ring** %5, align 8
  %10 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @RX_RING_ALLOC_SIZE(i32 %16)
  %18 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %19 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call i64 @dma_alloc_coherent(i32* %13, i32 %17, i64* %19, i32 %20)
  %22 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %23 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %22, i32 0, i32 4
  store i64 %21, i64* %23, align 8
  %24 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %25 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %109

29:                                               ; preds = %1
  %30 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %31 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @RING_DESC_ALIGN, align 4
  %34 = call i64 @ALIGN(i64 %32, i32 %33)
  %35 = inttoptr i64 %34 to i8*
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %38 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %37, i32 0, i32 3
  store i32* %36, i32** %38, align 8
  %39 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %40 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @RING_DESC_ALIGN, align 4
  %43 = call i64 @ALIGN(i64 %41, i32 %42)
  %44 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %45 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %47 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %46, i32 0, i32 6
  store i64 0, i64* %47, align 8
  %48 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %49 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %48, i32 0, i32 5
  %50 = call i32 @atomic_set(i32* %49, i32 0)
  %51 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  %55 = call i32* @kcalloc(i32 %53, i32 4, i32 %54)
  %56 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %57 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  %58 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %59 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %29
  br label %93

67:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %89, %67
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %68
  %75 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @jme_make_new_rx_buf(%struct.jme_adapter* %75, i32 %76)
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %82 = call i32 @jme_free_rx_resources(%struct.jme_adapter* %81)
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %120

85:                                               ; preds = %74
  %86 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @jme_set_clean_rxdesc(%struct.jme_adapter* %86, i32 %87)
  br label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %68

92:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %120

93:                                               ; preds = %66
  %94 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @RX_RING_ALLOC_SIZE(i32 %100)
  %102 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %103 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %106 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @dma_free_coherent(i32* %97, i32 %101, i64 %104, i64 %107)
  br label %109

109:                                              ; preds = %93, %28
  %110 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %111 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %110, i32 0, i32 3
  store i32* null, i32** %111, align 8
  %112 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %113 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %112, i32 0, i32 0
  store i64 0, i64* %113, align 8
  %114 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %115 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %114, i32 0, i32 2
  store i64 0, i64* %115, align 8
  %116 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %117 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %116, i32 0, i32 1
  store i32* null, i32** %117, align 8
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %109, %92, %80
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @RX_RING_ALLOC_SIZE(i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @jme_make_new_rx_buf(%struct.jme_adapter*, i32) #1

declare dso_local i32 @jme_free_rx_resources(%struct.jme_adapter*) #1

declare dso_local i32 @jme_set_clean_rxdesc(%struct.jme_adapter*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
