; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_uart.c_qcauart_netdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_uart.c_qcauart_netdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.qcauart = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@QCAFRM_MAX_MTU = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@QCAFRM_HEADER_LEN = common dso_local global i64 0, align 8
@QCAFRM_MAX_LEN = common dso_local global i64 0, align 8
@QCAFRM_FOOTER_LEN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @qcauart_netdev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcauart_netdev_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.qcauart*, align 8
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.qcauart* @netdev_priv(%struct.net_device* %6)
  store %struct.qcauart* %7, %struct.qcauart** %4, align 8
  %8 = load i32, i32* @QCAFRM_MAX_MTU, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @ARPHRD_ETHER, align 4
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i64, i64* @QCAFRM_HEADER_LEN, align 8
  %15 = load i64, i64* @QCAFRM_MAX_LEN, align 8
  %16 = add i64 %14, %15
  %17 = load i64, i64* @QCAFRM_FOOTER_LEN, align 8
  %18 = add i64 %16, %17
  store i64 %18, i64* %5, align 8
  %19 = load %struct.qcauart*, %struct.qcauart** %4, align 8
  %20 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @devm_kmalloc(i32* %22, i64 %23, i32 %24)
  %26 = load %struct.qcauart*, %struct.qcauart** %4, align 8
  %27 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.qcauart*, %struct.qcauart** %4, align 8
  %29 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %57

35:                                               ; preds = %1
  %36 = load %struct.qcauart*, %struct.qcauart** %4, align 8
  %37 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load %struct.qcauart*, %struct.qcauart** %4, align 8
  %40 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @netdev_alloc_skb_ip_align(%struct.TYPE_4__* %38, i64 %45)
  %47 = load %struct.qcauart*, %struct.qcauart** %4, align 8
  %48 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.qcauart*, %struct.qcauart** %4, align 8
  %50 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %35
  %54 = load i32, i32* @ENOBUFS, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %57

56:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %53, %32
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.qcauart* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @devm_kmalloc(i32*, i64, i32) #1

declare dso_local i32 @netdev_alloc_skb_ip_align(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
