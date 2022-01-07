; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_enc28j60.c_enc28j60_rx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_enc28j60.c_enc28j60_rx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enc28j60_net = type { i32 }

@EPKTCNT = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"intRX, pk_cnt: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"RX max_pk_cnt: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @enc28j60_rx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enc28j60_rx_interrupt(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.enc28j60_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.enc28j60_net* @netdev_priv(%struct.net_device* %6)
  store %struct.enc28j60_net* %7, %struct.enc28j60_net** %3, align 8
  %8 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %9 = load i32, i32* @EPKTCNT, align 4
  %10 = call i32 @locked_regb_read(%struct.enc28j60_net* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %15 = call i64 @netif_msg_intr(%struct.enc28j60_net* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, i32* @KERN_DEBUG, align 4
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @netdev_printk(i32 %18, %struct.net_device* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %17, %13, %1
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %25 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %31 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %33 = call i64 @netif_msg_rx_status(%struct.enc28j60_net* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %37 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* @KERN_DEBUG, align 4
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %44 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @netdev_printk(i32 %41, %struct.net_device* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %40, %35, %28
  br label %48

48:                                               ; preds = %47, %22
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %54, %48
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %4, align 4
  %53 = icmp sgt i32 %51, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = call i32 @enc28j60_hw_rx(%struct.net_device* %55)
  br label %50

57:                                               ; preds = %50
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.enc28j60_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @locked_regb_read(%struct.enc28j60_net*, i32) #1

declare dso_local i64 @netif_msg_intr(%struct.enc28j60_net*) #1

declare dso_local i32 @netdev_printk(i32, %struct.net_device*, i8*, i32) #1

declare dso_local i64 @netif_msg_rx_status(%struct.enc28j60_net*) #1

declare dso_local i32 @enc28j60_hw_rx(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
