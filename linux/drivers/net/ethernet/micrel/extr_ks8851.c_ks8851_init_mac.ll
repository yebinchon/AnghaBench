; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851.c_ks8851_init_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851.c_ks8851_init_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks8851_net = type { i32, %struct.net_device*, %struct.TYPE_4__* }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CCR_EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid mac address read %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks8851_net*)* @ks8851_init_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8851_init_mac(%struct.ks8851_net* %0) #0 {
  %2 = alloca %struct.ks8851_net*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32*, align 8
  store %struct.ks8851_net* %0, %struct.ks8851_net** %2, align 8
  %5 = load %struct.ks8851_net*, %struct.ks8851_net** %2, align 8
  %6 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %5, i32 0, i32 1
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.ks8851_net*, %struct.ks8851_net** %2, align 8
  %9 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32* @of_get_mac_address(i32 %13)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @IS_ERR(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @ether_addr_copy(i32 %21, i32* %22)
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @ks8851_write_mac_addr(%struct.net_device* %24)
  br label %55

26:                                               ; preds = %1
  %27 = load %struct.ks8851_net*, %struct.ks8851_net** %2, align 8
  %28 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CCR_EEPROM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %26
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @ks8851_read_mac_addr(%struct.net_device* %34)
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @is_valid_ether_addr(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %55

42:                                               ; preds = %33
  %43 = load %struct.ks8851_net*, %struct.ks8851_net** %2, align 8
  %44 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %43, i32 0, i32 1
  %45 = load %struct.net_device*, %struct.net_device** %44, align 8
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @netdev_err(%struct.net_device* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %42, %26
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = call i32 @eth_hw_addr_random(%struct.net_device* %51)
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i32 @ks8851_write_mac_addr(%struct.net_device* %53)
  br label %55

55:                                               ; preds = %50, %41, %18
  ret void
}

declare dso_local i32* @of_get_mac_address(i32) #1

declare dso_local i32 @IS_ERR(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @ks8851_write_mac_addr(%struct.net_device*) #1

declare dso_local i32 @ks8851_read_mac_addr(%struct.net_device*) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
