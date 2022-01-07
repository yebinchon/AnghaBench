; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_rx_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_rx_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_port = type { i32, %struct.TYPE_2__*, %struct.rx_ring_info*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.rx_ring_info = type { i32* }

@RX_LE_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_port*)* @sky2_rx_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_rx_clean(%struct.sky2_port* %0) #0 {
  %2 = alloca %struct.sky2_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rx_ring_info*, align 8
  store %struct.sky2_port* %0, %struct.sky2_port** %2, align 8
  %5 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %6 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %11 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @RX_LE_BYTES, align 4
  %14 = call i32 @memset(i64 %12, i32 0, i32 %13)
  br label %15

15:                                               ; preds = %9, %1
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %48, %15
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %19 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %16
  %23 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %24 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %23, i32 0, i32 2
  %25 = load %struct.rx_ring_info*, %struct.rx_ring_info** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %25, i64 %27
  store %struct.rx_ring_info* %28, %struct.rx_ring_info** %4, align 8
  %29 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %30 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %22
  %34 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %35 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %40 = call i32 @sky2_rx_unmap_skb(i32 %38, %struct.rx_ring_info* %39)
  %41 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %42 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @kfree_skb(i32* %43)
  %45 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %46 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %33, %22
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %16

51:                                               ; preds = %16
  ret void
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @sky2_rx_unmap_skb(i32, %struct.rx_ring_info*) #1

declare dso_local i32 @kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
