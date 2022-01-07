; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sxgbe_tx_queue = type { i32, i32, i64, i64, i32, i8*, i8* }

@.str = private unnamed_addr constant [33 x i8] c"No memory for TX queue of SXGBE\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, %struct.sxgbe_tx_queue*, i32)* @init_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_tx_ring(%struct.device* %0, i32 %1, %struct.sxgbe_tx_queue* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sxgbe_tx_queue*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sxgbe_tx_queue* %2, %struct.sxgbe_tx_queue** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %8, align 8
  %11 = icmp ne %struct.sxgbe_tx_queue* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call i32 @dev_err(%struct.device* %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %83

17:                                               ; preds = %4
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %8, align 8
  %24 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @dma_alloc_coherent(%struct.device* %18, i32 %22, i32* %24, i32 %25)
  %27 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %8, align 8
  %28 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %8, align 8
  %30 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %17
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %83

36:                                               ; preds = %17
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @devm_kcalloc(%struct.device* %37, i32 %38, i32 4, i32 %39)
  %41 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %8, align 8
  %42 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %41, i32 0, i32 6
  store i8* %40, i8** %42, align 8
  %43 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %8, align 8
  %44 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %43, i32 0, i32 6
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  br label %68

48:                                               ; preds = %36
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @devm_kcalloc(%struct.device* %49, i32 %50, i32 8, i32 %51)
  %53 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %8, align 8
  %54 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %8, align 8
  %56 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %55, i32 0, i32 5
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %48
  br label %68

60:                                               ; preds = %48
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %8, align 8
  %63 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %8, align 8
  %65 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %8, align 8
  %67 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  store i32 0, i32* %5, align 4
  br label %83

68:                                               ; preds = %59, %47
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %8, align 8
  %75 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %8, align 8
  %78 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dma_free_coherent(%struct.device* %69, i32 %73, i32 %76, i32 %79)
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %68, %60, %33, %12
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
