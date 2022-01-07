; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_b43_dma_handle_rx_overflow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_b43_dma_handle_rx_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_dmaring = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.b43_dmaring*)*, i32 (%struct.b43_dmaring*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_dma_handle_rx_overflow(%struct.b43_dmaring* %0) #0 {
  %2 = alloca %struct.b43_dmaring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.b43_dmaring* %0, %struct.b43_dmaring** %2, align 8
  %5 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %6 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @B43_WARN_ON(i32 %7)
  %9 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %10 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.b43_dmaring*)*, i32 (%struct.b43_dmaring*)** %12, align 8
  %14 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %15 = call i32 %13(%struct.b43_dmaring* %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @prev_slot(%struct.b43_dmaring* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %20 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32 (%struct.b43_dmaring*, i32)*, i32 (%struct.b43_dmaring*, i32)** %22, align 8
  %24 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 %23(%struct.b43_dmaring* %24, i32 %25)
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @prev_slot(%struct.b43_dmaring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
