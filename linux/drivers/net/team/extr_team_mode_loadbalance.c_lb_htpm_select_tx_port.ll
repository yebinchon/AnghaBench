; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_htpm_select_tx_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_htpm_select_tx_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team_port = type { i32 }
%struct.team = type { i32 }
%struct.lb_priv = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.team_port* (%struct.team*, %struct.lb_priv*, %struct.sk_buff*, i8)* @lb_htpm_select_tx_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.team_port* @lb_htpm_select_tx_port(%struct.team* %0, %struct.lb_priv* %1, %struct.sk_buff* %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.team_port*, align 8
  %6 = alloca %struct.team*, align 8
  %7 = alloca %struct.lb_priv*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.team_port*, align 8
  store %struct.team* %0, %struct.team** %6, align 8
  store %struct.lb_priv* %1, %struct.lb_priv** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i8 %3, i8* %9, align 1
  %11 = load %struct.lb_priv*, %struct.lb_priv** %7, align 8
  %12 = load i8, i8* %9, align 1
  %13 = call i32 @LB_HTPM_PORT_BY_HASH(%struct.lb_priv* %11, i8 zeroext %12)
  %14 = call %struct.team_port* @rcu_dereference_bh(i32 %13)
  store %struct.team_port* %14, %struct.team_port** %10, align 8
  %15 = load %struct.team_port*, %struct.team_port** %10, align 8
  %16 = call i64 @likely(%struct.team_port* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load %struct.team_port*, %struct.team_port** %10, align 8
  store %struct.team_port* %19, %struct.team_port** %5, align 8
  br label %26

20:                                               ; preds = %4
  %21 = load %struct.team*, %struct.team** %6, align 8
  %22 = load %struct.lb_priv*, %struct.lb_priv** %7, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = load i8, i8* %9, align 1
  %25 = call %struct.team_port* @lb_hash_select_tx_port(%struct.team* %21, %struct.lb_priv* %22, %struct.sk_buff* %23, i8 zeroext %24)
  store %struct.team_port* %25, %struct.team_port** %5, align 8
  br label %26

26:                                               ; preds = %20, %18
  %27 = load %struct.team_port*, %struct.team_port** %5, align 8
  ret %struct.team_port* %27
}

declare dso_local %struct.team_port* @rcu_dereference_bh(i32) #1

declare dso_local i32 @LB_HTPM_PORT_BY_HASH(%struct.lb_priv*, i8 zeroext) #1

declare dso_local i64 @likely(%struct.team_port*) #1

declare dso_local %struct.team_port* @lb_hash_select_tx_port(%struct.team*, %struct.lb_priv*, %struct.sk_buff*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
