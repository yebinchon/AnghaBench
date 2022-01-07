; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_vport.c_mlx5_query_hca_vport_pkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_vport.c_mlx5_query_hca_vport_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@query_hca_vport_pkey_in = common dso_local global i32* null, align 8
@query_hca_vport_pkey_out = common dso_local global i32* null, align 8
@vport_group_manager = common dso_local global i32 0, align 4
@pkey_table_size = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_QUERY_HCA_VPORT_PKEY = common dso_local global i32 0, align 4
@vport_number = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@num_ports = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_query_hca_vport_pkey(%struct.mlx5_core_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %24 = load i32*, i32** @query_hca_vport_pkey_in, align 8
  %25 = call i32 @MLX5_ST_SZ_BYTES(i32* %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32*, i32** @query_hca_vport_pkey_out, align 8
  %27 = call i32 @MLX5_ST_SZ_BYTES(i32* %26)
  store i32 %27, i32* %15, align 4
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %29 = load i32, i32* @vport_group_manager, align 4
  %30 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %28, i32 %29)
  store i32 %30, i32* %16, align 4
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %32 = load i32, i32* @pkey_table_size, align 4
  %33 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %31, i32 %32)
  %34 = call i32 @mlx5_to_sw_pkey_sz(i32 %33)
  store i32 %34, i32* %21, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %21, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %6
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 65535
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %154

44:                                               ; preds = %38, %6
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %45, 65535
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %21, align 4
  store i32 %48, i32* %20, align 4
  br label %50

49:                                               ; preds = %44
  store i32 1, i32* %20, align 4
  br label %50

50:                                               ; preds = %49, %47
  %51 = load i32, i32* %20, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = call i32 @MLX5_ST_SZ_BYTES(i32* %52)
  %54 = mul nsw i32 %51, %53
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i8* @kzalloc(i32 %57, i32 %58)
  store i8* %59, i8** %18, align 8
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @kzalloc(i32 %60, i32 %61)
  store i8* %62, i8** %17, align 8
  %63 = load i8*, i8** %18, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %50
  %66 = load i8*, i8** %17, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %65, %50
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %22, align 4
  br label %148

71:                                               ; preds = %65
  %72 = load i32*, i32** @query_hca_vport_pkey_in, align 8
  %73 = load i8*, i8** %18, align 8
  %74 = load i32, i32* @opcode, align 4
  %75 = load i32, i32* @MLX5_CMD_OP_QUERY_HCA_VPORT_PKEY, align 4
  %76 = call i32 @MLX5_SET(i32* %72, i8* %73, i32 %74, i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %71
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32*, i32** @query_hca_vport_pkey_in, align 8
  %84 = load i8*, i8** %18, align 8
  %85 = load i32, i32* @vport_number, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @MLX5_SET(i32* %83, i8* %84, i32 %85, i32 %86)
  %88 = load i32*, i32** @query_hca_vport_pkey_in, align 8
  %89 = load i8*, i8** %18, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @MLX5_SET(i32* %88, i8* %89, i32 %90, i32 1)
  br label %95

92:                                               ; preds = %79
  %93 = load i32, i32* @EPERM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %22, align 4
  br label %148

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %71
  %97 = load i32*, i32** @query_hca_vport_pkey_in, align 8
  %98 = load i8*, i8** %18, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @MLX5_SET(i32* %97, i8* %98, i32 %99, i32 %100)
  %102 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %103 = load i32, i32* @num_ports, align 4
  %104 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %102, i32 %103)
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %112

106:                                              ; preds = %96
  %107 = load i32*, i32** @query_hca_vport_pkey_in, align 8
  %108 = load i8*, i8** %18, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @MLX5_SET(i32* %107, i8* %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %106, %96
  %113 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %114 = load i8*, i8** %18, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load i8*, i8** %17, align 8
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @mlx5_cmd_exec(%struct.mlx5_core_dev* %113, i8* %114, i32 %115, i8* %116, i32 %117)
  store i32 %118, i32* %22, align 4
  %119 = load i32, i32* %22, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %148

122:                                              ; preds = %112
  %123 = load i32*, i32** @query_hca_vport_pkey_out, align 8
  %124 = load i8*, i8** %17, align 8
  %125 = load i32*, i32** %13, align 8
  %126 = call i8* @MLX5_ADDR_OF(i32* %123, i8* %124, i32* %125)
  store i8* %126, i8** %19, align 8
  store i32 0, i32* %23, align 4
  br label %127

127:                                              ; preds = %137, %122
  %128 = load i32, i32* %23, align 4
  %129 = load i32, i32* %20, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %147

131:                                              ; preds = %127
  %132 = load i32*, i32** %13, align 8
  %133 = load i8*, i8** %19, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = call i32 @MLX5_GET_PR(i32* %132, i8* %133, i32* %134)
  %136 = load i32*, i32** %13, align 8
  store i32 %135, i32* %136, align 4
  br label %137

137:                                              ; preds = %131
  %138 = load i32, i32* %23, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %23, align 4
  %140 = load i32*, i32** %13, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %13, align 8
  %142 = load i32*, i32** %13, align 8
  %143 = call i32 @MLX5_ST_SZ_BYTES(i32* %142)
  %144 = load i8*, i8** %19, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr i8, i8* %144, i64 %145
  store i8* %146, i8** %19, align 8
  br label %127

147:                                              ; preds = %127
  br label %148

148:                                              ; preds = %147, %121, %92, %68
  %149 = load i8*, i8** %18, align 8
  %150 = call i32 @kfree(i8* %149)
  %151 = load i8*, i8** %17, align 8
  %152 = call i32 @kfree(i8* %151)
  %153 = load i32, i32* %22, align 4
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %148, %41
  %155 = load i32, i32* %7, align 4
  ret i32 %155
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32*) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_to_sw_pkey_sz(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_exec(%struct.mlx5_core_dev*, i8*, i32, i8*, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32*, i8*, i32*) #1

declare dso_local i32 @MLX5_GET_PR(i32*, i8*, i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
