; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_dev_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_dev_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.dev_priv = type { i32, %struct.ksz_port, %struct.dev_info*, %struct.TYPE_3__ }
%struct.ksz_port = type { i32 }
%struct.dev_info = type { %struct.ksz_hw }
%struct.ksz_hw = type { i32 }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.timer_list = type { i32 }

@monitor_timer_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@LINK_INT_WORKING = common dso_local global i32 0, align 4
@priv = common dso_local global %struct.dev_priv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @dev_monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dev_monitor(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.dev_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dev_info*, align 8
  %6 = alloca %struct.ksz_hw*, align 8
  %7 = alloca %struct.ksz_port*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %9 = ptrtoint %struct.dev_priv* %8 to i32
  %10 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @monitor_timer_info, i32 0, i32 0), align 4
  %12 = call %struct.dev_priv* @from_timer(i32 %9, %struct.timer_list* %10, i32 %11)
  store %struct.dev_priv* %12, %struct.dev_priv** %3, align 8
  %13 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %14 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %4, align 8
  %17 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %18 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %17, i32 0, i32 2
  %19 = load %struct.dev_info*, %struct.dev_info** %18, align 8
  store %struct.dev_info* %19, %struct.dev_info** %5, align 8
  %20 = load %struct.dev_info*, %struct.dev_info** %5, align 8
  %21 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %20, i32 0, i32 0
  store %struct.ksz_hw* %21, %struct.ksz_hw** %6, align 8
  %22 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %23 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %22, i32 0, i32 1
  store %struct.ksz_port* %23, %struct.ksz_port** %7, align 8
  %24 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %25 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LINK_INT_WORKING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load %struct.ksz_port*, %struct.ksz_port** %7, align 8
  %32 = call i32 @port_get_link_speed(%struct.ksz_port* %31)
  br label %33

33:                                               ; preds = %30, %1
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %36 = load %struct.ksz_port*, %struct.ksz_port** %7, align 8
  %37 = call i32 @update_link(%struct.net_device* %34, %struct.dev_priv* %35, %struct.ksz_port* %36)
  %38 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %39 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %38, i32 0, i32 0
  %40 = call i32 @ksz_update_timer(i32* %39)
  ret void
}

declare dso_local %struct.dev_priv* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @port_get_link_speed(%struct.ksz_port*) #1

declare dso_local i32 @update_link(%struct.net_device*, %struct.dev_priv*, %struct.ksz_port*) #1

declare dso_local i32 @ksz_update_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
