; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_vport_ingress_common_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_vport_ingress_common_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32 }
%struct.mlx5_vport = type { i32 }

@prio_tag_required = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failed to enable ingress acl (%d) on vport[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"vport[%d] configure ingress rules\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*, %struct.mlx5_vport*)* @esw_vport_ingress_common_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esw_vport_ingress_common_config(%struct.mlx5_eswitch* %0, %struct.mlx5_vport* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca %struct.mlx5_vport*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store %struct.mlx5_vport* %1, %struct.mlx5_vport** %5, align 8
  %7 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %8 = call i64 @mlx5_eswitch_vport_match_metadata_enabled(%struct.mlx5_eswitch* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @prio_tag_required, align 4
  %15 = call i64 @MLX5_CAP_GEN(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %88

18:                                               ; preds = %10, %2
  %19 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %20 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %21 = call i32 @esw_vport_cleanup_ingress_rules(%struct.mlx5_eswitch* %19, %struct.mlx5_vport* %20)
  %22 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %23 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %24 = call i32 @esw_vport_enable_ingress_acl(%struct.mlx5_eswitch* %22, %struct.mlx5_vport* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @esw_warn(i32 %30, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %88

37:                                               ; preds = %18
  %38 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %39 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %42 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @esw_debug(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %46 = call i64 @mlx5_eswitch_vport_match_metadata_enabled(%struct.mlx5_eswitch* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %37
  %49 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %50 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %51 = call i32 @esw_vport_add_ingress_acl_modify_metadata(%struct.mlx5_eswitch* %49, %struct.mlx5_vport* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %79

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %37
  %57 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %58 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @prio_tag_required, align 4
  %61 = call i64 @MLX5_CAP_GEN(i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %56
  %64 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %65 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %66 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @mlx5_eswitch_is_vf_vport(%struct.mlx5_eswitch* %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %72 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %73 = call i32 @esw_vport_ingress_prio_tag_config(%struct.mlx5_eswitch* %71, %struct.mlx5_vport* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %79

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %63, %56
  br label %79

79:                                               ; preds = %78, %76, %54
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %84 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %85 = call i32 @esw_vport_disable_ingress_acl(%struct.mlx5_eswitch* %83, %struct.mlx5_vport* %84)
  br label %86

86:                                               ; preds = %82, %79
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %27, %17
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @mlx5_eswitch_vport_match_metadata_enabled(%struct.mlx5_eswitch*) #1

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @esw_vport_cleanup_ingress_rules(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #1

declare dso_local i32 @esw_vport_enable_ingress_acl(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #1

declare dso_local i32 @esw_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @esw_debug(i32, i8*, i32) #1

declare dso_local i32 @esw_vport_add_ingress_acl_modify_metadata(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #1

declare dso_local i64 @mlx5_eswitch_is_vf_vport(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @esw_vport_ingress_prio_tag_config(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #1

declare dso_local i32 @esw_vport_disable_ingress_acl(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
