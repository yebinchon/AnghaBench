; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_enc28j60.c_enc28j60_net_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_enc28j60.c_enc28j60_net_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enc28j60_net = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"invalid MAC address %pM\0A\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"hw_reset() failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @enc28j60_net_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enc28j60_net_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.enc28j60_net*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.enc28j60_net* @netdev_priv(%struct.net_device* %5)
  store %struct.enc28j60_net* %6, %struct.enc28j60_net** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @is_valid_ether_addr(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %1
  %13 = load %struct.enc28j60_net*, %struct.enc28j60_net** %4, align 8
  %14 = call i64 @netif_msg_ifup(%struct.enc28j60_net* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %16, %12
  %23 = load i32, i32* @EADDRNOTAVAIL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %52

25:                                               ; preds = %1
  %26 = load %struct.enc28j60_net*, %struct.enc28j60_net** %4, align 8
  %27 = call i32 @enc28j60_lowpower(%struct.enc28j60_net* %26, i32 0)
  %28 = load %struct.enc28j60_net*, %struct.enc28j60_net** %4, align 8
  %29 = call i32 @enc28j60_hw_disable(%struct.enc28j60_net* %28)
  %30 = load %struct.enc28j60_net*, %struct.enc28j60_net** %4, align 8
  %31 = call i32 @enc28j60_hw_init(%struct.enc28j60_net* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %25
  %34 = load %struct.enc28j60_net*, %struct.enc28j60_net** %4, align 8
  %35 = call i64 @netif_msg_ifup(%struct.enc28j60_net* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %52

43:                                               ; preds = %25
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 @enc28j60_set_hw_macaddr(%struct.net_device* %44)
  %46 = load %struct.enc28j60_net*, %struct.enc28j60_net** %4, align 8
  %47 = call i32 @enc28j60_hw_enable(%struct.enc28j60_net* %46)
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = call i32 @enc28j60_check_link_status(%struct.net_device* %48)
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @netif_start_queue(%struct.net_device* %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %43, %40, %22
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.enc28j60_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i64 @netif_msg_ifup(%struct.enc28j60_net*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @enc28j60_lowpower(%struct.enc28j60_net*, i32) #1

declare dso_local i32 @enc28j60_hw_disable(%struct.enc28j60_net*) #1

declare dso_local i32 @enc28j60_hw_init(%struct.enc28j60_net*) #1

declare dso_local i32 @enc28j60_set_hw_macaddr(%struct.net_device*) #1

declare dso_local i32 @enc28j60_hw_enable(%struct.enc28j60_net*) #1

declare dso_local i32 @enc28j60_check_link_status(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
