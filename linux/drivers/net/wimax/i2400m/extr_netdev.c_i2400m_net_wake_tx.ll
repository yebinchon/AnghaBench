; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_net_wake_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_net_wake_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"(skb %p net_dev %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"WAKE&NETTX: skb %p sending %d bytes to radio\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"NETTX: device exiting idle, dropping skb %p, queue running %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"(skb %p net_dev %p) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400m*, %struct.net_device*, %struct.sk_buff*)* @i2400m_net_wake_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_net_wake_tx(%struct.i2400m* %0, %struct.net_device* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  store %struct.i2400m* %0, %struct.i2400m** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %11 = call %struct.device* @i2400m_dev(%struct.i2400m* %10)
  store %struct.device* %11, %struct.device** %8, align 8
  %12 = load %struct.device*, %struct.device** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call i32 @d_fnstart(i32 3, %struct.device* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %13, %struct.net_device* %14)
  %16 = call i64 (...) @net_ratelimit()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = load %struct.device*, %struct.device** %8, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @d_printf(i32 3, %struct.device* %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %20, i32 %23)
  %25 = load %struct.device*, %struct.device** %8, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @d_dump(i32 4, %struct.device* %25, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %18, %3
  store i32 0, i32* %7, align 4
  %34 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %35 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %34, i32 0, i32 0
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %39 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %33
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = call i32 @netif_stop_queue(%struct.net_device* %43)
  %45 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %46 = call i32 @i2400m_get(%struct.i2400m* %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call i32 @skb_get(%struct.sk_buff* %47)
  %49 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %50 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = call i32 @i2400m_tx_prep_header(%struct.sk_buff* %51)
  %53 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %54 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %53, i32 0, i32 1
  %55 = call i32 @schedule_work(i32* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @WARN_ON(i32 %58)
  br label %60

60:                                               ; preds = %42, %33
  %61 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %62 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %61, i32 0, i32 0
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %60
  %68 = call i64 (...) @net_ratelimit()
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.device*, %struct.device** %8, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = call i32 @netif_queue_stopped(%struct.net_device* %73)
  %75 = call i32 @d_printf(i32 1, %struct.device* %71, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %72, i32 %74)
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %76, %60
  %80 = load %struct.device*, %struct.device** %8, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = load %struct.net_device*, %struct.net_device** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @d_fnend(i32 3, %struct.device* %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), %struct.sk_buff* %81, %struct.net_device* %82, i32 %83)
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, %struct.sk_buff*, i32) #1

declare dso_local i32 @d_dump(i32, %struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @i2400m_get(%struct.i2400m*) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @i2400m_tx_prep_header(%struct.sk_buff*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.sk_buff*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
