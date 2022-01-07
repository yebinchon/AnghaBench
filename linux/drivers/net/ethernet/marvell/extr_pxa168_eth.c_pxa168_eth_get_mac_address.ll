; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_pxa168_eth_get_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_pxa168_eth_get_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pxa168_eth_private = type { i32 }

@MAC_ADDR_HIGH = common dso_local global i32 0, align 4
@MAC_ADDR_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i8*)* @pxa168_eth_get_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa168_eth_get_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pxa168_eth_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.pxa168_eth_private* @netdev_priv(%struct.net_device* %8)
  store %struct.pxa168_eth_private* %9, %struct.pxa168_eth_private** %5, align 8
  %10 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %11 = load i32, i32* @MAC_ADDR_HIGH, align 4
  %12 = call i32 @rdl(%struct.pxa168_eth_private* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %14 = load i32, i32* @MAC_ADDR_LOW, align 4
  %15 = call i32 @rdl(%struct.pxa168_eth_private* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = lshr i32 %16, 24
  %18 = and i32 %17, 255
  %19 = trunc i32 %18 to i8
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 %19, i8* %21, align 1
  %22 = load i32, i32* %6, align 4
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = trunc i32 %24 to i8
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 %25, i8* %27, align 1
  %28 = load i32, i32* %6, align 4
  %29 = lshr i32 %28, 8
  %30 = and i32 %29, 255
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  store i8 %31, i8* %33, align 1
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 255
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 3
  store i8 %36, i8* %38, align 1
  %39 = load i32, i32* %7, align 4
  %40 = lshr i32 %39, 8
  %41 = and i32 %40, 255
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  store i8 %42, i8* %44, align 1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 255
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 5
  store i8 %47, i8* %49, align 1
  ret void
}

declare dso_local %struct.pxa168_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rdl(%struct.pxa168_eth_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
