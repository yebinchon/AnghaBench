; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.xgbe_prv_data = type { %struct.xgbe_hw_if }
%struct.xgbe_hw_if = type { i32 (%struct.xgbe_prv_data.0*, i32)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"-->xgbe_set_mac_address\0A\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"<--xgbe_set_mac_address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @xgbe_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xgbe_prv_data*, align 8
  %7 = alloca %struct.xgbe_hw_if*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.xgbe_prv_data* @netdev_priv(%struct.net_device* %9)
  store %struct.xgbe_prv_data* %10, %struct.xgbe_prv_data** %6, align 8
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 0
  store %struct.xgbe_hw_if* %12, %struct.xgbe_hw_if** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.sockaddr*
  store %struct.sockaddr* %14, %struct.sockaddr** %8, align 8
  %15 = call i32 @DBGPR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @is_valid_ether_addr(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EADDRNOTAVAIL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %45

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %29 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i32 %27, i32 %30, i32 %33)
  %35 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %7, align 8
  %36 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %35, i32 0, i32 0
  %37 = load i32 (%struct.xgbe_prv_data.0*, i32)*, i32 (%struct.xgbe_prv_data.0*, i32)** %36, align 8
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %39 = bitcast %struct.xgbe_prv_data* %38 to %struct.xgbe_prv_data.0*
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 %37(%struct.xgbe_prv_data.0* %39, i32 %42)
  %44 = call i32 @DBGPR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %24, %21
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.xgbe_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DBGPR(i8*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
