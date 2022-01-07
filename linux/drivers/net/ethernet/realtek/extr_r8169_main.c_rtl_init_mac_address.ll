; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_init_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_init_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { %struct.net_device* }
%struct.net_device = type { i32* }

@MAC0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"can't read MAC address, setting random one\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_init_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_init_mac_address(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %6 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %7 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %6, i32 0, i32 0
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  %12 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %13 = call i32 @tp_to_dev(%struct.rtl8169_private* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @eth_platform_get_mac_address(i32 %13, i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @rtl_read_mac_address(%struct.rtl8169_private* %20, i32* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i64 @is_valid_ether_addr(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %42

27:                                               ; preds = %19
  %28 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @MAC0, align 4
  %31 = call i32 @rtl_read_mac_from_reg(%struct.rtl8169_private* %28, i32* %29, i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @is_valid_ether_addr(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %42

36:                                               ; preds = %27
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @eth_hw_addr_random(%struct.net_device* %37)
  %39 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %40 = call i32 @tp_to_dev(%struct.rtl8169_private* %39)
  %41 = call i32 @dev_warn(i32 %40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %36, %35, %26, %18
  %43 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @rtl_rar_set(%struct.rtl8169_private* %43, i32* %44)
  ret void
}

declare dso_local i32 @eth_platform_get_mac_address(i32, i32*) #1

declare dso_local i32 @tp_to_dev(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_read_mac_address(%struct.rtl8169_private*, i32*) #1

declare dso_local i64 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @rtl_read_mac_from_reg(%struct.rtl8169_private*, i32*, i32) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @rtl_rar_set(%struct.rtl8169_private*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
