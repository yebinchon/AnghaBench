; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_add_vlan_action_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_add_vlan_action_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_esw_flow_attr = type { i64*, %struct.TYPE_2__*, %struct.mlx5_eswitch_rep* }
%struct.TYPE_2__ = type { %struct.mlx5_eswitch_rep* }
%struct.mlx5_eswitch_rep = type { i64, i64, i64 }

@MLX5_VPORT_UPLINK = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_esw_flow_attr*, i32, i32, i32)* @esw_add_vlan_action_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esw_add_vlan_action_check(%struct.mlx5_esw_flow_attr* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_esw_flow_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_eswitch_rep*, align 8
  %11 = alloca %struct.mlx5_eswitch_rep*, align 8
  store %struct.mlx5_esw_flow_attr* %0, %struct.mlx5_esw_flow_attr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  br label %92

21:                                               ; preds = %17, %14
  %22 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %23 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %22, i32 0, i32 2
  %24 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %23, align 8
  store %struct.mlx5_eswitch_rep* %24, %struct.mlx5_eswitch_rep** %10, align 8
  %25 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %26 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %29, align 8
  store %struct.mlx5_eswitch_rep* %30, %struct.mlx5_eswitch_rep** %11, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %21
  %34 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %10, align 8
  %35 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MLX5_VPORT_UPLINK, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %92

40:                                               ; preds = %33, %21
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %11, align 8
  %45 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MLX5_VPORT_UPLINK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %92

50:                                               ; preds = %43, %40
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %72, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %10, align 8
  %61 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %11, align 8
  %66 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MLX5_VPORT_UPLINK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %92

71:                                               ; preds = %64, %59
  br label %72

72:                                               ; preds = %71, %56, %53, %50
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %10, align 8
  %77 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %10, align 8
  %82 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %85 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %83, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %92

91:                                               ; preds = %80, %75, %72
  store i32 0, i32* %5, align 4
  br label %95

92:                                               ; preds = %90, %70, %49, %39, %20
  %93 = load i32, i32* @EOPNOTSUPP, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %92, %91
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
