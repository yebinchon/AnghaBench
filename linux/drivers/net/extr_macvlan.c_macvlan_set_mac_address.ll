; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.macvlan_dev = type { i64, i32, i32 }
%struct.sockaddr = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@MACVLAN_MODE_PASSTHRU = common dso_local global i64 0, align 8
@EADDRINUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @macvlan_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.macvlan_dev*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %8)
  store %struct.macvlan_dev* %9, %struct.macvlan_dev** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sockaddr*
  store %struct.sockaddr* %11, %struct.sockaddr** %7, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @is_valid_ether_addr(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EADDRNOTAVAIL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %64

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ether_addr_equal(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %64

30:                                               ; preds = %20
  %31 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %32 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MACVLAN_MODE_PASSTHRU, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %38 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @macvlan_set_addr_change(i32 %39)
  %41 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %42 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %45 = call i32 @dev_set_mac_address(i32 %43, %struct.sockaddr* %44, i32* null)
  store i32 %45, i32* %3, align 4
  br label %64

46:                                               ; preds = %30
  %47 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %48 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %51 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @macvlan_addr_busy(i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @EADDRINUSE, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %64

58:                                               ; preds = %46
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %61 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @macvlan_sync_address(%struct.net_device* %59, i32 %62)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %58, %55, %36, %29, %17
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @macvlan_set_addr_change(i32) #1

declare dso_local i32 @dev_set_mac_address(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @macvlan_addr_busy(i32, i32) #1

declare dso_local i32 @macvlan_sync_address(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
