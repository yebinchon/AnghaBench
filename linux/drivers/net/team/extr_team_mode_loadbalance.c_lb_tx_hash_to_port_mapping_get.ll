; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_tx_hash_to_port_mapping_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_tx_hash_to_port_mapping_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { i32 }
%struct.team_gsetter_ctx = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8 }
%struct.lb_priv = type { i32 }
%struct.team_port = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.team*, %struct.team_gsetter_ctx*)* @lb_tx_hash_to_port_mapping_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lb_tx_hash_to_port_mapping_get(%struct.team* %0, %struct.team_gsetter_ctx* %1) #0 {
  %3 = alloca %struct.team*, align 8
  %4 = alloca %struct.team_gsetter_ctx*, align 8
  %5 = alloca %struct.lb_priv*, align 8
  %6 = alloca %struct.team_port*, align 8
  %7 = alloca i8, align 1
  store %struct.team* %0, %struct.team** %3, align 8
  store %struct.team_gsetter_ctx* %1, %struct.team_gsetter_ctx** %4, align 8
  %8 = load %struct.team*, %struct.team** %3, align 8
  %9 = call %struct.lb_priv* @get_lb_priv(%struct.team* %8)
  store %struct.lb_priv* %9, %struct.lb_priv** %5, align 8
  %10 = load %struct.team_gsetter_ctx*, %struct.team_gsetter_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %7, align 1
  %15 = load %struct.lb_priv*, %struct.lb_priv** %5, align 8
  %16 = load i8, i8* %7, align 1
  %17 = call %struct.team_port* @LB_HTPM_PORT_BY_HASH(%struct.lb_priv* %15, i8 zeroext %16)
  store %struct.team_port* %17, %struct.team_port** %6, align 8
  %18 = load %struct.team_port*, %struct.team_port** %6, align 8
  %19 = icmp ne %struct.team_port* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.team_port*, %struct.team_port** %6, align 8
  %22 = getelementptr inbounds %struct.team_port, %struct.team_port* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %20
  %28 = phi i32 [ %25, %20 ], [ 0, %26 ]
  %29 = load %struct.team_gsetter_ctx*, %struct.team_gsetter_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  ret i32 0
}

declare dso_local %struct.lb_priv* @get_lb_priv(%struct.team*) #1

declare dso_local %struct.team_port* @LB_HTPM_PORT_BY_HASH(%struct.lb_priv*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
