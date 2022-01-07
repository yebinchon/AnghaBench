; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_alloc_rx_skbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_alloc_rx_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_port = type { i32, i32, %struct.rx_ring_info*, %struct.sky2_hw* }
%struct.rx_ring_info = type { i32* }
%struct.sky2_hw = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sky2_port*)* @sky2_alloc_rx_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_alloc_rx_skbs(%struct.sky2_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sky2_port*, align 8
  %4 = alloca %struct.sky2_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rx_ring_info*, align 8
  store %struct.sky2_port* %0, %struct.sky2_port** %3, align 8
  %7 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %8 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %7, i32 0, i32 3
  %9 = load %struct.sky2_hw*, %struct.sky2_hw** %8, align 8
  store %struct.sky2_hw* %9, %struct.sky2_hw** %4, align 8
  %10 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %11 = call i32 @sky2_get_rx_data_size(%struct.sky2_port* %10)
  %12 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %13 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %59, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %17 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %62

20:                                               ; preds = %14
  %21 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %22 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %21, i32 0, i32 2
  %23 = load %struct.rx_ring_info*, %struct.rx_ring_info** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %23, i64 %25
  store %struct.rx_ring_info* %26, %struct.rx_ring_info** %6, align 8
  %27 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32* @sky2_rx_alloc(%struct.sky2_port* %27, i32 %28)
  %30 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %31 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %30, i32 0, i32 0
  store i32* %29, i32** %31, align 8
  %32 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %33 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %20
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %63

39:                                               ; preds = %20
  %40 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %41 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %44 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %45 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @sky2_rx_map_skb(i32 %42, %struct.rx_ring_info* %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %39
  %50 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %51 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @dev_kfree_skb(i32* %52)
  %54 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %55 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %63

58:                                               ; preds = %39
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %14

62:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %49, %36
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @sky2_get_rx_data_size(%struct.sky2_port*) #1

declare dso_local i32* @sky2_rx_alloc(%struct.sky2_port*, i32) #1

declare dso_local i64 @sky2_rx_map_skb(i32, %struct.rx_ring_info*, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
