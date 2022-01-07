; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_flex_parser_1_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_flex_parser_1_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_misc3 }
%struct.mlx5dr_match_misc3 = type { i32, i32, i32, i32, i32, i32 }
%struct.mlx5dr_ste_build = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.dr_hw_ste_format = type { i32* }

@ste_flex_parser_1 = common dso_local global i32 0, align 4
@flex_parser_4 = common dso_local global i32 0, align 4
@ICMP_TYPE_OFFSET_FIRST_DW = common dso_local global i32 0, align 4
@ICMP_CODE_OFFSET_FIRST_DW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@flex_parser_5 = common dso_local global i32 0, align 4
@ICMP_HEADER_DATA_OFFSET_SECOND_DW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_match_param*, %struct.mlx5dr_ste_build*, i32*)* @dr_ste_build_flex_parser_1_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_ste_build_flex_parser_1_tag(%struct.mlx5dr_match_param* %0, %struct.mlx5dr_ste_build* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5dr_match_param*, align 8
  %6 = alloca %struct.mlx5dr_ste_build*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dr_hw_ste_format*, align 8
  %9 = alloca %struct.mlx5dr_match_misc3*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %5, align 8
  store %struct.mlx5dr_ste_build* %1, %struct.mlx5dr_ste_build** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = bitcast i32* %18 to %struct.dr_hw_ste_format*
  store %struct.dr_hw_ste_format* %19, %struct.dr_hw_ste_format** %8, align 8
  %20 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %20, i32 0, i32 0
  store %struct.mlx5dr_match_misc3* %21, %struct.mlx5dr_match_misc3** %9, align 8
  %22 = load %struct.dr_hw_ste_format*, %struct.dr_hw_ste_format** %8, align 8
  %23 = getelementptr inbounds %struct.dr_hw_ste_format, %struct.dr_hw_ste_format* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %10, align 8
  %25 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %9, align 8
  %26 = call i32 @DR_MASK_IS_FLEX_PARSER_ICMPV4_SET(%struct.mlx5dr_match_misc3* %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %3
  %30 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %9, align 8
  %31 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %9, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %14, align 4
  %36 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %9, align 8
  %37 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %15, align 4
  %39 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %6, align 8
  %40 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %13, align 4
  br label %69

49:                                               ; preds = %3
  %50 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %9, align 8
  %51 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  %53 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %9, align 8
  %54 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %14, align 4
  %56 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %9, align 8
  %57 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %15, align 4
  %59 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %6, align 8
  %60 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %12, align 4
  %64 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %6, align 8
  %65 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %49, %29
  %70 = load i32, i32* %12, align 4
  switch i32 %70, label %118 [
    i32 4, label %71
  ]

71:                                               ; preds = %69
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %71
  %75 = load i32, i32* @ste_flex_parser_1, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* @flex_parser_4, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @ICMP_TYPE_OFFSET_FIRST_DW, align 4
  %80 = shl i32 %78, %79
  %81 = call i32 @MLX5_SET(i32 %75, i32* %76, i32 %77, i32 %80)
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %9, align 8
  %86 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  br label %90

87:                                               ; preds = %74
  %88 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %9, align 8
  %89 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %88, i32 0, i32 4
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90, %71
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %91
  %95 = load i32, i32* @ste_flex_parser_1, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* @flex_parser_4, align 4
  %98 = call i32 @MLX5_GET(i32 %95, i32* %96, i32 %97)
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* @ste_flex_parser_1, align 4
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* @flex_parser_4, align 4
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* @ICMP_CODE_OFFSET_FIRST_DW, align 4
  %105 = shl i32 %103, %104
  %106 = or i32 %102, %105
  %107 = call i32 @MLX5_SET(i32 %99, i32* %100, i32 %101, i32 %106)
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %94
  %111 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %9, align 8
  %112 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %111, i32 0, i32 2
  store i32 0, i32* %112, align 4
  br label %116

113:                                              ; preds = %94
  %114 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %9, align 8
  %115 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %114, i32 0, i32 5
  store i32 0, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %110
  br label %117

117:                                              ; preds = %116, %91
  br label %121

118:                                              ; preds = %69
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %148

121:                                              ; preds = %117
  %122 = load i32, i32* %13, align 4
  switch i32 %122, label %144 [
    i32 5, label %123
  ]

123:                                              ; preds = %121
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %123
  %127 = load i32, i32* @ste_flex_parser_1, align 4
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* @flex_parser_5, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @ICMP_HEADER_DATA_OFFSET_SECOND_DW, align 4
  %132 = shl i32 %130, %131
  %133 = call i32 @MLX5_SET(i32 %127, i32* %128, i32 %129, i32 %132)
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %126
  %137 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %9, align 8
  %138 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %137, i32 0, i32 0
  store i32 0, i32* %138, align 4
  br label %142

139:                                              ; preds = %126
  %140 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %9, align 8
  %141 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %140, i32 0, i32 3
  store i32 0, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %136
  br label %143

143:                                              ; preds = %142, %123
  br label %147

144:                                              ; preds = %121
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %148

147:                                              ; preds = %143
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %147, %144, %118
  %149 = load i32, i32* %4, align 4
  ret i32 %149
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
