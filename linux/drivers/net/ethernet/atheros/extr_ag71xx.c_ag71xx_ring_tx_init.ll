; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_ring_tx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_ring_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, %struct.ag71xx_ring }
%struct.ag71xx_ring = type { i64, i64, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.ag71xx_desc = type { i32, i64 }

@AG71XX_DESC_SIZE = common dso_local global i32 0, align 4
@DESC_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_ring_tx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_ring_tx_init(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.ag71xx_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ag71xx_desc*, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %8 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %9 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %8, i32 0, i32 1
  store %struct.ag71xx_ring* %9, %struct.ag71xx_ring** %3, align 8
  %10 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %11 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @BIT(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %48, %1
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %16
  %21 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %21, i32 %22)
  store %struct.ag71xx_desc* %23, %struct.ag71xx_desc** %7, align 8
  %24 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %25 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @AG71XX_DESC_SIZE, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %29, %30
  %32 = mul nsw i32 %27, %31
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %26, %33
  %35 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %7, align 8
  %36 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @DESC_EMPTY, align 4
  %38 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %7, align 8
  %39 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %41 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %20
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %16

51:                                               ; preds = %16
  %52 = call i32 (...) @wmb()
  %53 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %54 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %56 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %58 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @netdev_reset_queue(i32 %59)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @netdev_reset_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
