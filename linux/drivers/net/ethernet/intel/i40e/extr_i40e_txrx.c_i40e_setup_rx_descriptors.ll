; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_setup_rx_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_setup_rx_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i32, i32, i32*, %struct.TYPE_2__*, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, %struct.device* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Unable to allocate memory for the Rx descriptor ring, size=%d\0A\00", align 1
@I40E_VSI_MAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_setup_rx_descriptors(%struct.i40e_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_ring*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i40e_ring* %0, %struct.i40e_ring** %3, align 8
  %7 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %8 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %7, i32 0, i32 14
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %13 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @WARN_ON(i32* %14)
  %16 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %17 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32* @kzalloc(i32 %22, i32 %23)
  %25 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %26 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %28 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  br label %106

32:                                               ; preds = %1
  %33 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %34 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %33, i32 0, i32 13
  %35 = call i32 @u64_stats_init(i32* %34)
  %36 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %37 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %43 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %45 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ALIGN(i32 %46, i32 4096)
  %48 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %49 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %52 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %55 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %54, i32 0, i32 12
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32 @dma_alloc_coherent(%struct.device* %50, i32 %53, i32* %55, i32 %56)
  %58 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %59 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %58, i32 0, i32 11
  store i32 %57, i32* %59, align 8
  %60 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %61 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %60, i32 0, i32 11
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %32
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %67 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_info(%struct.device* %65, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %106

70:                                               ; preds = %32
  %71 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %72 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %71, i32 0, i32 10
  store i64 0, i64* %72, align 8
  %73 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %74 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %73, i32 0, i32 9
  store i64 0, i64* %74, align 8
  %75 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %76 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %75, i32 0, i32 8
  store i64 0, i64* %76, align 8
  %77 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %78 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %77, i32 0, i32 3
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @I40E_VSI_MAIN, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %70
  %85 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %86 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %85, i32 0, i32 7
  %87 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %88 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %91 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @xdp_rxq_info_reg(i32* %86, i32 %89, i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %106

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97, %70
  %99 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %100 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %99, i32 0, i32 3
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %105 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  store i32 0, i32* %2, align 4
  br label %114

106:                                              ; preds = %96, %64, %31
  %107 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %108 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @kfree(i32* %109)
  %111 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %112 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %111, i32 0, i32 2
  store i32* null, i32** %112, align 8
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %106, %98
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @WARN_ON(i32*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @u64_stats_init(i32*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @xdp_rxq_info_reg(i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
