; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_rx_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_rx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@RX_QUEUE_LENGTH = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw2100_priv*)* @ipw2100_rx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw2100_rx_free(%struct.ipw2100_priv* %0) #0 {
  %2 = alloca %struct.ipw2100_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %2, align 8
  %4 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %6 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %7 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %6, i32 0, i32 2
  %8 = call i32 @bd_queue_free(%struct.ipw2100_priv* %5, i32* %7)
  %9 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %10 = call i32 @status_queue_free(%struct.ipw2100_priv* %9)
  %11 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %12 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %66

16:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %55, %16
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @RX_QUEUE_LENGTH, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %17
  %22 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %23 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %21
  %32 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %33 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %36 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %44 = call i32 @pci_unmap_single(i32 %34, i32 %42, i32 4, i32 %43)
  %45 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %46 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_kfree_skb(i32 %52)
  br label %54

54:                                               ; preds = %31, %21
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %17

58:                                               ; preds = %17
  %59 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %60 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = call i32 @kfree(%struct.TYPE_2__* %61)
  %63 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %64 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %63, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %64, align 8
  %65 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %58, %15
  ret void
}

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

declare dso_local i32 @bd_queue_free(%struct.ipw2100_priv*, i32*) #1

declare dso_local i32 @status_queue_free(%struct.ipw2100_priv*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
