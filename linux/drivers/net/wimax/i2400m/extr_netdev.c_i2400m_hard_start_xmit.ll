; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.i2400m = type { i64 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"(skb %p net_dev %p)\0A\00", align 1
@I2400M_SS_IDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"(skb %p net_dev %p) = %d\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @i2400m_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.i2400m*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.i2400m* @net_dev_to_i2400m(%struct.net_device* %8)
  store %struct.i2400m* %9, %struct.i2400m** %5, align 8
  %10 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %11 = call %struct.device* @i2400m_dev(%struct.i2400m* %10)
  store %struct.device* %11, %struct.device** %6, align 8
  store i32 -1, i32* %7, align 4
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call i32 @d_fnstart(i32 3, %struct.device* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %13, %struct.net_device* %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i64 @skb_cow_head(%struct.sk_buff* %16, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %40

20:                                               ; preds = %2
  %21 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %22 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @I2400M_SS_IDLE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = call i32 @i2400m_net_wake_tx(%struct.i2400m* %27, %struct.net_device* %28, %struct.sk_buff* %29)
  store i32 %30, i32* %7, align 4
  br label %36

31:                                               ; preds = %20
  %32 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = call i32 @i2400m_net_tx(%struct.i2400m* %32, %struct.net_device* %33, %struct.sk_buff* %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %39, %19
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %62

46:                                               ; preds = %36
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %54
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  br label %62

62:                                               ; preds = %46, %40
  %63 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %64 = call i32 @dev_kfree_skb(%struct.sk_buff* %63)
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @d_fnend(i32 3, %struct.device* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %66, %struct.net_device* %67, i32 %68)
  %70 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %70
}

declare dso_local %struct.i2400m* @net_dev_to_i2400m(%struct.net_device*) #1

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @i2400m_net_wake_tx(%struct.i2400m*, %struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @i2400m_net_tx(%struct.i2400m*, %struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.sk_buff*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
