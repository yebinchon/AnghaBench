; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_setup_tx_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_setup_tx_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_ring = type { i32, i32, i32*, %struct.TYPE_2__, i64, i64, i32, i32, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Unable to allocate memory for the Tx descriptor ring, size=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iavf_setup_tx_descriptors(%struct.iavf_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iavf_ring*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.iavf_ring* %0, %struct.iavf_ring** %3, align 8
  %6 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %7 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %6, i32 0, i32 8
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = icmp ne %struct.device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %87

14:                                               ; preds = %1
  %15 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %16 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @WARN_ON(i32* %17)
  %19 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %20 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @kzalloc(i32 %25, i32 %26)
  %28 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %29 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %31 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %14
  br label %78

35:                                               ; preds = %14
  %36 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %37 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %43 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %45 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ALIGN(i32 %46, i32 4096)
  %48 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %49 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %52 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %55 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %54, i32 0, i32 7
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32 @dma_alloc_coherent(%struct.device* %50, i32 %53, i32* %55, i32 %56)
  %58 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %59 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 8
  %60 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %61 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %35
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %67 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_info(%struct.device* %65, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %78

70:                                               ; preds = %35
  %71 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %72 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %74 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %73, i32 0, i32 4
  store i64 0, i64* %74, align 8
  %75 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %76 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 -1, i32* %77, align 8
  store i32 0, i32* %2, align 4
  br label %87

78:                                               ; preds = %64, %34
  %79 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %80 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @kfree(i32* %81)
  %83 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %84 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %83, i32 0, i32 2
  store i32* null, i32** %84, align 8
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %78, %70, %11
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @WARN_ON(i32*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
