; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_fpga_ipsec_fs_create_flow_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_fpga_ipsec_fs_create_flow_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_flow_root_namespace = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_flow_group = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i8*, %struct.mlx5_flow_group*)* }

@create_flow_group_in = common dso_local global i32 0, align 4
@match_criteria = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@flow_table_properties_nic_receive = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@fte_match_set_misc = common dso_local global i32 0, align 4
@outer_esp_spi = common dso_local global i8 0, align 1
@MLX5_MATCH_MISC_PARAMETERS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i8*, %struct.mlx5_flow_group*, i32)* @fpga_ipsec_fs_create_flow_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpga_ipsec_fs_create_flow_group(%struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_table* %1, i8* %2, %struct.mlx5_flow_group* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %8 = alloca %struct.mlx5_flow_table*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mlx5_flow_group*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i8*, %struct.mlx5_flow_group*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.mlx5_core_dev*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  store %struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_root_namespace** %7, align 8
  store %struct.mlx5_flow_table* %1, %struct.mlx5_flow_table** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.mlx5_flow_group* %3, %struct.mlx5_flow_group** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @egress_to_fs_ft(i32 %18)
  %20 = call %struct.TYPE_6__* @mlx5_fs_cmd_get_default(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i8*, %struct.mlx5_flow_group*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i8*, %struct.mlx5_flow_group*)** %21, align 8
  store i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i8*, %struct.mlx5_flow_group*)* %22, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i8*, %struct.mlx5_flow_group*)** %12, align 8
  %23 = load i32, i32* @create_flow_group_in, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @match_criteria, i32 0, i32 0), align 4
  %26 = call i8* @MLX5_ADDR_OF(i32 %23, i8* %24, i32 %25)
  store i8* %26, i8** %13, align 8
  %27 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %7, align 8
  %28 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %27, i32 0, i32 0
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %28, align 8
  store %struct.mlx5_core_dev* %29, %struct.mlx5_core_dev** %14, align 8
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @flow_table_properties_nic_receive, i32 0, i32 0, i32 0), align 4
  %32 = call i64 @MLX5_CAP_FLOWTABLE(%struct.mlx5_core_dev* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %5
  %35 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i8*, %struct.mlx5_flow_group*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i8*, %struct.mlx5_flow_group*)** %12, align 8
  %36 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %7, align 8
  %37 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %10, align 8
  %40 = call i32 %35(%struct.mlx5_flow_root_namespace* %36, %struct.mlx5_flow_table* %37, i8* %38, %struct.mlx5_flow_group* %39)
  store i32 %40, i32* %6, align 4
  br label %109

41:                                               ; preds = %5
  %42 = load i32, i32* @create_flow_group_in, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = load i8, i8* %16, align 1
  %45 = call signext i8 @MLX5_GET(i32 %42, i8* %43, i8 signext %44)
  store i8 %45, i8* %16, align 1
  %46 = load i32, i32* @fte_match_set_misc, align 4
  %47 = load i8*, i8** %13, align 8
  %48 = load i8, i8* @outer_esp_spi, align 1
  %49 = call signext i8 @MLX5_GET(i32 %46, i8* %47, i8 signext %48)
  store i8 %49, i8* %15, align 1
  %50 = load i8, i8* %16, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i8, i8* %15, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %52, %41
  %56 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i8*, %struct.mlx5_flow_group*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i8*, %struct.mlx5_flow_group*)** %12, align 8
  %57 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %7, align 8
  %58 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %10, align 8
  %61 = call i32 %56(%struct.mlx5_flow_root_namespace* %57, %struct.mlx5_flow_table* %58, i8* %59, %struct.mlx5_flow_group* %60)
  store i32 %61, i32* %6, align 4
  br label %109

62:                                               ; preds = %52
  %63 = load i32, i32* @fte_match_set_misc, align 4
  %64 = load i8*, i8** %13, align 8
  %65 = load i8, i8* @outer_esp_spi, align 1
  %66 = call i32 @MLX5_SET(i32 %63, i8* %64, i8 signext %65, i8 signext 0)
  %67 = load i8*, i8** %13, align 8
  %68 = load i8, i8* %67, align 1
  %69 = icmp ne i8 %68, 0
  br i1 %69, label %91, label %70

70:                                               ; preds = %62
  %71 = load i8*, i8** %13, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i32, i32* @fte_match_set_misc, align 4
  %75 = call i64 @MLX5_ST_SZ_BYTES(i32 %74)
  %76 = sub nsw i64 %75, 1
  %77 = call i32 @memcmp(i8* %71, i8* %73, i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %70
  %80 = load i32, i32* @create_flow_group_in, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = load i8, i8* %16, align 1
  %83 = load i8, i8* %16, align 1
  %84 = sext i8 %83 to i32
  %85 = load i8, i8* @MLX5_MATCH_MISC_PARAMETERS, align 1
  %86 = sext i8 %85 to i32
  %87 = xor i32 %86, -1
  %88 = and i32 %84, %87
  %89 = trunc i32 %88 to i8
  %90 = call i32 @MLX5_SET(i32 %80, i8* %81, i8 signext %82, i8 signext %89)
  br label %91

91:                                               ; preds = %79, %70, %62
  %92 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i8*, %struct.mlx5_flow_group*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i8*, %struct.mlx5_flow_group*)** %12, align 8
  %93 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %7, align 8
  %94 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %10, align 8
  %97 = call i32 %92(%struct.mlx5_flow_root_namespace* %93, %struct.mlx5_flow_table* %94, i8* %95, %struct.mlx5_flow_group* %96)
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* @fte_match_set_misc, align 4
  %99 = load i8*, i8** %13, align 8
  %100 = load i8, i8* @outer_esp_spi, align 1
  %101 = load i8, i8* %15, align 1
  %102 = call i32 @MLX5_SET(i32 %98, i8* %99, i8 signext %100, i8 signext %101)
  %103 = load i32, i32* @create_flow_group_in, align 4
  %104 = load i8*, i8** %9, align 8
  %105 = load i8, i8* %16, align 1
  %106 = load i8, i8* %16, align 1
  %107 = call i32 @MLX5_SET(i32 %103, i8* %104, i8 signext %105, i8 signext %106)
  %108 = load i32, i32* %17, align 4
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %91, %55, %34
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local %struct.TYPE_6__* @mlx5_fs_cmd_get_default(i32) #1

declare dso_local i32 @egress_to_fs_ft(i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i64 @MLX5_CAP_FLOWTABLE(%struct.mlx5_core_dev*, i32) #1

declare dso_local signext i8 @MLX5_GET(i32, i8*, i8 signext) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i8 signext, i8 signext) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i64 @MLX5_ST_SZ_BYTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
