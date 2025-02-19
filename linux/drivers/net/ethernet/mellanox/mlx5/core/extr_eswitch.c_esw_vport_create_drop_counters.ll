; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_vport_create_drop_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_vport_create_drop_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_vport = type { %struct.TYPE_3__, i32, %struct.TYPE_4__, %struct.mlx5_core_dev* }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32* }
%struct.mlx5_core_dev = type { i32 }

@flow_counter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"vport[%d] configure ingress drop rule counter failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"vport[%d] configure egress drop rule counter failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_vport*)* @esw_vport_create_drop_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esw_vport_create_drop_counters(%struct.mlx5_vport* %0) #0 {
  %2 = alloca %struct.mlx5_vport*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_vport* %0, %struct.mlx5_vport** %2, align 8
  %4 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %4, i32 0, i32 3
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5_core_dev* %6, %struct.mlx5_core_dev** %3, align 8
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %8 = load i32, i32* @flow_counter, align 4
  %9 = call i64 @MLX5_CAP_ESW_INGRESS_ACL(%struct.mlx5_core_dev* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %13 = call i8* @mlx5_fc_create(%struct.mlx5_core_dev* %12, i32 0)
  %14 = bitcast i8* %13 to i32*
  %15 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %16 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32* %14, i32** %17, align 8
  %18 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @IS_ERR(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %11
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %26 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %27 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @esw_warn(%struct.mlx5_core_dev* %25, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %31 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %24, %11
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %36 = load i32, i32* @flow_counter, align 4
  %37 = call i64 @MLX5_CAP_ESW_EGRESS_ACL(%struct.mlx5_core_dev* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %41 = call i8* @mlx5_fc_create(%struct.mlx5_core_dev* %40, i32 0)
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %44 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32* %42, i32** %45, align 8
  %46 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %47 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @IS_ERR(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %39
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %54 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %55 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @esw_warn(%struct.mlx5_core_dev* %53, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %59 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %52, %39
  br label %62

62:                                               ; preds = %61, %34
  ret void
}

declare dso_local i64 @MLX5_CAP_ESW_INGRESS_ACL(%struct.mlx5_core_dev*, i32) #1

declare dso_local i8* @mlx5_fc_create(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @esw_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i64 @MLX5_CAP_ESW_EGRESS_ACL(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
