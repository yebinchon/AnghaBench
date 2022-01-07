; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_netdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_netdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.qcaspi = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@QCAFRM_MAX_MTU = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@qcaspi_clkspeed = common dso_local global i32 0, align 4
@qcaspi_burst_len = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i32 0, align 4
@QCAFRM_HEADER_LEN = common dso_local global i32 0, align 4
@QCAFRM_FOOTER_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to allocate RX sk_buff.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @qcaspi_netdev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcaspi_netdev_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.qcaspi*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.qcaspi* @netdev_priv(%struct.net_device* %5)
  store %struct.qcaspi* %6, %struct.qcaspi** %4, align 8
  %7 = load i32, i32* @QCAFRM_MAX_MTU, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @ARPHRD_ETHER, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @qcaspi_clkspeed, align 4
  %14 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %15 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @qcaspi_burst_len, align 4
  %17 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %18 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 8
  %19 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %20 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %19, i32 0, i32 5
  store i32* null, i32** %20, align 8
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VLAN_ETH_HLEN, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* @QCAFRM_HEADER_LEN, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* @QCAFRM_FOOTER_LEN, align 4
  %29 = add nsw i32 %27, %28
  %30 = add nsw i32 %29, 4
  %31 = mul nsw i32 %30, 4
  %32 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %33 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %35 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %34, i32 0, i32 4
  %36 = call i32 @memset(i32* %35, i32 0, i32 4)
  %37 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %38 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @kmalloc(i32 %39, i32 %40)
  %42 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %43 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %45 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %1
  %49 = load i32, i32* @ENOBUFS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %80

51:                                               ; preds = %1
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %54 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @VLAN_ETH_HLEN, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = call i32 @netdev_alloc_skb_ip_align(%struct.net_device* %52, i64 %60)
  %62 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %63 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %65 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %51
  %69 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %70 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @kfree(i32 %71)
  %73 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %74 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = call i32 @netdev_info(%struct.TYPE_2__* %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @ENOBUFS, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %80

79:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %68, %48
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.qcaspi* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @netdev_alloc_skb_ip_align(%struct.net_device*, i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @netdev_info(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
