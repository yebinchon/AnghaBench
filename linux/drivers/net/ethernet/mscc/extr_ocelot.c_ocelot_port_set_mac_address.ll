; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_port_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_port_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ocelot_port = type { i32, %struct.ocelot* }
%struct.ocelot = type { i32 }
%struct.sockaddr = type { i32 }

@PGID_CPU = common dso_local global i32 0, align 4
@ENTRYTYPE_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @ocelot_port_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_port_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ocelot_port*, align 8
  %6 = alloca %struct.ocelot*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ocelot_port* @netdev_priv(%struct.net_device* %8)
  store %struct.ocelot_port* %9, %struct.ocelot_port** %5, align 8
  %10 = load %struct.ocelot_port*, %struct.ocelot_port** %5, align 8
  %11 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %10, i32 0, i32 1
  %12 = load %struct.ocelot*, %struct.ocelot** %11, align 8
  store %struct.ocelot* %12, %struct.ocelot** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.sockaddr*
  store %struct.sockaddr* %14, %struct.sockaddr** %7, align 8
  %15 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %16 = load i32, i32* @PGID_CPU, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ocelot_port*, %struct.ocelot_port** %5, align 8
  %21 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ENTRYTYPE_LOCKED, align 4
  %24 = call i32 @ocelot_mact_learn(%struct.ocelot* %15, i32 %16, i32 %19, i32 %22, i32 %23)
  %25 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ocelot_port*, %struct.ocelot_port** %5, align 8
  %30 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ocelot_mact_forget(%struct.ocelot* %25, i32 %28, i32 %31)
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %37 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ether_addr_copy(i32 %35, i32 %38)
  ret i32 0
}

declare dso_local %struct.ocelot_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ocelot_mact_learn(%struct.ocelot*, i32, i32, i32, i32) #1

declare dso_local i32 @ocelot_mact_forget(%struct.ocelot*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
