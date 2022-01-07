; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_get_rx_data_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_get_rx_data_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.rx_ring_info = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@copybreak = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sky2_port*)* @sky2_get_rx_data_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_get_rx_data_size(%struct.sky2_port* %0) #0 {
  %2 = alloca %struct.sky2_port*, align 8
  %3 = alloca %struct.rx_ring_info*, align 8
  %4 = alloca i32, align 4
  store %struct.sky2_port* %0, %struct.sky2_port** %2, align 8
  %5 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %6 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* @ETH_HLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = add nsw i64 %9, %11
  %13 = load i64, i64* @VLAN_HLEN, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @roundup(i64 %14, i32 8)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @PAGE_SHIFT, align 4
  %18 = lshr i32 %16, %17
  %19 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %20 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %22 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = zext i32 %23 to i64
  %25 = load %struct.rx_ring_info*, %struct.rx_ring_info** %3, align 8
  %26 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ARRAY_SIZE(i32 %27)
  %29 = icmp sgt i64 %24, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %33 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PAGE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = sub i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @copybreak, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @copybreak, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %1
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @ETH_HLEN, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @ETH_HLEN, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @roundup(i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
