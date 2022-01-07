; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_vport_disable_qos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_vport_disable_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32 }
%struct.mlx5_vport = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@SCHEDULING_HIERARCHY_E_SWITCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"E-Switch destroy TSAR vport element failed (vport=%d,err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_eswitch*, %struct.mlx5_vport*)* @esw_vport_disable_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esw_vport_disable_qos(%struct.mlx5_eswitch* %0, %struct.mlx5_vport* %1) #0 {
  %3 = alloca %struct.mlx5_eswitch*, align 8
  %4 = alloca %struct.mlx5_vport*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %3, align 8
  store %struct.mlx5_vport* %1, %struct.mlx5_vport** %4, align 8
  %6 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %37

12:                                               ; preds = %2
  %13 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SCHEDULING_HIERARCHY_E_SWITCH, align 4
  %17 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mlx5_destroy_scheduling_element_cmd(i32 %15, i32 %16, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %12
  %25 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @esw_warn(i32 %27, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %24, %12
  %34 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %35 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %11
  ret void
}

declare dso_local i32 @mlx5_destroy_scheduling_element_cmd(i32, i32, i32) #1

declare dso_local i32 @esw_warn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
