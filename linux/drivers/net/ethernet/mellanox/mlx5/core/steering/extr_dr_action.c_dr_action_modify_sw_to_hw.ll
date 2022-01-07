; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_action_modify_sw_to_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_action_modify_sw_to_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { i32 }
%struct.dr_action_modify_field_conv = type { i32, i32, i32 }

@set_action_in = common dso_local global i32 0, align 4
@action_type = common dso_local global i32 0, align 4
@field = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Modify action invalid field given\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX5DR_ACTION_MDFY_HW_OP_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Modify action length + offset exceeds limit\0A\00", align 1
@MLX5DR_ACTION_MDFY_HW_OP_ADD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Unsupported action_type for modify action\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@dr_action_hw_set = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@destination_field_code = common dso_local global i32 0, align 4
@destination_left_shifter = common dso_local global i32 0, align 4
@destination_length = common dso_local global i32 0, align 4
@inline_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_domain*, i32*, i32*, %struct.dr_action_modify_field_conv**)* @dr_action_modify_sw_to_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_action_modify_sw_to_hw(%struct.mlx5dr_domain* %0, i32* %1, i32* %2, %struct.dr_action_modify_field_conv** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5dr_domain*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dr_action_modify_field_conv**, align 8
  %10 = alloca %struct.dr_action_modify_field_conv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.dr_action_modify_field_conv** %3, %struct.dr_action_modify_field_conv*** %9, align 8
  %18 = load i32, i32* @set_action_in, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* @action_type, align 4
  %21 = call i8* @MLX5_GET(i32 %18, i32* %19, i32 %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* @set_action_in, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i8* @MLX5_GET(i32 %23, i32* %24, i32 %25)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* @set_action_in, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i8* @MLX5_GET(i32 %28, i32* %29, i32 %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @set_action_in, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @field, align 4
  %36 = call i8* @MLX5_GET(i32 %33, i32* %34, i32 %35)
  store i8* %36, i8** %15, align 8
  %37 = load i32, i32* @set_action_in, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %17, align 4
  %40 = call i8* @MLX5_GET(i32 %37, i32* %38, i32 %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %17, align 4
  %42 = load i8*, i8** %15, align 8
  %43 = call %struct.dr_action_modify_field_conv* @dr_action_modify_get_hw_info(i8* %42)
  store %struct.dr_action_modify_field_conv* %43, %struct.dr_action_modify_field_conv** %10, align 8
  %44 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** %10, align 8
  %45 = icmp ne %struct.dr_action_modify_field_conv* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %4
  %47 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %48 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %126

51:                                               ; preds = %4
  %52 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** %10, align 8
  %53 = getelementptr inbounds %struct.dr_action_modify_field_conv, %struct.dr_action_modify_field_conv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** %10, align 8
  %56 = getelementptr inbounds %struct.dr_action_modify_field_conv, %struct.dr_action_modify_field_conv* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %54, %57
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  switch i32 %60, label %81 [
    i32 128, label %61
    i32 129, label %78
  ]

61:                                               ; preds = %51
  %62 = load i32, i32* @MLX5DR_ACTION_MDFY_HW_OP_SET, align 4
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  store i32 32, i32* %12, align 4
  br label %66

66:                                               ; preds = %65, %61
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %13, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %74 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %73, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %126

77:                                               ; preds = %66
  br label %86

78:                                               ; preds = %51
  %79 = load i32, i32* @MLX5DR_ACTION_MDFY_HW_OP_ADD, align 4
  store i32 %79, i32* %16, align 4
  store i32 0, i32* %11, align 4
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %12, align 4
  br label %86

81:                                               ; preds = %51
  %82 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %83 = call i32 @mlx5dr_info(%struct.mlx5dr_domain* %82, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @EOPNOTSUPP, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %126

86:                                               ; preds = %78, %77
  %87 = load i32, i32* @dr_action_hw_set, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* @opcode, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @MLX5_SET(i32 %87, i32* %88, i32 %89, i32 %90)
  %92 = load i32, i32* @dr_action_hw_set, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* @destination_field_code, align 4
  %95 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** %10, align 8
  %96 = getelementptr inbounds %struct.dr_action_modify_field_conv, %struct.dr_action_modify_field_conv* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @MLX5_SET(i32 %92, i32* %93, i32 %94, i32 %97)
  %99 = load i32, i32* @dr_action_hw_set, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* @destination_left_shifter, align 4
  %102 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** %10, align 8
  %103 = getelementptr inbounds %struct.dr_action_modify_field_conv, %struct.dr_action_modify_field_conv* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %104, %105
  %107 = call i32 @MLX5_SET(i32 %99, i32* %100, i32 %101, i32 %106)
  %108 = load i32, i32* @dr_action_hw_set, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* @destination_length, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp eq i32 %111, 32
  br i1 %112, label %113, label %114

113:                                              ; preds = %86
  br label %116

114:                                              ; preds = %86
  %115 = load i32, i32* %12, align 4
  br label %116

116:                                              ; preds = %114, %113
  %117 = phi i32 [ 0, %113 ], [ %115, %114 ]
  %118 = call i32 @MLX5_SET(i32 %108, i32* %109, i32 %110, i32 %117)
  %119 = load i32, i32* @dr_action_hw_set, align 4
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* @inline_data, align 4
  %122 = load i32, i32* %17, align 4
  %123 = call i32 @MLX5_SET(i32 %119, i32* %120, i32 %121, i32 %122)
  %124 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** %10, align 8
  %125 = load %struct.dr_action_modify_field_conv**, %struct.dr_action_modify_field_conv*** %9, align 8
  store %struct.dr_action_modify_field_conv* %124, %struct.dr_action_modify_field_conv** %125, align 8
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %116, %81, %72, %46
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i8* @MLX5_GET(i32, i32*, i32) #1

declare dso_local %struct.dr_action_modify_field_conv* @dr_action_modify_get_hw_info(i8*) #1

declare dso_local i32 @mlx5dr_dbg(%struct.mlx5dr_domain*, i8*) #1

declare dso_local i32 @mlx5dr_info(%struct.mlx5dr_domain*, i8*) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
