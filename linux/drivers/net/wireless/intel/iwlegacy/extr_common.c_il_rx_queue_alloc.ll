; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_rx_queue_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_rx_queue_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_4__*, %struct.il_rx_queue }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.il_rx_queue = type { i32, i8*, i64, i64, i64, i64, i64, i32, %struct.TYPE_3__*, i8*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@RX_QUEUE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RX_FREE_BUFFERS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_rx_queue_alloc(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_queue*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %7 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %8 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %7, i32 0, i32 1
  store %struct.il_rx_queue* %8, %struct.il_rx_queue** %4, align 8
  %9 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %10 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %14 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %13, i32 0, i32 12
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %17 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %16, i32 0, i32 11
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %20 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %19, i32 0, i32 7
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load i32, i32* @RX_QUEUE_SIZE, align 4
  %24 = mul nsw i32 4, %23
  %25 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %26 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @dma_alloc_coherent(%struct.device* %22, i32 %24, i32* %26, i32 %27)
  %29 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %30 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %32 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %1
  br label %95

36:                                               ; preds = %1
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %39 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %38, i32 0, i32 10
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @dma_alloc_coherent(%struct.device* %37, i32 4, i32* %39, i32 %40)
  %42 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %43 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %42, i32 0, i32 9
  store i8* %41, i8** %43, align 8
  %44 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %45 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %44, i32 0, i32 9
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  br label %81

49:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %67, %49
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @RX_FREE_BUFFERS, align 4
  %53 = load i32, i32* @RX_QUEUE_SIZE, align 4
  %54 = add nsw i32 %52, %53
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %58 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %57, i32 0, i32 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %65 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %64, i32 0, i32 7
  %66 = call i32 @list_add_tail(i32* %63, i32* %65)
  br label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %50

70:                                               ; preds = %50
  %71 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %72 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %74 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %73, i32 0, i32 6
  store i64 0, i64* %74, align 8
  %75 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %76 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  %77 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %78 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %80 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  store i32 0, i32* %2, align 4
  br label %98

81:                                               ; preds = %48
  %82 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %83 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* @RX_QUEUE_SIZE, align 4
  %87 = mul nsw i32 4, %86
  %88 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %89 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %92 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dma_free_coherent(%struct.device* %85, i32 %87, i8* %90, i32 %93)
  br label %95

95:                                               ; preds = %81, %35
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %95, %70
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
