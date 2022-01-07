; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_mbim.c_do_neigh_solicit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_mbim.c_do_neigh_solicit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.net_device*, i32*, i32*, i32, i32, i32, i32)* }
%struct.net_device = type { i32 }
%struct.usbnet = type { %struct.net_device* }
%struct.ipv6hdr = type { i32, i32 }
%struct.nd_msg = type { i32 }
%struct.inet6_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IPV6_ADDR_UNICAST = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@ipv6_stub = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, i32*, i64)* @do_neigh_solicit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neigh_solicit(%struct.usbnet* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ipv6hdr*, align 8
  %8 = alloca %struct.nd_msg*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.inet6_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = bitcast i8* %13 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %14, %struct.ipv6hdr** %7, align 8
  %15 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %16 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %15, i64 1
  %17 = bitcast %struct.ipv6hdr* %16 to i8*
  %18 = bitcast i8* %17 to %struct.nd_msg*
  store %struct.nd_msg* %18, %struct.nd_msg** %8, align 8
  %19 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %20 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %19, i32 0, i32 1
  %21 = call i32 @ipv6_addr_is_solict_mult(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %25 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %24, i32 0, i32 0
  %26 = call i32 @ipv6_addr_type(i32* %25)
  %27 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23, %3
  br label %85

31:                                               ; preds = %23
  %32 = call i32 (...) @rcu_read_lock()
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %37 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %36, i32 0, i32 0
  %38 = load %struct.net_device*, %struct.net_device** %37, align 8
  %39 = load i32, i32* @ETH_P_8021Q, align 4
  %40 = call i32 @htons(i32 %39)
  %41 = load i64, i64* %6, align 8
  %42 = call %struct.net_device* @__vlan_find_dev_deep_rcu(%struct.net_device* %38, i32 %40, i64 %41)
  store %struct.net_device* %42, %struct.net_device** %9, align 8
  %43 = load %struct.net_device*, %struct.net_device** %9, align 8
  %44 = icmp ne %struct.net_device* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %35
  %46 = call i32 (...) @rcu_read_unlock()
  br label %85

47:                                               ; preds = %35
  br label %52

48:                                               ; preds = %31
  %49 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %50 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %49, i32 0, i32 0
  %51 = load %struct.net_device*, %struct.net_device** %50, align 8
  store %struct.net_device* %51, %struct.net_device** %9, align 8
  br label %52

52:                                               ; preds = %48, %47
  %53 = load %struct.net_device*, %struct.net_device** %9, align 8
  %54 = call i32 @dev_hold(%struct.net_device* %53)
  %55 = call i32 (...) @rcu_read_unlock()
  %56 = load %struct.net_device*, %struct.net_device** %9, align 8
  %57 = call %struct.inet6_dev* @in6_dev_get(%struct.net_device* %56)
  store %struct.inet6_dev* %57, %struct.inet6_dev** %10, align 8
  %58 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %59 = icmp ne %struct.inet6_dev* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  br label %82

61:                                               ; preds = %52
  %62 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %63 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %11, align 4
  %70 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %71 = call i32 @in6_dev_put(%struct.inet6_dev* %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ipv6_stub, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32 (%struct.net_device*, i32*, i32*, i32, i32, i32, i32)*, i32 (%struct.net_device*, i32*, i32*, i32, i32, i32, i32)** %73, align 8
  %75 = load %struct.net_device*, %struct.net_device** %9, align 8
  %76 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %77 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %76, i32 0, i32 0
  %78 = load %struct.nd_msg*, %struct.nd_msg** %8, align 8
  %79 = getelementptr inbounds %struct.nd_msg, %struct.nd_msg* %78, i32 0, i32 0
  %80 = load i32, i32* %11, align 4
  %81 = call i32 %74(%struct.net_device* %75, i32* %77, i32* %79, i32 %80, i32 1, i32 0, i32 1)
  br label %82

82:                                               ; preds = %61, %60
  %83 = load %struct.net_device*, %struct.net_device** %9, align 8
  %84 = call i32 @dev_put(%struct.net_device* %83)
  br label %85

85:                                               ; preds = %82, %45, %30
  ret void
}

declare dso_local i32 @ipv6_addr_is_solict_mult(i32*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @__vlan_find_dev_deep_rcu(%struct.net_device*, i32, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local %struct.inet6_dev* @in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
