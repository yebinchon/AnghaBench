; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c___mlx5_eswitch_set_vport_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c___mlx5_eswitch_set_vport_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i64, i32 }
%struct.mlx5_vport = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX5_ESWITCH_LEGACY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mlx5_eswitch_set_vport_vlan(%struct.mlx5_eswitch* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_eswitch*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5_vport*, align 8
  %13 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.mlx5_vport* @mlx5_eswitch_get_vport(%struct.mlx5_eswitch* %14, i32 %15)
  store %struct.mlx5_vport* %16, %struct.mlx5_vport** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %7, align 8
  %18 = call i32 @ESW_ALLOWED(%struct.mlx5_eswitch* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %85

23:                                               ; preds = %5
  %24 = load %struct.mlx5_vport*, %struct.mlx5_vport** %12, align 8
  %25 = call i64 @IS_ERR(%struct.mlx5_vport* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.mlx5_vport*, %struct.mlx5_vport** %12, align 8
  %29 = call i32 @PTR_ERR(%struct.mlx5_vport* %28)
  store i32 %29, i32* %6, align 4
  br label %85

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %31, 4095
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 7
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %85

39:                                               ; preds = %33
  %40 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %7, align 8
  %41 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @modify_esw_vport_cvlan(i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %6, align 4
  br label %85

52:                                               ; preds = %39
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.mlx5_vport*, %struct.mlx5_vport** %12, align 8
  %55 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.mlx5_vport*, %struct.mlx5_vport** %12, align 8
  %59 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.mlx5_vport*, %struct.mlx5_vport** %12, align 8
  %62 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %52
  %66 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %7, align 8
  %67 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MLX5_ESWITCH_LEGACY, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %65
  %72 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %7, align 8
  %73 = load %struct.mlx5_vport*, %struct.mlx5_vport** %12, align 8
  %74 = call i32 @esw_vport_ingress_config(%struct.mlx5_eswitch* %72, %struct.mlx5_vport* %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %6, align 4
  br label %85

79:                                               ; preds = %71
  %80 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %7, align 8
  %81 = load %struct.mlx5_vport*, %struct.mlx5_vport** %12, align 8
  %82 = call i32 @esw_vport_egress_config(%struct.mlx5_eswitch* %80, %struct.mlx5_vport* %81)
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %79, %65, %52
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %77, %50, %36, %27, %20
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local %struct.mlx5_vport* @mlx5_eswitch_get_vport(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @ESW_ALLOWED(%struct.mlx5_eswitch*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_vport*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_vport*) #1

declare dso_local i32 @modify_esw_vport_cvlan(i32, i32, i32, i32, i32) #1

declare dso_local i32 @esw_vport_ingress_config(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #1

declare dso_local i32 @esw_vport_egress_config(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
