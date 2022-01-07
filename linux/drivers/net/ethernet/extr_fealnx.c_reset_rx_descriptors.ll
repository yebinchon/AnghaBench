; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_fealnx.c_reset_rx_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_fealnx.c_reset_rx_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i64, i64, %struct.fealnx_desc*, i64 }
%struct.fealnx_desc = type { %struct.fealnx_desc*, i32, i64 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@RXOWN = common dso_local global i32 0, align 4
@RXLBA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @reset_rx_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_rx_descriptors(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_private*, align 8
  %4 = alloca %struct.fealnx_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %6)
  store %struct.netdev_private* %7, %struct.netdev_private** %3, align 8
  %8 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %9 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %8, i32 0, i32 2
  %10 = load %struct.fealnx_desc*, %struct.fealnx_desc** %9, align 8
  store %struct.fealnx_desc* %10, %struct.fealnx_desc** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @allocate_rx_buffers(%struct.net_device* %11)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %30, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @RX_RING_SIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load %struct.fealnx_desc*, %struct.fealnx_desc** %4, align 8
  %19 = getelementptr inbounds %struct.fealnx_desc, %struct.fealnx_desc* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @RXOWN, align 4
  %24 = load %struct.fealnx_desc*, %struct.fealnx_desc** %4, align 8
  %25 = getelementptr inbounds %struct.fealnx_desc, %struct.fealnx_desc* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.fealnx_desc*, %struct.fealnx_desc** %4, align 8
  %28 = getelementptr inbounds %struct.fealnx_desc, %struct.fealnx_desc* %27, i32 0, i32 0
  %29 = load %struct.fealnx_desc*, %struct.fealnx_desc** %28, align 8
  store %struct.fealnx_desc* %29, %struct.fealnx_desc** %4, align 8
  br label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %13

33:                                               ; preds = %13
  %34 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %35 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %38 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %37, i32 0, i32 2
  %39 = load %struct.fealnx_desc*, %struct.fealnx_desc** %38, align 8
  %40 = bitcast %struct.fealnx_desc* %39 to i8*
  %41 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %42 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = ptrtoint i8* %40 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = add nsw i64 %36, %47
  %49 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %50 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RXLBA, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @iowrite32(i64 %48, i64 %53)
  ret void
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @allocate_rx_buffers(%struct.net_device*) #1

declare dso_local i32 @iowrite32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
