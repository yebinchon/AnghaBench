; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_debugfs.c_qp_read_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_debugfs.c_qp_read_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_core_qp = type { i32 }
%struct.mlx5_qp_context = type { i32, i32, i32, i32, i32 }

@query_qp_out = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to query qp err=%d\0A\00", align 1
@qpc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_core_qp*, i32, i32*)* @qp_read_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_read_field(%struct.mlx5_core_dev* %0, %struct.mlx5_core_qp* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.mlx5_core_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx5_qp_context*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store %struct.mlx5_core_qp* %1, %struct.mlx5_core_qp** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* @query_qp_out, align 4
  %17 = call i32 @MLX5_ST_SZ_BYTES(i32 %16)
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @kzalloc(i32 %18, i32 %19)
  store i32* %20, i32** %13, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %131

25:                                               ; preds = %4
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %27 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %7, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @mlx5_core_qp_query(%struct.mlx5_core_dev* %26, %struct.mlx5_core_qp* %27, i32* %28, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %127

37:                                               ; preds = %25
  %38 = load i32*, i32** %9, align 8
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* @query_qp_out, align 4
  %40 = load i32*, i32** %13, align 8
  %41 = load i32, i32* @qpc, align 4
  %42 = call i64 @MLX5_ADDR_OF(i32 %39, i32* %40, i32 %41)
  %43 = inttoptr i64 %42 to %struct.mlx5_qp_context*
  store %struct.mlx5_qp_context* %43, %struct.mlx5_qp_context** %11, align 8
  %44 = load i32, i32* %8, align 4
  switch i32 %44, label %126 [
    i32 132, label %45
    i32 129, label %49
    i32 128, label %58
    i32 135, label %68
    i32 134, label %80
    i32 131, label %87
    i32 133, label %94
    i32 136, label %111
    i32 130, label %120
  ]

45:                                               ; preds = %37
  %46 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %7, align 8
  %47 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  br label %126

49:                                               ; preds = %37
  %50 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %11, align 8
  %51 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @be32_to_cpu(i32 %52)
  %54 = ashr i32 %53, 28
  %55 = call i64 @mlx5_qp_state_str(i32 %54)
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %12, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 1, i32* %57, align 4
  br label %126

58:                                               ; preds = %37
  %59 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %11, align 8
  %60 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @be32_to_cpu(i32 %61)
  %63 = ashr i32 %62, 16
  %64 = and i32 %63, 255
  %65 = call i64 @mlx5_qp_type_str(i32 %64)
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %12, align 4
  %67 = load i32*, i32** %9, align 8
  store i32 1, i32* %67, align 4
  br label %126

68:                                               ; preds = %37
  %69 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %11, align 8
  %70 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 5
  switch i32 %72, label %78 [
    i32 139, label %73
    i32 137, label %74
    i32 141, label %75
    i32 140, label %76
    i32 138, label %77
  ]

73:                                               ; preds = %68
  store i32 256, i32* %12, align 4
  br label %79

74:                                               ; preds = %68
  store i32 512, i32* %12, align 4
  br label %79

75:                                               ; preds = %68
  store i32 1024, i32* %12, align 4
  br label %79

76:                                               ; preds = %68
  store i32 2048, i32* %12, align 4
  br label %79

77:                                               ; preds = %68
  store i32 4096, i32* %12, align 4
  br label %79

78:                                               ; preds = %68
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %78, %77, %76, %75, %74, %73
  br label %126

80:                                               ; preds = %37
  %81 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %11, align 8
  %82 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 3
  %85 = and i32 %84, 15
  %86 = shl i32 1, %85
  store i32 %86, i32* %12, align 4
  br label %126

87:                                               ; preds = %37
  %88 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %11, align 8
  %89 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 7
  %92 = add nsw i32 %91, 4
  %93 = shl i32 1, %92
  store i32 %93, i32* %12, align 4
  br label %126

94:                                               ; preds = %37
  %95 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %11, align 8
  %96 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @be16_to_cpu(i32 %97)
  %99 = ashr i32 %98, 15
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %94
  %103 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %11, align 8
  %104 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @be16_to_cpu(i32 %105)
  %107 = ashr i32 %106, 11
  %108 = shl i32 1, %107
  store i32 %108, i32* %12, align 4
  br label %110

109:                                              ; preds = %94
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %109, %102
  br label %126

111:                                              ; preds = %37
  %112 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %11, align 8
  %113 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @be32_to_cpu(i32 %114)
  %116 = ashr i32 %115, 24
  %117 = and i32 %116, 31
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 12
  store i32 %119, i32* %12, align 4
  br label %126

120:                                              ; preds = %37
  %121 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %11, align 8
  %122 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @be32_to_cpu(i32 %123)
  %125 = and i32 %124, 16777215
  store i32 %125, i32* %12, align 4
  br label %126

126:                                              ; preds = %37, %120, %111, %110, %87, %80, %79, %58, %49, %45
  br label %127

127:                                              ; preds = %126, %33
  %128 = load i32*, i32** %13, align 8
  %129 = call i32 @kfree(i32* %128)
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %127, %23
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_core_qp_query(%struct.mlx5_core_dev*, %struct.mlx5_core_qp*, i32*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i64 @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i64 @mlx5_qp_state_str(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @mlx5_qp_type_str(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
