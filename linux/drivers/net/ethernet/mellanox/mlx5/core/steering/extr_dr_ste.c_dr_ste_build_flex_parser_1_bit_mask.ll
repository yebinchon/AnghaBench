; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_flex_parser_1_bit_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_flex_parser_1_bit_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_misc3 }
%struct.mlx5dr_match_misc3 = type { i32, i32, i32, i32, i32, i32 }
%struct.mlx5dr_cmd_caps = type { i32, i32, i32, i32 }

@ste_flex_parser_1 = common dso_local global i32 0, align 4
@flex_parser_4 = common dso_local global i32 0, align 4
@ICMP_TYPE_OFFSET_FIRST_DW = common dso_local global i32 0, align 4
@ICMP_CODE_OFFSET_FIRST_DW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@flex_parser_5 = common dso_local global i32 0, align 4
@ICMP_HEADER_DATA_OFFSET_SECOND_DW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_match_param*, %struct.mlx5dr_cmd_caps*, i32*)* @dr_ste_build_flex_parser_1_bit_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_ste_build_flex_parser_1_bit_mask(%struct.mlx5dr_match_param* %0, %struct.mlx5dr_cmd_caps* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5dr_match_param*, align 8
  %6 = alloca %struct.mlx5dr_cmd_caps*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mlx5dr_match_misc3*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %5, align 8
  store %struct.mlx5dr_cmd_caps* %1, %struct.mlx5dr_cmd_caps** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %16, i32 0, i32 0
  store %struct.mlx5dr_match_misc3* %17, %struct.mlx5dr_match_misc3** %8, align 8
  %18 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %19 = call i32 @DR_MASK_IS_FLEX_PARSER_ICMPV4_SET(%struct.mlx5dr_match_misc3* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %3
  %23 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %24 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %27 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %30 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %6, align 8
  %33 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %6, align 8
  %36 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %14, align 4
  br label %54

38:                                               ; preds = %3
  %39 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %40 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  %42 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %43 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %46 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  %48 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %6, align 8
  %49 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %13, align 4
  %51 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %6, align 8
  %52 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %38, %22
  %55 = load i32, i32* %13, align 4
  switch i32 %55, label %103 [
    i32 4, label %56
  ]

56:                                               ; preds = %54
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = load i32, i32* @ste_flex_parser_1, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* @flex_parser_4, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @ICMP_TYPE_OFFSET_FIRST_DW, align 4
  %65 = shl i32 %63, %64
  %66 = call i32 @MLX5_SET(i32 %60, i32* %61, i32 %62, i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %71 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  br label %75

72:                                               ; preds = %59
  %73 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %74 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %73, i32 0, i32 4
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %75, %56
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %76
  %80 = load i32, i32* @ste_flex_parser_1, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* @flex_parser_4, align 4
  %83 = call i32 @MLX5_GET(i32 %80, i32* %81, i32 %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* @ste_flex_parser_1, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* @flex_parser_4, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @ICMP_CODE_OFFSET_FIRST_DW, align 4
  %90 = shl i32 %88, %89
  %91 = or i32 %87, %90
  %92 = call i32 @MLX5_SET(i32 %84, i32* %85, i32 %86, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %79
  %96 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %97 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %96, i32 0, i32 2
  store i32 0, i32* %97, align 4
  br label %101

98:                                               ; preds = %79
  %99 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %100 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %99, i32 0, i32 5
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101, %76
  br label %106

103:                                              ; preds = %54
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %133

106:                                              ; preds = %102
  %107 = load i32, i32* %14, align 4
  switch i32 %107, label %129 [
    i32 5, label %108
  ]

108:                                              ; preds = %106
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %108
  %112 = load i32, i32* @ste_flex_parser_1, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* @flex_parser_5, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @ICMP_HEADER_DATA_OFFSET_SECOND_DW, align 4
  %117 = shl i32 %115, %116
  %118 = call i32 @MLX5_SET(i32 %112, i32* %113, i32 %114, i32 %117)
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %111
  %122 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %123 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %122, i32 0, i32 0
  store i32 0, i32* %123, align 4
  br label %127

124:                                              ; preds = %111
  %125 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %126 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %125, i32 0, i32 3
  store i32 0, i32* %126, align 4
  br label %127

127:                                              ; preds = %124, %121
  br label %128

128:                                              ; preds = %127, %108
  br label %132

129:                                              ; preds = %106
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %133

132:                                              ; preds = %128
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %129, %103
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @DR_MASK_IS_FLEX_PARSER_ICMPV4_SET(%struct.mlx5dr_match_misc3*) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @MLX5_GET(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
