; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_disable_vport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_disable_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i64, i64, i32, i32, i32, i32 }
%struct.mlx5_vport = type { i64, i32, i64 }

@.str = private unnamed_addr constant [21 x i8] c"Disabling vport(%d)\0A\00", align 1
@MLX5_ESWITCH_LEGACY = common dso_local global i64 0, align 8
@MLX5_VPORT_STATE_OP_MOD_ESW_VPORT = common dso_local global i32 0, align 4
@MLX5_VPORT_ADMIN_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_eswitch*, %struct.mlx5_vport*)* @esw_disable_vport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esw_disable_vport(%struct.mlx5_eswitch* %0, %struct.mlx5_vport* %1) #0 {
  %3 = alloca %struct.mlx5_eswitch*, align 8
  %4 = alloca %struct.mlx5_vport*, align 8
  %5 = alloca i64, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %3, align 8
  store %struct.mlx5_vport* %1, %struct.mlx5_vport** %4, align 8
  %6 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %78

14:                                               ; preds = %2
  %15 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @esw_debug(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %20, i32 0, i32 1
  store i32 0, i32* %21, align 8
  %22 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @flush_workqueue(i32 %24)
  %26 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %27 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @arm_vport_context_events_cmd(i32 %28, i64 %31, i32 0)
  %33 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %33, i32 0, i32 2
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %37 = call i32 @esw_vport_change_handle_locked(%struct.mlx5_vport* %36)
  %38 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %39 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %41 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %42 = call i32 @esw_vport_disable_qos(%struct.mlx5_eswitch* %40, %struct.mlx5_vport* %41)
  %43 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %44 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %14
  %49 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %50 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MLX5_ESWITCH_LEGACY, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %56 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @MLX5_VPORT_STATE_OP_MOD_ESW_VPORT, align 4
  %59 = load i64, i64* %5, align 8
  %60 = load i32, i32* @MLX5_VPORT_ADMIN_STATE_DOWN, align 4
  %61 = call i32 @mlx5_modify_vport_admin_state(i32 %57, i32 %58, i64 %59, i32 1, i32 %60)
  %62 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %63 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %64 = call i32 @esw_vport_disable_egress_acl(%struct.mlx5_eswitch* %62, %struct.mlx5_vport* %63)
  %65 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %66 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %67 = call i32 @esw_vport_disable_ingress_acl(%struct.mlx5_eswitch* %65, %struct.mlx5_vport* %66)
  %68 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %69 = call i32 @esw_vport_destroy_drop_counters(%struct.mlx5_vport* %68)
  br label %70

70:                                               ; preds = %54, %48, %14
  %71 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %72 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %76 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %75, i32 0, i32 2
  %77 = call i32 @mutex_unlock(i32* %76)
  br label %78

78:                                               ; preds = %70, %13
  ret void
}

declare dso_local i32 @esw_debug(i32, i8*, i64) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @arm_vport_context_events_cmd(i32, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @esw_vport_change_handle_locked(%struct.mlx5_vport*) #1

declare dso_local i32 @esw_vport_disable_qos(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #1

declare dso_local i32 @mlx5_modify_vport_admin_state(i32, i32, i64, i32, i32) #1

declare dso_local i32 @esw_vport_disable_egress_acl(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #1

declare dso_local i32 @esw_vport_disable_ingress_acl(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #1

declare dso_local i32 @esw_vport_destroy_drop_counters(%struct.mlx5_vport*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
