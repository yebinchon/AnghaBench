; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_adapter = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.rx_return_desc = type { i32, i32 }
%struct.sk_buff = type { i32 }

@PACKET_FLAG_ERR = common dso_local global i32 0, align 4
@ERR_FLAG_CRC = common dso_local global i32 0, align 4
@ERR_FLAG_TRUNC = common dso_local global i32 0, align 4
@ERR_FLAG_CODE = common dso_local global i32 0, align 4
@ERR_FLAG_OV = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"rx checksum error\0A\00", align 1
@PACKET_FLAG_IPV4 = common dso_local global i32 0, align 4
@ERR_FLAG_IP_CHKSUM = common dso_local global i32 0, align 4
@ERR_FLAG_L4_CHKSUM = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1_adapter*, %struct.rx_return_desc*, %struct.sk_buff*)* @atl1_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1_rx_checksum(%struct.atl1_adapter* %0, %struct.rx_return_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.atl1_adapter*, align 8
  %5 = alloca %struct.rx_return_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.atl1_adapter* %0, %struct.atl1_adapter** %4, align 8
  store %struct.rx_return_desc* %1, %struct.rx_return_desc** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.atl1_adapter*, %struct.atl1_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %8, i32 0, i32 2
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %11)
  %13 = load %struct.rx_return_desc*, %struct.rx_return_desc** %5, align 8
  %14 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PACKET_FLAG_ERR, align 4
  %17 = and i32 %15, %16
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %3
  %21 = load %struct.rx_return_desc*, %struct.rx_return_desc** %5, align 8
  %22 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ERR_FLAG_CRC, align 4
  %25 = load i32, i32* @ERR_FLAG_TRUNC, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ERR_FLAG_CODE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @ERR_FLAG_OV, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %23, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %20
  %34 = load %struct.atl1_adapter*, %struct.atl1_adapter** %4, align 8
  %35 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.atl1_adapter*, %struct.atl1_adapter** %4, align 8
  %39 = call i64 @netif_msg_rx_err(%struct.atl1_adapter* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load i32, i32* @KERN_DEBUG, align 4
  %43 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = call i32 @dev_printk(i32 %42, i32* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %33
  br label %77

47:                                               ; preds = %20
  br label %48

48:                                               ; preds = %47, %3
  %49 = load %struct.rx_return_desc*, %struct.rx_return_desc** %5, align 8
  %50 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PACKET_FLAG_IPV4, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  br label %77

56:                                               ; preds = %48
  %57 = load %struct.rx_return_desc*, %struct.rx_return_desc** %5, align 8
  %58 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ERR_FLAG_IP_CHKSUM, align 4
  %61 = load i32, i32* @ERR_FLAG_L4_CHKSUM, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i64 @likely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %56
  %70 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.atl1_adapter*, %struct.atl1_adapter** %4, align 8
  %74 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %46, %55, %69, %56
  ret void
}

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_msg_rx_err(%struct.atl1_adapter*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
