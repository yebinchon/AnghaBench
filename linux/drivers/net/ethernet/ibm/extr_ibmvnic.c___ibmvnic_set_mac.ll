; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c___ibmvnic_set_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c___ibmvnic_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.ibmvnic_adapter = type { i32*, i64, i32 }
%union.ibmvnic_crq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@IBMVNIC_CRQ_CMD = common dso_local global i32 0, align 4
@CHANGE_MAC_ADDR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*)* @__ibmvnic_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ibmvnic_set_mac(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ibmvnic_adapter*, align 8
  %7 = alloca %union.ibmvnic_crq, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.ibmvnic_adapter* %10, %struct.ibmvnic_adapter** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @is_valid_ether_addr(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EADDRNOTAVAIL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  br label %53

17:                                               ; preds = %2
  %18 = call i32 @memset(%union.ibmvnic_crq* %7, i32 0, i32 16)
  %19 = load i32, i32* @IBMVNIC_CRQ_CMD, align 4
  %20 = bitcast %union.ibmvnic_crq* %7 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @CHANGE_MAC_ADDR, align 4
  %23 = bitcast %union.ibmvnic_crq* %7 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = bitcast %union.ibmvnic_crq* %7 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @ether_addr_copy(i32* %28, i32* %29)
  %31 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %6, align 8
  %32 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %31, i32 0, i32 2
  %33 = call i32 @init_completion(i32* %32)
  %34 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %6, align 8
  %35 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %34, %union.ibmvnic_crq* %7)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %17
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %53

41:                                               ; preds = %17
  %42 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %6, align 8
  %43 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %42, i32 0, i32 2
  %44 = call i32 @wait_for_completion(i32* %43)
  %45 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %6, align 8
  %46 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %53

52:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %62

53:                                               ; preds = %49, %38, %14
  %54 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %6, align 8
  %55 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @ether_addr_copy(i32* %56, i32* %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %53, %52
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @memset(%union.ibmvnic_crq*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter*, %union.ibmvnic_crq*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
