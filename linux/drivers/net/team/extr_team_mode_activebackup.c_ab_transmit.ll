; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_activebackup.c_ab_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_activebackup.c_ab_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { i32 }
%struct.sk_buff = type { i32 }
%struct.team_port = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.team*, %struct.sk_buff*)* @ab_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab_transmit(%struct.team* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.team*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.team_port*, align 8
  store %struct.team* %0, %struct.team** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.team*, %struct.team** %4, align 8
  %8 = call %struct.TYPE_2__* @ab_priv(%struct.team* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.team_port* @rcu_dereference_bh(i32 %10)
  store %struct.team_port* %11, %struct.team_port** %6, align 8
  %12 = load %struct.team_port*, %struct.team_port** %6, align 8
  %13 = icmp ne %struct.team_port* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.team*, %struct.team** %4, align 8
  %21 = load %struct.team_port*, %struct.team_port** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i64 @team_dev_queue_xmit(%struct.team* %20, %struct.team_port* %21, %struct.sk_buff* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %30

26:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %30

27:                                               ; preds = %18
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %26, %25
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.team_port* @rcu_dereference_bh(i32) #1

declare dso_local %struct.TYPE_2__* @ab_priv(%struct.team*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @team_dev_queue_xmit(%struct.team*, %struct.team_port*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
