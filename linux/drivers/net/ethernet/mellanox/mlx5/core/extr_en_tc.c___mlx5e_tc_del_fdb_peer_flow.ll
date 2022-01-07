; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c___mlx5e_tc_del_fdb_peer_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c___mlx5e_tc_del_fdb_peer_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_tc_flow = type { %struct.TYPE_11__*, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ESWITCH = common dso_local global i32 0, align 4
@DUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_tc_flow*)* @__mlx5e_tc_del_fdb_peer_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mlx5e_tc_del_fdb_peer_flow(%struct.mlx5e_tc_flow* %0) #0 {
  %2 = alloca %struct.mlx5e_tc_flow*, align 8
  %3 = alloca %struct.mlx5_eswitch*, align 8
  store %struct.mlx5e_tc_flow* %0, %struct.mlx5e_tc_flow** %2, align 8
  %4 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %4, i32 0, i32 2
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %10, align 8
  store %struct.mlx5_eswitch* %11, %struct.mlx5_eswitch** %3, align 8
  %12 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %2, align 8
  %13 = load i32, i32* @ESWITCH, align 4
  %14 = call i32 @flow_flag_test(%struct.mlx5e_tc_flow* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %2, align 8
  %18 = load i32, i32* @DUP, align 4
  %19 = call i32 @flow_flag_test(%struct.mlx5e_tc_flow* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %1
  br label %52

22:                                               ; preds = %16
  %23 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %2, align 8
  %28 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %27, i32 0, i32 1
  %29 = call i32 @list_del(i32* %28)
  %30 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %2, align 8
  %35 = load i32, i32* @DUP, align 4
  %36 = call i32 @flow_flag_clear(%struct.mlx5e_tc_flow* %34, i32 %35)
  %37 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %2, align 8
  %38 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %2, align 8
  %43 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = call i32 @mlx5e_tc_del_fdb_flow(i32 %41, %struct.TYPE_11__* %44)
  %46 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %2, align 8
  %47 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = call i32 @kvfree(%struct.TYPE_11__* %48)
  %50 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %2, align 8
  %51 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %50, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %51, align 8
  br label %52

52:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @flow_flag_test(%struct.mlx5e_tc_flow*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @flow_flag_clear(%struct.mlx5e_tc_flow*, i32) #1

declare dso_local i32 @mlx5e_tc_del_fdb_flow(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @kvfree(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
