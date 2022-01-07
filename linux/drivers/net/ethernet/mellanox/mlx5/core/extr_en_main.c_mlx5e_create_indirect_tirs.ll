; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_create_indirect_tirs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_create_indirect_tirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.mlx5e_tir*, i32, %struct.mlx5e_tir* }
%struct.mlx5e_tir = type { i32 }

@create_tir_in = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5E_NUM_INDIR_TIRS = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"create indirect tirs failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"create inner indirect tirs failed, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_create_indirect_tirs(%struct.mlx5e_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_tir*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @create_tir_in, align 4
  %14 = call i32 @MLX5_ST_SZ_BYTES(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kvzalloc(i32 %15, i32 %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %165

23:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %62, %23
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @MLX5E_NUM_INDIR_TIRS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %24
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @memset(i32* %29, i32 0, i32 %30)
  %32 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %32, i32 0, i32 0
  %34 = load %struct.mlx5e_tir*, %struct.mlx5e_tir** %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mlx5e_tir, %struct.mlx5e_tir* %34, i64 %36
  store %struct.mlx5e_tir* %37, %struct.mlx5e_tir** %6, align 8
  %38 = load i32, i32* @create_tir_in, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* @ctx, align 4
  %41 = call i8* @MLX5_ADDR_OF(i32 %38, i32* %39, i32 %40)
  store i8* %41, i8** %7, align 8
  %42 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @mlx5e_build_indir_tir_ctx(%struct.mlx5e_priv* %42, i32 %43, i8* %44)
  %46 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %47 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.mlx5e_tir*, %struct.mlx5e_tir** %6, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @mlx5e_create_tir(i32 %48, %struct.mlx5e_tir* %49, i32* %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %28
  %56 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %57 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @mlx5_core_warn(i32 %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %121

61:                                               ; preds = %28
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %24

65:                                               ; preds = %24
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %70 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @mlx5e_tunnel_inner_ft_supported(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68, %65
  br label %118

75:                                               ; preds = %68
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %114, %75
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @MLX5E_NUM_INDIR_TIRS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %117

80:                                               ; preds = %76
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @memset(i32* %81, i32 0, i32 %82)
  %84 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %85 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %84, i32 0, i32 2
  %86 = load %struct.mlx5e_tir*, %struct.mlx5e_tir** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.mlx5e_tir, %struct.mlx5e_tir* %86, i64 %88
  store %struct.mlx5e_tir* %89, %struct.mlx5e_tir** %6, align 8
  %90 = load i32, i32* @create_tir_in, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* @ctx, align 4
  %93 = call i8* @MLX5_ADDR_OF(i32 %90, i32* %91, i32 %92)
  store i8* %93, i8** %7, align 8
  %94 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 @mlx5e_build_inner_indir_tir_ctx(%struct.mlx5e_priv* %94, i32 %95, i8* %96)
  %98 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %99 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.mlx5e_tir*, %struct.mlx5e_tir** %6, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @mlx5e_create_tir(i32 %100, %struct.mlx5e_tir* %101, i32* %102, i32 %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %80
  %108 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %109 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @mlx5_core_warn(i32 %110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  br label %121

113:                                              ; preds = %80
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %76

117:                                              ; preds = %76
  br label %118

118:                                              ; preds = %117, %74
  %119 = load i32*, i32** %11, align 8
  %120 = call i32 @kvfree(i32* %119)
  store i32 0, i32* %3, align 4
  br label %165

121:                                              ; preds = %107, %55
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %138, %121
  %125 = load i32, i32* %9, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %124
  %128 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %129 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %132 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %131, i32 0, i32 2
  %133 = load %struct.mlx5e_tir*, %struct.mlx5e_tir** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.mlx5e_tir, %struct.mlx5e_tir* %133, i64 %135
  %137 = call i32 @mlx5e_destroy_tir(i32 %130, %struct.mlx5e_tir* %136)
  br label %138

138:                                              ; preds = %127
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %9, align 4
  br label %124

141:                                              ; preds = %124
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %12, align 4
  br label %144

144:                                              ; preds = %158, %141
  %145 = load i32, i32* %12, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %144
  %148 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %149 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %152 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %151, i32 0, i32 0
  %153 = load %struct.mlx5e_tir*, %struct.mlx5e_tir** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.mlx5e_tir, %struct.mlx5e_tir* %153, i64 %155
  %157 = call i32 @mlx5e_destroy_tir(i32 %150, %struct.mlx5e_tir* %156)
  br label %158

158:                                              ; preds = %147
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %12, align 4
  br label %144

161:                                              ; preds = %144
  %162 = load i32*, i32** %11, align 8
  %163 = call i32 @kvfree(i32* %162)
  %164 = load i32, i32* %10, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %161, %118, %20
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @kvzalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @mlx5e_build_indir_tir_ctx(%struct.mlx5e_priv*, i32, i8*) #1

declare dso_local i32 @mlx5e_create_tir(i32, %struct.mlx5e_tir*, i32*, i32) #1

declare dso_local i32 @mlx5_core_warn(i32, i8*, i32) #1

declare dso_local i32 @mlx5e_tunnel_inner_ft_supported(i32) #1

declare dso_local i32 @mlx5e_build_inner_indir_tir_ctx(%struct.mlx5e_priv*, i32, i8*) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @mlx5e_destroy_tir(i32, %struct.mlx5e_tir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
