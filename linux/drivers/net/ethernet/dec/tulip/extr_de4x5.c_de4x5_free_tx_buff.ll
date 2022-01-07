; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_free_tx_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_free_tx_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de4x5_private = type { i32**, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@TD_TBS1 = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.de4x5_private*, i32)* @de4x5_free_tx_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de4x5_free_tx_buff(%struct.de4x5_private* %0, i32 %1) #0 {
  %3 = alloca %struct.de4x5_private*, align 8
  %4 = alloca i32, align 4
  store %struct.de4x5_private* %0, %struct.de4x5_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %6 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %9 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  %17 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %18 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  %26 = load i32, i32* @TD_TBS1, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @DMA_TO_DEVICE, align 4
  %29 = call i32 @dma_unmap_single(i32 %7, i32 %16, i32 %27, i32 %28)
  %30 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %31 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %30, i32 0, i32 0
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = ptrtoint i32* %36 to i32
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %48

39:                                               ; preds = %2
  %40 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %41 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @dev_kfree_skb_irq(i32* %46)
  br label %48

48:                                               ; preds = %39, %2
  %49 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %50 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %49, i32 0, i32 0
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  store i32* null, i32** %54, align 8
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_kfree_skb_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
