; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_fw.c_mlx5dr_fw_create_recalc_cs_ft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_fw.c_mlx5dr_fw_create_recalc_cs_ft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_fw_recalc_cs_ft = type { i8*, i8*, i64, i8* }
%struct.mlx5dr_domain = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MLX5_FLOW_TABLE_TYPE_FDB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed creating TTL W/A FW flow table %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed creating TTL W/A FW flow group %d\0A\00", align 1
@set_action_in = common dso_local global i32 0, align 4
@action_type = common dso_local global i32 0, align 4
@MLX5_ACTION_TYPE_ADD = common dso_local global i32 0, align 4
@field = common dso_local global i32 0, align 4
@MLX5_ACTION_IN_FIELD_OUT_IP_TTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed modify header TTL %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed setting TTL W/A flow table entry %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5dr_fw_recalc_cs_ft* @mlx5dr_fw_create_recalc_cs_ft(%struct.mlx5dr_domain* %0, i8* %1) #0 {
  %3 = alloca %struct.mlx5dr_fw_recalc_cs_ft*, align 8
  %4 = alloca %struct.mlx5dr_domain*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mlx5dr_fw_recalc_cs_ft*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mlx5dr_fw_recalc_cs_ft* @kzalloc(i32 32, i32 %13)
  store %struct.mlx5dr_fw_recalc_cs_ft* %14, %struct.mlx5dr_fw_recalc_cs_ft** %6, align 8
  %15 = load %struct.mlx5dr_fw_recalc_cs_ft*, %struct.mlx5dr_fw_recalc_cs_ft** %6, align 8
  %16 = icmp ne %struct.mlx5dr_fw_recalc_cs_ft* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.mlx5dr_fw_recalc_cs_ft* null, %struct.mlx5dr_fw_recalc_cs_ft** %3, align 8
  br label %123

