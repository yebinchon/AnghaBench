; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_select_tx_port_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_select_tx_port_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lb_select_tx_port = type { i8*, i32* }

@LB_SELECT_TX_PORT_LIST_COUNT = common dso_local global i32 0, align 4
@lb_select_tx_port_list = common dso_local global %struct.lb_select_tx_port* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @lb_select_tx_port_get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lb_select_tx_port_get_name(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lb_select_tx_port*, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @LB_SELECT_TX_PORT_LIST_COUNT, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = load %struct.lb_select_tx_port*, %struct.lb_select_tx_port** @lb_select_tx_port_list, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.lb_select_tx_port, %struct.lb_select_tx_port* %11, i64 %13
  store %struct.lb_select_tx_port* %14, %struct.lb_select_tx_port** %5, align 8
  %15 = load %struct.lb_select_tx_port*, %struct.lb_select_tx_port** %5, align 8
  %16 = getelementptr inbounds %struct.lb_select_tx_port, %struct.lb_select_tx_port* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp eq i32* %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %10
  %21 = load %struct.lb_select_tx_port*, %struct.lb_select_tx_port** %5, align 8
  %22 = getelementptr inbounds %struct.lb_select_tx_port, %struct.lb_select_tx_port* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %2, align 8
  br label %29

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %6

28:                                               ; preds = %6
  store i8* null, i8** %2, align 8
  br label %29

29:                                               ; preds = %28, %20
  %30 = load i8*, i8** %2, align 8
  ret i8* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
