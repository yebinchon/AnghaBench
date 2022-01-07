; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_set_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ibmvnic_adapter = type { i64, i32 }
%struct.sockaddr = type { i32 }

@VNIC_PROBED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @ibmvnic_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvnic_set_mac(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ibmvnic_adapter*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ibmvnic_adapter* %9, %struct.ibmvnic_adapter** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.sockaddr*
  store %struct.sockaddr* %11, %struct.sockaddr** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %16 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ether_addr_copy(i32 %14, i32 %17)
  %19 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VNIC_PROBED, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__ibmvnic_set_mac(%struct.net_device* %25, i32 %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %24, %2
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @__ibmvnic_set_mac(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
