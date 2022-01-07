; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_hw.c_netxen_nic_set_mcast_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_hw.c_netxen_nic_set_mcast_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*, i32, i32*)* @netxen_nic_set_mcast_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_nic_set_mcast_addr(%struct.netxen_adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.netxen_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @MAC_LO(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @MAC_HI(i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @NETXEN_MCAST_ADDR(i32 %18, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @NXWR32(%struct.netxen_adapter* %17, i64 %20, i32 %21)
  %23 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @NETXEN_MCAST_ADDR(i32 %24, i32 %25)
  %27 = add nsw i64 %26, 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @NXWR32(%struct.netxen_adapter* %23, i64 %27, i32 %28)
  ret i32 0
}

declare dso_local i32 @MAC_LO(i32*) #1

declare dso_local i32 @MAC_HI(i32*) #1

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i64, i32) #1

declare dso_local i64 @NETXEN_MCAST_ADDR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
