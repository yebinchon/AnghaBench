; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_bond_alb_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_bond_alb_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.bonding = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_storage = type { i32 }
%struct.slave = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bond_alb_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bonding*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca %struct.slave*, align 8
  %9 = alloca %struct.slave*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.bonding* @netdev_priv(%struct.net_device* %11)
  store %struct.bonding* %12, %struct.bonding** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.sockaddr_storage*
  store %struct.sockaddr_storage* %14, %struct.sockaddr_storage** %7, align 8
  %15 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %16 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @is_valid_ether_addr(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EADDRNOTAVAIL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %90

23:                                               ; preds = %2
  %24 = load %struct.bonding*, %struct.bonding** %6, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @alb_set_mac_address(%struct.bonding* %24, i8* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %3, align 4
  br label %90

31:                                               ; preds = %23
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %36 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bond_hw_addr_copy(i32 %34, i32 %37, i32 %40)
  %42 = load %struct.bonding*, %struct.bonding** %6, align 8
  %43 = getelementptr inbounds %struct.bonding, %struct.bonding* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.slave* @rtnl_dereference(i32 %44)
  store %struct.slave* %45, %struct.slave** %8, align 8
  %46 = load %struct.slave*, %struct.slave** %8, align 8
  %47 = icmp ne %struct.slave* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %90

49:                                               ; preds = %31
  %50 = load %struct.bonding*, %struct.bonding** %6, align 8
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.slave* @bond_slave_has_mac(%struct.bonding* %50, i32 %53)
  store %struct.slave* %54, %struct.slave** %9, align 8
  %55 = load %struct.slave*, %struct.slave** %9, align 8
  %56 = icmp ne %struct.slave* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %49
  %58 = load %struct.slave*, %struct.slave** %9, align 8
  %59 = load %struct.slave*, %struct.slave** %8, align 8
  %60 = call i32 @alb_swap_mac_addr(%struct.slave* %58, %struct.slave* %59)
  %61 = load %struct.bonding*, %struct.bonding** %6, align 8
  %62 = load %struct.slave*, %struct.slave** %9, align 8
  %63 = load %struct.slave*, %struct.slave** %8, align 8
  %64 = call i32 @alb_fasten_mac_swap(%struct.bonding* %61, %struct.slave* %62, %struct.slave* %63)
  br label %89

65:                                               ; preds = %49
  %66 = load %struct.slave*, %struct.slave** %8, align 8
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @alb_set_slave_mac_addr(%struct.slave* %66, i32 %69, i32 %72)
  %74 = load %struct.slave*, %struct.slave** %8, align 8
  %75 = load %struct.net_device*, %struct.net_device** %4, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @alb_send_learning_packets(%struct.slave* %74, i32 %77, i32 0)
  %79 = load %struct.bonding*, %struct.bonding** %6, align 8
  %80 = getelementptr inbounds %struct.bonding, %struct.bonding* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %65
  %85 = load %struct.bonding*, %struct.bonding** %6, align 8
  %86 = load %struct.slave*, %struct.slave** %8, align 8
  %87 = call i32 @rlb_req_update_slave_clients(%struct.bonding* %85, %struct.slave* %86)
  br label %88

88:                                               ; preds = %84, %65
  br label %89

89:                                               ; preds = %88, %57
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %48, %29, %20
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.bonding* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @alb_set_mac_address(%struct.bonding*, i8*) #1

declare dso_local i32 @bond_hw_addr_copy(i32, i32, i32) #1

declare dso_local %struct.slave* @rtnl_dereference(i32) #1

declare dso_local %struct.slave* @bond_slave_has_mac(%struct.bonding*, i32) #1

declare dso_local i32 @alb_swap_mac_addr(%struct.slave*, %struct.slave*) #1

declare dso_local i32 @alb_fasten_mac_swap(%struct.bonding*, %struct.slave*, %struct.slave*) #1

declare dso_local i32 @alb_set_slave_mac_addr(%struct.slave*, i32, i32) #1

declare dso_local i32 @alb_send_learning_packets(%struct.slave*, i32, i32) #1

declare dso_local i32 @rlb_req_update_slave_clients(%struct.bonding*, %struct.slave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
