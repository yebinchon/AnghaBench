; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_cisco.c_cisco_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_cisco.c_cisco_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cisco_state = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i64, i64, %struct.net_device* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Link down\0A\00", align 1
@CISCO_KEEPALIVE_REQ = common dso_local global i32 0, align 4
@st = common dso_local global %struct.cisco_state* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @cisco_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cisco_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.cisco_state*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.cisco_state*, %struct.cisco_state** %3, align 8
  %6 = ptrtoint %struct.cisco_state* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.cisco_state* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.cisco_state* %9, %struct.cisco_state** %3, align 8
  %10 = load %struct.cisco_state*, %struct.cisco_state** %3, align 8
  %11 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %10, i32 0, i32 7
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.cisco_state*, %struct.cisco_state** %3, align 8
  %14 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %13, i32 0, i32 2
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.cisco_state*, %struct.cisco_state** %3, align 8
  %17 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %1
  %21 = load i64, i64* @jiffies, align 8
  %22 = load %struct.cisco_state*, %struct.cisco_state** %3, align 8
  %23 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.cisco_state*, %struct.cisco_state** %3, align 8
  %26 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @HZ, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %24, %31
  %33 = call i64 @time_after(i64 %21, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %20
  %36 = load %struct.cisco_state*, %struct.cisco_state** %3, align 8
  %37 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %36, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = call i32 @netdev_info(%struct.net_device* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = call i32 @netif_dormant_on(%struct.net_device* %40)
  br label %42

42:                                               ; preds = %35, %20, %1
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = load i32, i32* @CISCO_KEEPALIVE_REQ, align 4
  %45 = load %struct.cisco_state*, %struct.cisco_state** %3, align 8
  %46 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = call i32 @htonl(i32 %48)
  %50 = load %struct.cisco_state*, %struct.cisco_state** %3, align 8
  %51 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @htonl(i32 %52)
  %54 = call i32 @cisco_keepalive_send(%struct.net_device* %43, i32 %44, i32 %49, i32 %53)
  %55 = load %struct.cisco_state*, %struct.cisco_state** %3, align 8
  %56 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %55, i32 0, i32 2
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load i64, i64* @jiffies, align 8
  %59 = load %struct.cisco_state*, %struct.cisco_state** %3, align 8
  %60 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @HZ, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %58, %65
  %67 = load %struct.cisco_state*, %struct.cisco_state** %3, align 8
  %68 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  %70 = load %struct.cisco_state*, %struct.cisco_state** %3, align 8
  %71 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %70, i32 0, i32 0
  %72 = call i32 @add_timer(%struct.TYPE_4__* %71)
  ret void
}

declare dso_local %struct.cisco_state* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_dormant_on(%struct.net_device*) #1

declare dso_local i32 @cisco_keepalive_send(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
