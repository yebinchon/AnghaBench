; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_vport.c_mlx5_query_hca_vport_gid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_vport.c_mlx5_query_hca_vport_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%union.ib_gid = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@query_hca_vport_gid_in = common dso_local global i32 0, align 4
@query_hca_vport_gid_out = common dso_local global i32 0, align 4
@vport_group_manager = common dso_local global i32 0, align 4
@gid_table_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"vf_num %d, index %d, gid_table_size %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_QUERY_HCA_VPORT_GID = common dso_local global i32 0, align 4
@vport_number = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@num_ports = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_query_hca_vport_gid(%struct.mlx5_core_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, %union.ib_gid* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.ib_gid*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %union.ib_gid*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %union.ib_gid* %5, %union.ib_gid** %13, align 8
  %23 = load i32, i32* @query_hca_vport_gid_in, align 4
  %24 = call i32 @MLX5_ST_SZ_BYTES(i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* @query_hca_vport_gid_out, align 4
  %26 = call i32 @MLX5_ST_SZ_BYTES(i32 %25)
  store i32 %26, i32* %15, align 4
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %28 = load i32, i32* @vport_group_manager, align 4
  %29 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %27, i32 %28)
  store i32 %29, i32* %16, align 4
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %31 = load i32, i32* @gid_table_size, align 4
  %32 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %30, i32 %31)
  %33 = call i32 @mlx5_get_gid_table_len(i32 %32)
  store i32 %33, i32* %20, align 4
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %20, align 4
  %38 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %20, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %6
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 65535
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %154

48:                                               ; preds = %42, %6
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %49, 65535
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* %20, align 4
  store i32 %52, i32* %21, align 4
  br label %54

53:                                               ; preds = %48
  store i32 1, i32* %21, align 4
  br label %54

54:                                               ; preds = %53, %51
  %55 = load i32, i32* %21, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @kzalloc(i32 %62, i32 %63)
  store i8* %64, i8** %18, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i8* @kzalloc(i32 %65, i32 %66)
  store i8* %67, i8** %17, align 8
  %68 = load i8*, i8** %18, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %54
  %71 = load i8*, i8** %17, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %70, %54
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %22, align 4
  br label %148

76:                                               ; preds = %70
  %77 = load i32, i32* @query_hca_vport_gid_in, align 4
  %78 = load i8*, i8** %18, align 8
  %79 = load i32, i32* @opcode, align 4
  %80 = load i32, i32* @MLX5_CMD_OP_QUERY_HCA_VPORT_GID, align 4
  %81 = call i32 @MLX5_SET(i32 %77, i8* %78, i32 %79, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %76
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load i32, i32* @query_hca_vport_gid_in, align 4
  %89 = load i8*, i8** %18, align 8
  %90 = load i32, i32* @vport_number, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @MLX5_SET(i32 %88, i8* %89, i32 %90, i32 %91)
  %93 = load i32, i32* @query_hca_vport_gid_in, align 4
  %94 = load i8*, i8** %18, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @MLX5_SET(i32 %93, i8* %94, i32 %95, i32 1)
  br label %100

97:                                               ; preds = %84
  %98 = load i32, i32* @EPERM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %22, align 4
  br label %148

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100, %76
  %102 = load i32, i32* @query_hca_vport_gid_in, align 4
  %103 = load i8*, i8** %18, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @MLX5_SET(i32 %102, i8* %103, i32 %104, i32 %105)
  %107 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %108 = load i32, i32* @num_ports, align 4
  %109 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %107, i32 %108)
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %111, label %117

111:                                              ; preds = %101
  %112 = load i32, i32* @query_hca_vport_gid_in, align 4
  %113 = load i8*, i8** %18, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @MLX5_SET(i32 %112, i8* %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %111, %101
  %118 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %119 = load i8*, i8** %18, align 8
  %120 = load i32, i32* %14, align 4
  %121 = load i8*, i8** %17, align 8
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @mlx5_cmd_exec(%struct.mlx5_core_dev* %118, i8* %119, i32 %120, i8* %121, i32 %122)
  store i32 %123, i32* %22, align 4
  %124 = load i32, i32* %22, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %148

127:                                              ; preds = %117
  %128 = load i8*, i8** %17, align 8
  %129 = load i32, i32* @query_hca_vport_gid_out, align 4
  %130 = call i32 @MLX5_ST_SZ_BYTES(i32 %129)
  %131 = sext i32 %130 to i64
  %132 = getelementptr i8, i8* %128, i64 %131
  %133 = bitcast i8* %132 to %union.ib_gid*
  store %union.ib_gid* %133, %union.ib_gid** %19, align 8
  %134 = load %union.ib_gid*, %union.ib_gid** %19, align 8
  %135 = bitcast %union.ib_gid* %134 to %struct.TYPE_2__*
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %union.ib_gid*, %union.ib_gid** %13, align 8
  %139 = bitcast %union.ib_gid* %138 to %struct.TYPE_2__*
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 4
  %141 = load %union.ib_gid*, %union.ib_gid** %19, align 8
  %142 = bitcast %union.ib_gid* %141 to %struct.TYPE_2__*
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %union.ib_gid*, %union.ib_gid** %13, align 8
  %146 = bitcast %union.ib_gid* %145 to %struct.TYPE_2__*
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 4
  br label %148

148:                                              ; preds = %127, %126, %97, %73
  %149 = load i8*, i8** %18, align 8
  %150 = call i32 @kfree(i8* %149)
  %151 = load i8*, i8** %17, align 8
  %152 = call i32 @kfree(i8* %151)
  %153 = load i32, i32* %22, align 4
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %148, %45
  %155 = load i32, i32* %7, align 4
  ret i32 %155
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_get_gid_table_len(i32) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i32, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_exec(%struct.mlx5_core_dev*, i8*, i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