18:                                               ; preds = %2
  %19 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MLX5_FLOW_TABLE_TYPE_FDB, align 4
  %23 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, 1
  %29 = call i32 @mlx5dr_cmd_create_flow_table(i32 %21, i32 %22, i32 0, i32 0, i64 %28, i32 0, i32 1, i64* %10, i8** %7)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %18
  %33 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @mlx5dr_err(%struct.mlx5dr_domain* %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %120

36:                                               ; preds = %18
  %37 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MLX5_FLOW_TABLE_TYPE_FDB, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @mlx5dr_cmd_create_empty_flow_group(i32 %39, i32 %40, i8* %41, i8** %8)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @mlx5dr_err(%struct.mlx5dr_domain* %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %113

49:                                               ; preds = %36
  store i64 0, i64* %11, align 8
  %50 = load i32, i32* @set_action_in, align 4
  %51 = load i32, i32* @action_type, align 4
  %52 = load i32, i32* @MLX5_ACTION_TYPE_ADD, align 4
  %53 = call i32 @MLX5_SET(i32 %50, i64* %11, i32 %51, i32 %52)
  %54 = load i32, i32* @set_action_in, align 4
  %55 = load i32, i32* @field, align 4
  %56 = load i32, i32* @MLX5_ACTION_IN_FIELD_OUT_IP_TTL, align 4
  %57 = call i32 @MLX5_SET(i32 %54, i64* %11, i32 %55, i32 %56)
  %58 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %59 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MLX5_FLOW_TABLE_TYPE_FDB, align 4
  %62 = call i32 @mlx5dr_cmd_alloc_modify_header(i32 %60, i32 %61, i32 1, i64* %11, i8** %9)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %49
  %66 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @mlx5dr_err(%struct.mlx5dr_domain* %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %105

69:                                               ; preds = %49
  %70 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %71 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MLX5_FLOW_TABLE_TYPE_FDB, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @mlx5dr_cmd_set_fte_modify_and_vport(i32 %72, i32 %73, i8* %74, i8* %75, i8* %76, i8* %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %69
  %82 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @mlx5dr_err(%struct.mlx5dr_domain* %82, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  br label %99

85:                                               ; preds = %69
  %86 = load i8*, i8** %9, align 8
  %87 = load %struct.mlx5dr_fw_recalc_cs_ft*, %struct.mlx5dr_fw_recalc_cs_ft** %6, align 8
  %88 = getelementptr inbounds %struct.mlx5dr_fw_recalc_cs_ft, %struct.mlx5dr_fw_recalc_cs_ft* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load %struct.mlx5dr_fw_recalc_cs_ft*, %struct.mlx5dr_fw_recalc_cs_ft** %6, align 8
  %91 = getelementptr inbounds %struct.mlx5dr_fw_recalc_cs_ft, %struct.mlx5dr_fw_recalc_cs_ft* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load %struct.mlx5dr_fw_recalc_cs_ft*, %struct.mlx5dr_fw_recalc_cs_ft** %6, align 8
  %94 = getelementptr inbounds %struct.mlx5dr_fw_recalc_cs_ft, %struct.mlx5dr_fw_recalc_cs_ft* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load %struct.mlx5dr_fw_recalc_cs_ft*, %struct.mlx5dr_fw_recalc_cs_ft** %6, align 8
  %97 = getelementptr inbounds %struct.mlx5dr_fw_recalc_cs_ft, %struct.mlx5dr_fw_recalc_cs_ft* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load %struct.mlx5dr_fw_recalc_cs_ft*, %struct.mlx5dr_fw_recalc_cs_ft** %6, align 8
  store %struct.mlx5dr_fw_recalc_cs_ft* %98, %struct.mlx5dr_fw_recalc_cs_ft** %3, align 8
  br label %123

99:                                               ; preds = %81
  %100 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %101 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @mlx5dr_cmd_dealloc_modify_header(i32 %102, i8* %103)
  br label %105

105:                                              ; preds = %99, %65
  %106 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %107 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @MLX5_FLOW_TABLE_TYPE_FDB, align 4
  %110 = load i8*, i8** %7, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @mlx5dr_cmd_destroy_flow_group(i32 %108, i32 %109, i8* %110, i8* %111)
  br label %113

113:                                              ; preds = %105, %45
  %114 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %115 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = load i32, i32* @MLX5_FLOW_TABLE_TYPE_FDB, align 4
  %119 = call i32 @mlx5dr_cmd_destroy_flow_table(i32 %116, i8* %117, i32 %118)
  br label %120

120:                                              ; preds = %113, %32
  %121 = load %struct.mlx5dr_fw_recalc_cs_ft*, %struct.mlx5dr_fw_recalc_cs_ft** %6, align 8
  %122 = call i32 @kfree(%struct.mlx5dr_fw_recalc_cs_ft* %121)
  store %struct.mlx5dr_fw_recalc_cs_ft* null, %struct.mlx5dr_fw_recalc_cs_ft** %3, align 8
  br label %123

123:                                              ; preds = %120, %85, %17
  %124 = load %struct.mlx5dr_fw_recalc_cs_ft*, %struct.mlx5dr_fw_recalc_cs_ft** %3, align 8
  ret %struct.mlx5dr_fw_recalc_cs_ft* %124
}

declare dso_local %struct.mlx5dr_fw_recalc_cs_ft* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5dr_cmd_create_flow_table(i32, i32, i32, i32, i64, i32, i32, i64*, i8**) #1

declare dso_local i32 @mlx5dr_err(%struct.mlx5dr_domain*, i8*, i32) #1

declare dso_local i32 @mlx5dr_cmd_create_empty_flow_group(i32, i32, i8*, i8**) #1

declare dso_local i32 @MLX5_SET(i32, i64*, i32, i32) #1

declare dso_local i32 @mlx5dr_cmd_alloc_modify_header(i32, i32, i32, i64*, i8**) #1

declare dso_local i32 @mlx5dr_cmd_set_fte_modify_and_vport(i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @mlx5dr_cmd_dealloc_modify_header(i32, i8*) #1

declare dso_local i32 @mlx5dr_cmd_destroy_flow_group(i32, i32, i8*, i8*) #1

declare dso_local i32 @mlx5dr_cmd_destroy_flow_table(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.mlx5dr_fw_recalc_cs_ft*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
