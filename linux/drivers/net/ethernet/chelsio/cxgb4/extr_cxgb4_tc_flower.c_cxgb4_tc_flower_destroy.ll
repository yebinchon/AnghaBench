; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_flower.c_cxgb4_tc_flower_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_flower.c_cxgb4_tc_flower_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.adapter = type { i32, i32 }
%struct.ch_tc_flower_entry = type { i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Flow remove from rhashtable failed\00", align 1
@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_tc_flower_destroy(%struct.net_device* %0, %struct.flow_cls_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.flow_cls_offload*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.ch_tc_flower_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.adapter* @netdev2adap(%struct.net_device* %9)
  store %struct.adapter* %10, %struct.adapter** %6, align 8
  %11 = load %struct.adapter*, %struct.adapter** %6, align 8
  %12 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %13 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ch_tc_flower_entry* @ch_flower_lookup(%struct.adapter* %11, i32 %14)
  store %struct.ch_tc_flower_entry* %15, %struct.ch_tc_flower_entry** %7, align 8
  %16 = load %struct.ch_tc_flower_entry*, %struct.ch_tc_flower_entry** %7, align 8
  %17 = icmp ne %struct.ch_tc_flower_entry* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %52

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = load %struct.ch_tc_flower_entry*, %struct.ch_tc_flower_entry** %7, align 8
  %24 = getelementptr inbounds %struct.ch_tc_flower_entry, %struct.ch_tc_flower_entry* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ch_tc_flower_entry*, %struct.ch_tc_flower_entry** %7, align 8
  %27 = getelementptr inbounds %struct.ch_tc_flower_entry, %struct.ch_tc_flower_entry* %26, i32 0, i32 1
  %28 = call i32 @cxgb4_del_filter(%struct.net_device* %22, i32 %25, i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %50

32:                                               ; preds = %21
  %33 = load %struct.adapter*, %struct.adapter** %6, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 1
  %35 = load %struct.ch_tc_flower_entry*, %struct.ch_tc_flower_entry** %7, align 8
  %36 = getelementptr inbounds %struct.ch_tc_flower_entry, %struct.ch_tc_flower_entry* %35, i32 0, i32 0
  %37 = load %struct.adapter*, %struct.adapter** %6, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rhashtable_remove_fast(i32* %34, i32* %36, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call i32 @netdev_err(%struct.net_device* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %50

46:                                               ; preds = %32
  %47 = load %struct.ch_tc_flower_entry*, %struct.ch_tc_flower_entry** %7, align 8
  %48 = load i32, i32* @rcu, align 4
  %49 = call i32 @kfree_rcu(%struct.ch_tc_flower_entry* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %43, %31
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %18
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local %struct.ch_tc_flower_entry* @ch_flower_lookup(%struct.adapter*, i32) #1

declare dso_local i32 @cxgb4_del_filter(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @kfree_rcu(%struct.ch_tc_flower_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
