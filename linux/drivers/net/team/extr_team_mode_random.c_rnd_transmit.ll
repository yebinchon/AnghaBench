; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_random.c_rnd_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_random.c_rnd_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { i32 }
%struct.sk_buff = type { i32 }
%struct.team_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.team*, %struct.sk_buff*)* @rnd_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rnd_transmit(%struct.team* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.team*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.team_port*, align 8
  %7 = alloca i32, align 4
  store %struct.team* %0, %struct.team** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.team*, %struct.team** %4, align 8
  %9 = getelementptr inbounds %struct.team, %struct.team* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @prandom_u32_max(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.team*, %struct.team** %4, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.team_port* @team_get_port_by_index_rcu(%struct.team* %12, i32 %13)
  store %struct.team_port* %14, %struct.team_port** %6, align 8
  %15 = load %struct.team_port*, %struct.team_port** %6, align 8
  %16 = icmp ne %struct.team_port* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %41

22:                                               ; preds = %2
  %23 = load %struct.team*, %struct.team** %4, align 8
  %24 = load %struct.team_port*, %struct.team_port** %6, align 8
  %25 = call %struct.team_port* @team_get_first_port_txable_rcu(%struct.team* %23, %struct.team_port* %24)
  store %struct.team_port* %25, %struct.team_port** %6, align 8
  %26 = load %struct.team_port*, %struct.team_port** %6, align 8
  %27 = icmp ne %struct.team_port* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %41

33:                                               ; preds = %22
  %34 = load %struct.team*, %struct.team** %4, align 8
  %35 = load %struct.team_port*, %struct.team_port** %6, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i64 @team_dev_queue_xmit(%struct.team* %34, %struct.team_port* %35, %struct.sk_buff* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %44

40:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %44

41:                                               ; preds = %32, %21
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %40, %39
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @prandom_u32_max(i32) #1

declare dso_local %struct.team_port* @team_get_port_by_index_rcu(%struct.team*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.team_port* @team_get_first_port_txable_rcu(%struct.team*, %struct.team_port*) #1

declare dso_local i64 @team_dev_queue_xmit(%struct.team*, %struct.team_port*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
