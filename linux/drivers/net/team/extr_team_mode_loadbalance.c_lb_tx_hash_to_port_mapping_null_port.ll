; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_tx_hash_to_port_mapping_null_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_tx_hash_to_port_mapping_null_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { i32 }
%struct.team_port = type { i32 }
%struct.lb_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.lb_port_mapping* }
%struct.lb_port_mapping = type { i32, i32 }

@LB_TX_HASHTABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.team*, %struct.team_port*)* @lb_tx_hash_to_port_mapping_null_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lb_tx_hash_to_port_mapping_null_port(%struct.team* %0, %struct.team_port* %1) #0 {
  %3 = alloca %struct.team*, align 8
  %4 = alloca %struct.team_port*, align 8
  %5 = alloca %struct.lb_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lb_port_mapping*, align 8
  store %struct.team* %0, %struct.team** %3, align 8
  store %struct.team_port* %1, %struct.team_port** %4, align 8
  %9 = load %struct.team*, %struct.team** %3, align 8
  %10 = call %struct.lb_priv* @get_lb_priv(%struct.team* %9)
  store %struct.lb_priv* %10, %struct.lb_priv** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %40, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @LB_TX_HASHTABLE_SIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %11
  %16 = load %struct.lb_priv*, %struct.lb_priv** %5, align 8
  %17 = getelementptr inbounds %struct.lb_priv, %struct.lb_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.lb_port_mapping*, %struct.lb_port_mapping** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.lb_port_mapping, %struct.lb_port_mapping* %20, i64 %22
  store %struct.lb_port_mapping* %23, %struct.lb_port_mapping** %8, align 8
  %24 = load %struct.lb_port_mapping*, %struct.lb_port_mapping** %8, align 8
  %25 = getelementptr inbounds %struct.lb_port_mapping, %struct.lb_port_mapping* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.team_port* @rcu_access_pointer(i32 %26)
  %28 = load %struct.team_port*, %struct.team_port** %4, align 8
  %29 = icmp eq %struct.team_port* %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %15
  %31 = load %struct.lb_port_mapping*, %struct.lb_port_mapping** %8, align 8
  %32 = getelementptr inbounds %struct.lb_port_mapping, %struct.lb_port_mapping* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @RCU_INIT_POINTER(i32 %33, i32* null)
  %35 = load %struct.lb_port_mapping*, %struct.lb_port_mapping** %8, align 8
  %36 = getelementptr inbounds %struct.lb_port_mapping, %struct.lb_port_mapping* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @team_option_inst_set_change(i32 %37)
  store i32 1, i32* %6, align 4
  br label %39

39:                                               ; preds = %30, %15
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %11

43:                                               ; preds = %11
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.team*, %struct.team** %3, align 8
  %48 = call i32 @team_options_change_check(%struct.team* %47)
  br label %49

49:                                               ; preds = %46, %43
  ret void
}

declare dso_local %struct.lb_priv* @get_lb_priv(%struct.team*) #1

declare dso_local %struct.team_port* @rcu_access_pointer(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @team_option_inst_set_change(i32) #1

declare dso_local i32 @team_options_change_check(%struct.team*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
