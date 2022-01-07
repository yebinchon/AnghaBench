; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_actions_convert_modify_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_actions_convert_modify_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { i32 }
%struct.dr_action_modify_field_conv = type { i32, i32, i64 }

@MLX5DR_ACTION_MDFY_HW_FLD_RESERVED = common dso_local global i64 0, align 8
@MLX5DR_ACTION_MDFY_HW_HDR_L3_NONE = common dso_local global i32 0, align 4
@MLX5DR_ACTION_MDFY_HW_HDR_L4_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Action list can't support two different L3 types\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Action list can't support two different L4 types\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Modify header action number exceeds HW limit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_domain*, i32, i32, i32*, i32*, i32*, i32*)* @dr_actions_convert_modify_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_actions_convert_modify_header(%struct.mlx5dr_domain* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5dr_domain*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.dr_action_modify_field_conv*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %25 = load i64, i64* @MLX5DR_ACTION_MDFY_HW_FLD_RESERVED, align 8
  store i64 %25, i64* %17, align 8
  %26 = load i32, i32* @MLX5DR_ACTION_MDFY_HW_HDR_L3_NONE, align 4
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* @MLX5DR_ACTION_MDFY_HW_HDR_L4_NONE, align 4
  store i32 %27, i32* %19, align 4
  store i32 0, i32* %22, align 4
  %28 = load i32*, i32** %15, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %21, align 4
  br label %29

29:                                               ; preds = %154, %7
  %30 = load i32, i32* %21, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %157

33:                                               ; preds = %29
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %21, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32* %37, i32** %23, align 8
  %38 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %9, align 8
  %39 = load i32*, i32** %23, align 8
  %40 = call i32 @dr_action_modify_check_field_limitation(%struct.mlx5dr_domain* %38, i32* %39)
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %20, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %20, align 4
  store i32 %44, i32* %8, align 4
  br label %160

45:                                               ; preds = %33
  %46 = load i32*, i32** %15, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32*, i32** %23, align 8
  %51 = call i32 @dr_action_modify_check_is_ttl_modify(i32* %50)
  %52 = load i32*, i32** %15, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %9, align 8
  %55 = load i32*, i32** %23, align 8
  %56 = call i32 @dr_action_modify_sw_to_hw(%struct.mlx5dr_domain* %54, i32* %55, i32* %24, %struct.dr_action_modify_field_conv** %16)
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* %20, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %20, align 4
  store i32 %60, i32* %8, align 4
  br label %160

61:                                               ; preds = %53
  %62 = load i32, i32* %18, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %61
  %65 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** %16, align 8
  %66 = getelementptr inbounds %struct.dr_action_modify_field_conv, %struct.dr_action_modify_field_conv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** %16, align 8
  %71 = getelementptr inbounds %struct.dr_action_modify_field_conv, %struct.dr_action_modify_field_conv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %18, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %9, align 8
  %77 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %76, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %8, align 4
  br label %160

80:                                               ; preds = %69, %64, %61
  %81 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** %16, align 8
  %82 = getelementptr inbounds %struct.dr_action_modify_field_conv, %struct.dr_action_modify_field_conv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** %16, align 8
  %87 = getelementptr inbounds %struct.dr_action_modify_field_conv, %struct.dr_action_modify_field_conv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %18, align 4
  br label %89

89:                                               ; preds = %85, %80
  %90 = load i32, i32* %19, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %89
  %93 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** %16, align 8
  %94 = getelementptr inbounds %struct.dr_action_modify_field_conv, %struct.dr_action_modify_field_conv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %92
  %98 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** %16, align 8
  %99 = getelementptr inbounds %struct.dr_action_modify_field_conv, %struct.dr_action_modify_field_conv* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %19, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %9, align 8
  %105 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %104, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %8, align 4
  br label %160

108:                                              ; preds = %97, %92, %89
  %109 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** %16, align 8
  %110 = getelementptr inbounds %struct.dr_action_modify_field_conv, %struct.dr_action_modify_field_conv* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** %16, align 8
  %115 = getelementptr inbounds %struct.dr_action_modify_field_conv, %struct.dr_action_modify_field_conv* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %19, align 4
  br label %117

117:                                              ; preds = %113, %108
  %118 = load i32, i32* %22, align 4
  %119 = srem i32 %118, 2
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %117
  %122 = load i64, i64* %17, align 8
  %123 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** %16, align 8
  %124 = getelementptr inbounds %struct.dr_action_modify_field_conv, %struct.dr_action_modify_field_conv* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %122, %125
  br i1 %126, label %127, label %143

127:                                              ; preds = %121
  %128 = load i32, i32* %22, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %22, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %22, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32, i32* %21, align 4
  %134 = sub nsw i32 %132, %133
  %135 = load i32, i32* %10, align 4
  %136 = icmp sge i32 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %127
  %138 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %9, align 8
  %139 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %138, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %8, align 4
  br label %160

142:                                              ; preds = %127
  br label %143

143:                                              ; preds = %142, %121, %117
  %144 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** %16, align 8
  %145 = getelementptr inbounds %struct.dr_action_modify_field_conv, %struct.dr_action_modify_field_conv* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %17, align 8
  %147 = load i32, i32* %24, align 4
  %148 = load i32*, i32** %13, align 8
  %149 = load i32, i32* %22, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %147, i32* %151, align 4
  %152 = load i32, i32* %22, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %22, align 4
  br label %154

154:                                              ; preds = %143
  %155 = load i32, i32* %21, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %21, align 4
  br label %29

157:                                              ; preds = %29
  %158 = load i32, i32* %22, align 4
  %159 = load i32*, i32** %14, align 8
  store i32 %158, i32* %159, align 4
  store i32 0, i32* %8, align 4
  br label %160

160:                                              ; preds = %157, %137, %103, %75, %59, %43
  %161 = load i32, i32* %8, align 4
  ret i32 %161
}

declare dso_local i32 @dr_action_modify_check_field_limitation(%struct.mlx5dr_domain*, i32*) #1

declare dso_local i32 @dr_action_modify_check_is_ttl_modify(i32*) #1

declare dso_local i32 @dr_action_modify_sw_to_hw(%struct.mlx5dr_domain*, i32*, i32*, %struct.dr_action_modify_field_conv**) #1

declare dso_local i32 @mlx5dr_dbg(%struct.mlx5dr_domain*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
