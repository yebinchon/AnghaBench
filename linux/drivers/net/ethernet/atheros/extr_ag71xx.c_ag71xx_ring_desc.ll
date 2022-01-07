; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_ring_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_ring_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx_desc = type { i32 }
%struct.ag71xx_ring = type { i32* }

@AG71XX_DESC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ag71xx_desc* (%struct.ag71xx_ring*, i32)* @ag71xx_ring_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.ag71xx_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.ag71xx_ring* %0, %struct.ag71xx_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %6 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @AG71XX_DESC_SIZE, align 4
  %10 = mul nsw i32 %8, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %7, i64 %11
  %13 = bitcast i32* %12 to %struct.ag71xx_desc*
  ret %struct.ag71xx_desc* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
