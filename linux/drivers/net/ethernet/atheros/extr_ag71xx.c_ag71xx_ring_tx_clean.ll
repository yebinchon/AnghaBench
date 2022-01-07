; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_ring_tx_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_ring_tx_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.net_device*, %struct.ag71xx_ring }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ag71xx_ring = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i64 }
%struct.ag71xx_desc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_ring_tx_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_ring_tx_clean(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.ag71xx_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ag71xx_desc*, align 8
  %9 = alloca i64, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %10 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %11 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %10, i32 0, i32 1
  store %struct.ag71xx_ring* %11, %struct.ag71xx_ring** %3, align 8
  %12 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %13 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @BIT(i32 %14)
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %17 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %18 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %17, i32 0, i32 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %7, align 8
  br label %20

20:                                               ; preds = %81, %1
  %21 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %22 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %25 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %93

28:                                               ; preds = %20
  %29 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %30 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %31, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %9, align 8
  %35 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %35, i64 %36)
  store %struct.ag71xx_desc* %37, %struct.ag71xx_desc** %8, align 8
  %38 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %8, align 8
  %39 = call i32 @ag71xx_desc_empty(%struct.ag71xx_desc* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %28
  %42 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %8, align 8
  %43 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %41, %28
  %50 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %51 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %81

59:                                               ; preds = %49
  %60 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %61 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %60, i32 0, i32 2
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %6, align 8
  %72 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %73 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @dev_kfree_skb_any(i32* %79)
  br label %81

81:                                               ; preds = %59, %49
  %82 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %83 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %82, i32 0, i32 2
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32* null, i32** %88, align 8
  %89 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %90 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %20

93:                                               ; preds = %20
  %94 = call i32 (...) @wmb()
  %95 = load %struct.net_device*, %struct.net_device** %7, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* %5, align 8
  %98 = call i32 @netdev_completed_queue(%struct.net_device* %95, i64 %96, i64 %97)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring*, i64) #1

declare dso_local i32 @ag71xx_desc_empty(%struct.ag71xx_desc*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @netdev_completed_queue(%struct.net_device*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
