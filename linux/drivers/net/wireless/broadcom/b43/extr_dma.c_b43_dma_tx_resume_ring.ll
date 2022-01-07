; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_b43_dma_tx_resume_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_b43_dma_tx_resume_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_dmaring = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.b43_dmaring*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_dmaring*)* @b43_dma_tx_resume_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_dma_tx_resume_ring(%struct.b43_dmaring* %0) #0 {
  %2 = alloca %struct.b43_dmaring*, align 8
  store %struct.b43_dmaring* %0, %struct.b43_dmaring** %2, align 8
  %3 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %4 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @B43_WARN_ON(i32 %8)
  %10 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %11 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.b43_dmaring*)*, i32 (%struct.b43_dmaring*)** %13, align 8
  %15 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %16 = call i32 %14(%struct.b43_dmaring* %15)
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
