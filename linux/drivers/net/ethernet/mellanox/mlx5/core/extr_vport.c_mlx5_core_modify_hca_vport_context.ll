; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_vport.c_mlx5_core_modify_hca_vport_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_vport.c_mlx5_core_modify_hca_vport_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_hca_vport_context = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@modify_hca_vport_context_in = common dso_local global i32 0, align 4
@modify_hca_vport_context_out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"vf %d\0A\00", align 1
@vport_group_manager = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_MODIFY_HCA_VPORT_CONTEXT = common dso_local global i32 0, align 4
@vport_number = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@num_ports = common dso_local global i32 0, align 4
@hca_vport_context = common dso_local global i32 0, align 4
@field_select = common dso_local global i32 0, align 4
@sm_virt_aware = common dso_local global i32 0, align 4
@has_smi = common dso_local global i32 0, align 4
@has_raw = common dso_local global i32 0, align 4
@vport_state_policy = common dso_local global i32 0, align 4
@port_physical_state = common dso_local global i32 0, align 4
@vport_state = common dso_local global i32 0, align 4
@port_guid = common dso_local global i32 0, align 4
@node_guid = common dso_local global i32 0, align 4
@cap_mask1 = common dso_local global i32 0, align 4
@cap_mask1_field_select = common dso_local global i32 0, align 4
@cap_mask2 = common dso_local global i32 0, align 4
@cap_mask2_field_select = common dso_local global i32 0, align 4
@lid = common dso_local global i32 0, align 4
@init_type_reply = common dso_local global i32 0, align 4
@lmc = common dso_local global i32 0, align 4
@subnet_timeout = common dso_local global i32 0, align 4
@sm_lid = common dso_local global i32 0, align 4
@sm_sl = common dso_local global i32 0, align 4
@qkey_violation_counter = common dso_local global i32 0, align 4
@pkey_violation_counter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_core_modify_hca_vport_context(%struct.mlx5_core_dev* %0, i32 %1, i32 %2, i32 %3, %struct.mlx5_hca_vport_context* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx5_hca_vport_context*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.mlx5_hca_vport_context* %4, %struct.mlx5_hca_vport_context** %11, align 8
  %20 = load i32, i32* @modify_hca_vport_context_in, align 4
  %21 = call i32 @MLX5_ST_SZ_BYTES(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @modify_hca_vport_context_out, align 4
  %23 = call i32 @MLX5_ST_SZ_BYTES(i32 %22)
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %13, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %31 = load i32, i32* @vport_group_manager, align 4
  %32 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %30, i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kzalloc(i32 %33, i32 %34)
  store i8* %35, i8** %16, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %5
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %242

41:                                               ; preds = %5
  %42 = mul nuw i64 4, %24
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memset(i32* %26, i32 0, i32 %43)
  %45 = load i32, i32* @modify_hca_vport_context_in, align 4
  %46 = load i8*, i8** %16, align 8
  %47 = load i32, i32* @opcode, align 4
  %48 = load i32, i32* @MLX5_CMD_OP_MODIFY_HCA_VPORT_CONTEXT, align 4
  %49 = call i32 @MLX5_SET(i32 %45, i8* %46, i32 %47, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %41
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i32, i32* @modify_hca_vport_context_in, align 4
  %57 = load i8*, i8** %16, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @MLX5_SET(i32 %56, i8* %57, i32 %58, i32 1)
  %60 = load i32, i32* @modify_hca_vport_context_in, align 4
  %61 = load i8*, i8** %16, align 8
  %62 = load i32, i32* @vport_number, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @MLX5_SET(i32 %60, i8* %61, i32 %62, i32 %63)
  br label %68

65:                                               ; preds = %52
  %66 = load i32, i32* @EPERM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %17, align 4
  br label %238

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68, %41
  %70 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %71 = load i32, i32* @num_ports, align 4
  %72 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %70, i32 %71)
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* @modify_hca_vport_context_in, align 4
  %76 = load i8*, i8** %16, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @MLX5_SET(i32 %75, i8* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %74, %69
  %81 = load i32, i32* @modify_hca_vport_context_in, align 4
  %82 = load i8*, i8** %16, align 8
  %83 = load i32, i32* @hca_vport_context, align 4
  %84 = call i8* @MLX5_ADDR_OF(i32 %81, i8* %82, i32 %83)
  store i8* %84, i8** %18, align 8
  %85 = load i32, i32* @hca_vport_context, align 4
  %86 = load i8*, i8** %18, align 8
  %87 = load i32, i32* @field_select, align 4
  %88 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %11, align 8
  %89 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @MLX5_SET(i32 %85, i8* %86, i32 %87, i32 %90)
  %92 = load i32, i32* @hca_vport_context, align 4
  %93 = load i8*, i8** %18, align 8
  %94 = load i32, i32* @sm_virt_aware, align 4
  %95 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %11, align 8
  %96 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @MLX5_SET(i32 %92, i8* %93, i32 %94, i32 %97)
  %99 = load i32, i32* @hca_vport_context, align 4
  %100 = load i8*, i8** %18, align 8
  %101 = load i32, i32* @has_smi, align 4
  %102 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %11, align 8
  %103 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @MLX5_SET(i32 %99, i8* %100, i32 %101, i32 %104)
  %106 = load i32, i32* @hca_vport_context, align 4
  %107 = load i8*, i8** %18, align 8
  %108 = load i32, i32* @has_raw, align 4
  %109 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %11, align 8
  %110 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @MLX5_SET(i32 %106, i8* %107, i32 %108, i32 %111)
  %113 = load i32, i32* @hca_vport_context, align 4
  %114 = load i8*, i8** %18, align 8
  %115 = load i32, i32* @vport_state_policy, align 4
  %116 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %11, align 8
  %117 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @MLX5_SET(i32 %113, i8* %114, i32 %115, i32 %118)
  %120 = load i32, i32* @hca_vport_context, align 4
  %121 = load i8*, i8** %18, align 8
  %122 = load i32, i32* @port_physical_state, align 4
  %123 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %11, align 8
  %124 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @MLX5_SET(i32 %120, i8* %121, i32 %122, i32 %125)
  %127 = load i32, i32* @hca_vport_context, align 4
  %128 = load i8*, i8** %18, align 8
  %129 = load i32, i32* @vport_state, align 4
  %130 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %11, align 8
  %131 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @MLX5_SET(i32 %127, i8* %128, i32 %129, i32 %132)
  %134 = load i32, i32* @hca_vport_context, align 4
  %135 = load i8*, i8** %18, align 8
  %136 = load i32, i32* @port_guid, align 4
  %137 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %11, align 8
  %138 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %137, i32 0, i32 20
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @MLX5_SET64(i32 %134, i8* %135, i32 %136, i32 %139)
  %141 = load i32, i32* @hca_vport_context, align 4
  %142 = load i8*, i8** %18, align 8
  %143 = load i32, i32* @node_guid, align 4
  %144 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %11, align 8
  %145 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %144, i32 0, i32 19
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @MLX5_SET64(i32 %141, i8* %142, i32 %143, i32 %146)
  %148 = load i32, i32* @hca_vport_context, align 4
  %149 = load i8*, i8** %18, align 8
  %150 = load i32, i32* @cap_mask1, align 4
  %151 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %11, align 8
  %152 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @MLX5_SET(i32 %148, i8* %149, i32 %150, i32 %153)
  %155 = load i32, i32* @hca_vport_context, align 4
  %156 = load i8*, i8** %18, align 8
  %157 = load i32, i32* @cap_mask1_field_select, align 4
  %158 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %11, align 8
  %159 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @MLX5_SET(i32 %155, i8* %156, i32 %157, i32 %160)
  %162 = load i32, i32* @hca_vport_context, align 4
  %163 = load i8*, i8** %18, align 8
  %164 = load i32, i32* @cap_mask2, align 4
  %165 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %11, align 8
  %166 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @MLX5_SET(i32 %162, i8* %163, i32 %164, i32 %167)
  %169 = load i32, i32* @hca_vport_context, align 4
  %170 = load i8*, i8** %18, align 8
  %171 = load i32, i32* @cap_mask2_field_select, align 4
  %172 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %11, align 8
  %173 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %172, i32 0, i32 10
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @MLX5_SET(i32 %169, i8* %170, i32 %171, i32 %174)
  %176 = load i32, i32* @hca_vport_context, align 4
  %177 = load i8*, i8** %18, align 8
  %178 = load i32, i32* @lid, align 4
  %179 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %11, align 8
  %180 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %179, i32 0, i32 11
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @MLX5_SET(i32 %176, i8* %177, i32 %178, i32 %181)
  %183 = load i32, i32* @hca_vport_context, align 4
  %184 = load i8*, i8** %18, align 8
  %185 = load i32, i32* @init_type_reply, align 4
  %186 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %11, align 8
  %187 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %186, i32 0, i32 12
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @MLX5_SET(i32 %183, i8* %184, i32 %185, i32 %188)
  %190 = load i32, i32* @hca_vport_context, align 4
  %191 = load i8*, i8** %18, align 8
  %192 = load i32, i32* @lmc, align 4
  %193 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %11, align 8
  %194 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %193, i32 0, i32 13
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @MLX5_SET(i32 %190, i8* %191, i32 %192, i32 %195)
  %197 = load i32, i32* @hca_vport_context, align 4
  %198 = load i8*, i8** %18, align 8
  %199 = load i32, i32* @subnet_timeout, align 4
  %200 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %11, align 8
  %201 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %200, i32 0, i32 14
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @MLX5_SET(i32 %197, i8* %198, i32 %199, i32 %202)
  %204 = load i32, i32* @hca_vport_context, align 4
  %205 = load i8*, i8** %18, align 8
  %206 = load i32, i32* @sm_lid, align 4
  %207 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %11, align 8
  %208 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %207, i32 0, i32 15
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @MLX5_SET(i32 %204, i8* %205, i32 %206, i32 %209)
  %211 = load i32, i32* @hca_vport_context, align 4
  %212 = load i8*, i8** %18, align 8
  %213 = load i32, i32* @sm_sl, align 4
  %214 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %11, align 8
  %215 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %214, i32 0, i32 16
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @MLX5_SET(i32 %211, i8* %212, i32 %213, i32 %216)
  %218 = load i32, i32* @hca_vport_context, align 4
  %219 = load i8*, i8** %18, align 8
  %220 = load i32, i32* @qkey_violation_counter, align 4
  %221 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %11, align 8
  %222 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %221, i32 0, i32 17
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @MLX5_SET(i32 %218, i8* %219, i32 %220, i32 %223)
  %225 = load i32, i32* @hca_vport_context, align 4
  %226 = load i8*, i8** %18, align 8
  %227 = load i32, i32* @pkey_violation_counter, align 4
  %228 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %11, align 8
  %229 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %228, i32 0, i32 18
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @MLX5_SET(i32 %225, i8* %226, i32 %227, i32 %230)
  %232 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %233 = load i8*, i8** %16, align 8
  %234 = load i32, i32* %12, align 4
  %235 = mul nuw i64 4, %24
  %236 = trunc i64 %235 to i32
  %237 = call i32 @mlx5_cmd_exec(%struct.mlx5_core_dev* %232, i8* %233, i32 %234, i32* %26, i32 %236)
  store i32 %237, i32* %17, align 4
  br label %238

238:                                              ; preds = %80, %65
  %239 = load i8*, i8** %16, align 8
  %240 = call i32 @kfree(i8* %239)
  %241 = load i32, i32* %17, align 4
  store i32 %241, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %242

242:                                              ; preds = %238, %38
  %243 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %243)
  %244 = load i32, i32* %6, align 4
  ret i32 %244
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @MLX5_SET64(i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_exec(%struct.mlx5_core_dev*, i8*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
