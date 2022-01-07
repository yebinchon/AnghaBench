; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sched.c_cxgb4_sched_class_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sched.c_cxgb4_sched_class_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_class = type { i32 }
%struct.net_device = type { i32 }
%struct.ch_sched_params = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.port_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sched_class* @cxgb4_sched_class_alloc(%struct.net_device* %0, %struct.ch_sched_params* %1) #0 {
  %3 = alloca %struct.sched_class*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ch_sched_params*, align 8
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ch_sched_params* %1, %struct.ch_sched_params** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.port_info* @netdev2pinfo(%struct.net_device* %8)
  store %struct.port_info* %9, %struct.port_info** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call i32 @can_sched(%struct.net_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.sched_class* null, %struct.sched_class** %3, align 8
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.ch_sched_params*, %struct.ch_sched_params** %5, align 8
  %16 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @valid_class_id(%struct.net_device* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  store %struct.sched_class* null, %struct.sched_class** %3, align 8
  br label %29

25:                                               ; preds = %14
  %26 = load %struct.port_info*, %struct.port_info** %6, align 8
  %27 = load %struct.ch_sched_params*, %struct.ch_sched_params** %5, align 8
  %28 = call %struct.sched_class* @t4_sched_class_alloc(%struct.port_info* %26, %struct.ch_sched_params* %27)
  store %struct.sched_class* %28, %struct.sched_class** %3, align 8
  br label %29

29:                                               ; preds = %25, %24, %13
  %30 = load %struct.sched_class*, %struct.sched_class** %3, align 8
  ret %struct.sched_class* %30
}

declare dso_local %struct.port_info* @netdev2pinfo(%struct.net_device*) #1

declare dso_local i32 @can_sched(%struct.net_device*) #1

declare dso_local i32 @valid_class_id(%struct.net_device*, i32) #1

declare dso_local %struct.sched_class* @t4_sched_class_alloc(%struct.port_info*, %struct.ch_sched_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
