; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_enable_vport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_enable_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i64, i64, i32, i32, i32 }
%struct.mlx5_vport = type { i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Enabling VPORT(%d)\0A\00", align 1
@MLX5_ESWITCH_LEGACY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to attach vport %d to eswitch rate limiter\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Enabled VPORT(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_eswitch*, %struct.mlx5_vport*, i32)* @esw_enable_vport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esw_enable_vport(%struct.mlx5_eswitch* %0, %struct.mlx5_vport* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca %struct.mlx5_vport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store %struct.mlx5_vport* %1, %struct.mlx5_vport** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %9 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @esw_debug(i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %27 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MLX5_ESWITCH_LEGACY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %33 = call i32 @esw_vport_create_drop_counters(%struct.mlx5_vport* %32)
  br label %34

34:                                               ; preds = %31, %25, %3
  %35 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %36 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %37 = call i32 @esw_apply_vport_conf(%struct.mlx5_eswitch* %35, %struct.mlx5_vport* %36)
  %38 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %39 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %40 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %45 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @esw_vport_enable_qos(%struct.mlx5_eswitch* %38, %struct.mlx5_vport* %39, i32 %43, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %34
  %51 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @esw_warn(i32 %53, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %50, %34
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %59 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %61 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %60, i32 0, i32 1
  store i32 1, i32* %61, align 8
  %62 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %63 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %76, label %67

67:                                               ; preds = %56
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %67
  %71 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %72 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @mlx5_core_is_ecpf(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70, %56
  %77 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %78 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %76, %70, %67
  %81 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %82 = call i32 @esw_vport_change_handle_locked(%struct.mlx5_vport* %81)
  %83 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %84 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  %87 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %88 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @esw_debug(i32 %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %90)
  %92 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %93 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %92, i32 0, i32 2
  %94 = call i32 @mutex_unlock(i32* %93)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @esw_debug(i32, i8*, i64) #1

declare dso_local i32 @esw_vport_create_drop_counters(%struct.mlx5_vport*) #1

declare dso_local i32 @esw_apply_vport_conf(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #1

declare dso_local i64 @esw_vport_enable_qos(%struct.mlx5_eswitch*, %struct.mlx5_vport*, i32, i32) #1

declare dso_local i32 @esw_warn(i32, i8*, i64) #1

declare dso_local i64 @mlx5_core_is_ecpf(i32) #1

declare dso_local i32 @esw_vport_change_handle_locked(%struct.mlx5_vport*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
