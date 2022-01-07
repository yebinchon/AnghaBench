; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif = type { i32, %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_rif_ops*, %struct.mlxsw_sp* }
%struct.mlxsw_sp_vr = type { i32, i32*, i32 }
%struct.mlxsw_sp_rif_ops = type { i32 (%struct.mlxsw_sp_rif.0*)*, i32 (%struct.mlxsw_sp_rif.1*)*, i32 (%struct.mlxsw_sp_rif.2*, %struct.mlxsw_sp_rif_params*)*, %struct.mlxsw_sp_vr* (%struct.mlxsw_sp_rif.3*, %struct.netlink_ext_ack*)*, i32 }
%struct.mlxsw_sp_rif.0 = type opaque
%struct.mlxsw_sp_rif.1 = type opaque
%struct.mlxsw_sp_rif.2 = type opaque
%struct.mlxsw_sp_rif.3 = type opaque
%struct.mlxsw_sp = type { %struct.TYPE_2__*, %struct.mlxsw_sp_rif_ops** }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_rif** }
%struct.mlxsw_sp_rif_params = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_fid = type { i32, i32*, i32 }

@RT_TABLE_MAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Exceeded number of supported router interfaces\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_SP_L3_PROTO_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_rif* (%struct.mlxsw_sp*, %struct.mlxsw_sp_rif_params*, %struct.netlink_ext_ack*)* @mlxsw_sp_rif_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_rif* @mlxsw_sp_rif_create(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_rif_params* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_rif*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_rif_params*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mlxsw_sp_rif_ops*, align 8
  %10 = alloca %struct.mlxsw_sp_fid*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlxsw_sp_rif*, align 8
  %13 = alloca %struct.mlxsw_sp_vr*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_rif_params* %1, %struct.mlxsw_sp_rif_params** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %17 = load %struct.mlxsw_sp_rif_params*, %struct.mlxsw_sp_rif_params** %6, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_rif_params, %struct.mlxsw_sp_rif_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @l3mdev_fib_table(i32 %19)
  store i64 %20, i64* %8, align 8
  store %struct.mlxsw_sp_fid* null, %struct.mlxsw_sp_fid** %10, align 8
  %21 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %22 = load %struct.mlxsw_sp_rif_params*, %struct.mlxsw_sp_rif_params** %6, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_rif_params, %struct.mlxsw_sp_rif_params* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mlxsw_sp_dev_rif_type(%struct.mlxsw_sp* %21, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %26, i32 0, i32 1
  %28 = load %struct.mlxsw_sp_rif_ops**, %struct.mlxsw_sp_rif_ops*** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mlxsw_sp_rif_ops*, %struct.mlxsw_sp_rif_ops** %28, i64 %30
  %32 = load %struct.mlxsw_sp_rif_ops*, %struct.mlxsw_sp_rif_ops** %31, align 8
  store %struct.mlxsw_sp_rif_ops* %32, %struct.mlxsw_sp_rif_ops** %9, align 8
  %33 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  br label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @RT_TABLE_MAIN, align 4
  %39 = sext i32 %38 to i64
  br label %40

40:                                               ; preds = %37, %36
  %41 = phi i64 [ %34, %36 ], [ %39, %37 ]
  %42 = trunc i64 %41 to i32
  %43 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %44 = call %struct.mlxsw_sp_vr* @mlxsw_sp_vr_get(%struct.mlxsw_sp* %33, i32 %42, %struct.netlink_ext_ack* %43)
  store %struct.mlxsw_sp_vr* %44, %struct.mlxsw_sp_vr** %13, align 8
  %45 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %13, align 8
  %46 = call i64 @IS_ERR(%struct.mlxsw_sp_vr* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %13, align 8
  %50 = call %struct.mlxsw_sp_rif* @ERR_CAST(%struct.mlxsw_sp_vr* %49)
  store %struct.mlxsw_sp_rif* %50, %struct.mlxsw_sp_rif** %4, align 8
  br label %233

51:                                               ; preds = %40
  %52 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %13, align 8
  %53 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %57 = call i32 @mlxsw_sp_rif_index_alloc(%struct.mlxsw_sp* %56, i64* %14)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %62 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %61, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %223

63:                                               ; preds = %51
  %64 = load %struct.mlxsw_sp_rif_ops*, %struct.mlxsw_sp_rif_ops** %9, align 8
  %65 = getelementptr inbounds %struct.mlxsw_sp_rif_ops, %struct.mlxsw_sp_rif_ops* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %13, align 8
  %69 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.mlxsw_sp_rif_params*, %struct.mlxsw_sp_rif_params** %6, align 8
  %72 = getelementptr inbounds %struct.mlxsw_sp_rif_params, %struct.mlxsw_sp_rif_params* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.mlxsw_sp_rif* @mlxsw_sp_rif_alloc(i32 %66, i64 %67, i32 %70, i32 %73)
  store %struct.mlxsw_sp_rif* %74, %struct.mlxsw_sp_rif** %12, align 8
  %75 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %76 = icmp ne %struct.mlxsw_sp_rif* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %63
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %16, align 4
  br label %222

80:                                               ; preds = %63
  %81 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %82 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dev_hold(i32 %83)
  %85 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %86 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %87 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load %struct.mlxsw_sp_rif**, %struct.mlxsw_sp_rif*** %89, align 8
  %91 = load i64, i64* %14, align 8
  %92 = getelementptr inbounds %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %90, i64 %91
  store %struct.mlxsw_sp_rif* %85, %struct.mlxsw_sp_rif** %92, align 8
  %93 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %94 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %95 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %94, i32 0, i32 3
  store %struct.mlxsw_sp* %93, %struct.mlxsw_sp** %95, align 8
  %96 = load %struct.mlxsw_sp_rif_ops*, %struct.mlxsw_sp_rif_ops** %9, align 8
  %97 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %98 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %97, i32 0, i32 2
  store %struct.mlxsw_sp_rif_ops* %96, %struct.mlxsw_sp_rif_ops** %98, align 8
  %99 = load %struct.mlxsw_sp_rif_ops*, %struct.mlxsw_sp_rif_ops** %9, align 8
  %100 = getelementptr inbounds %struct.mlxsw_sp_rif_ops, %struct.mlxsw_sp_rif_ops* %99, i32 0, i32 3
  %101 = load %struct.mlxsw_sp_vr* (%struct.mlxsw_sp_rif.3*, %struct.netlink_ext_ack*)*, %struct.mlxsw_sp_vr* (%struct.mlxsw_sp_rif.3*, %struct.netlink_ext_ack*)** %100, align 8
  %102 = icmp ne %struct.mlxsw_sp_vr* (%struct.mlxsw_sp_rif.3*, %struct.netlink_ext_ack*)* %101, null
  br i1 %102, label %103, label %125

103:                                              ; preds = %80
  %104 = load %struct.mlxsw_sp_rif_ops*, %struct.mlxsw_sp_rif_ops** %9, align 8
  %105 = getelementptr inbounds %struct.mlxsw_sp_rif_ops, %struct.mlxsw_sp_rif_ops* %104, i32 0, i32 3
  %106 = load %struct.mlxsw_sp_vr* (%struct.mlxsw_sp_rif.3*, %struct.netlink_ext_ack*)*, %struct.mlxsw_sp_vr* (%struct.mlxsw_sp_rif.3*, %struct.netlink_ext_ack*)** %105, align 8
  %107 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %108 = bitcast %struct.mlxsw_sp_rif* %107 to %struct.mlxsw_sp_rif.3*
  %109 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %110 = call %struct.mlxsw_sp_vr* %106(%struct.mlxsw_sp_rif.3* %108, %struct.netlink_ext_ack* %109)
  %111 = bitcast %struct.mlxsw_sp_vr* %110 to %struct.mlxsw_sp_fid*
  store %struct.mlxsw_sp_fid* %111, %struct.mlxsw_sp_fid** %10, align 8
  %112 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %10, align 8
  %113 = bitcast %struct.mlxsw_sp_fid* %112 to %struct.mlxsw_sp_vr*
  %114 = call i64 @IS_ERR(%struct.mlxsw_sp_vr* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %103
  %117 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %10, align 8
  %118 = bitcast %struct.mlxsw_sp_fid* %117 to %struct.mlxsw_sp_vr*
  %119 = call i32 @PTR_ERR(%struct.mlxsw_sp_vr* %118)
  store i32 %119, i32* %16, align 4
  br label %208

120:                                              ; preds = %103
  %121 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %10, align 8
  %122 = bitcast %struct.mlxsw_sp_fid* %121 to %struct.mlxsw_sp_vr*
  %123 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %124 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %123, i32 0, i32 1
  store %struct.mlxsw_sp_vr* %122, %struct.mlxsw_sp_vr** %124, align 8
  br label %125

125:                                              ; preds = %120, %80
  %126 = load %struct.mlxsw_sp_rif_ops*, %struct.mlxsw_sp_rif_ops** %9, align 8
  %127 = getelementptr inbounds %struct.mlxsw_sp_rif_ops, %struct.mlxsw_sp_rif_ops* %126, i32 0, i32 2
  %128 = load i32 (%struct.mlxsw_sp_rif.2*, %struct.mlxsw_sp_rif_params*)*, i32 (%struct.mlxsw_sp_rif.2*, %struct.mlxsw_sp_rif_params*)** %127, align 8
  %129 = icmp ne i32 (%struct.mlxsw_sp_rif.2*, %struct.mlxsw_sp_rif_params*)* %128, null
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = load %struct.mlxsw_sp_rif_ops*, %struct.mlxsw_sp_rif_ops** %9, align 8
  %132 = getelementptr inbounds %struct.mlxsw_sp_rif_ops, %struct.mlxsw_sp_rif_ops* %131, i32 0, i32 2
  %133 = load i32 (%struct.mlxsw_sp_rif.2*, %struct.mlxsw_sp_rif_params*)*, i32 (%struct.mlxsw_sp_rif.2*, %struct.mlxsw_sp_rif_params*)** %132, align 8
  %134 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %135 = bitcast %struct.mlxsw_sp_rif* %134 to %struct.mlxsw_sp_rif.2*
  %136 = load %struct.mlxsw_sp_rif_params*, %struct.mlxsw_sp_rif_params** %6, align 8
  %137 = call i32 %133(%struct.mlxsw_sp_rif.2* %135, %struct.mlxsw_sp_rif_params* %136)
  br label %138

138:                                              ; preds = %130, %125
  %139 = load %struct.mlxsw_sp_rif_ops*, %struct.mlxsw_sp_rif_ops** %9, align 8
  %140 = getelementptr inbounds %struct.mlxsw_sp_rif_ops, %struct.mlxsw_sp_rif_ops* %139, i32 0, i32 0
  %141 = load i32 (%struct.mlxsw_sp_rif.0*)*, i32 (%struct.mlxsw_sp_rif.0*)** %140, align 8
  %142 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %143 = bitcast %struct.mlxsw_sp_rif* %142 to %struct.mlxsw_sp_rif.0*
  %144 = call i32 %141(%struct.mlxsw_sp_rif.0* %143)
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %16, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  br label %200

148:                                              ; preds = %138
  store i32 0, i32* %15, align 4
  br label %149

149:                                              ; preds = %167, %148
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* @MLXSW_SP_L3_PROTO_MAX, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %170

153:                                              ; preds = %149
  %154 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %13, align 8
  %155 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %162 = call i32 @mlxsw_sp_mr_rif_add(i32 %160, %struct.mlxsw_sp_rif* %161)
  store i32 %162, i32* %16, align 4
  %163 = load i32, i32* %16, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %153
  br label %174

166:                                              ; preds = %153
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %15, align 4
  br label %149

170:                                              ; preds = %149
  %171 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %172 = call i32 @mlxsw_sp_rif_counters_alloc(%struct.mlxsw_sp_rif* %171)
  %173 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  store %struct.mlxsw_sp_rif* %173, %struct.mlxsw_sp_rif** %4, align 8
  br label %233

174:                                              ; preds = %165
  %175 = load i32, i32* %15, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %15, align 4
  br label %177

177:                                              ; preds = %190, %174
  %178 = load i32, i32* %15, align 4
  %179 = icmp sge i32 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %177
  %181 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %13, align 8
  %182 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %15, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %189 = call i32 @mlxsw_sp_mr_rif_del(i32 %187, %struct.mlxsw_sp_rif* %188)
  br label %190

190:                                              ; preds = %180
  %191 = load i32, i32* %15, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %15, align 4
  br label %177

193:                                              ; preds = %177
  %194 = load %struct.mlxsw_sp_rif_ops*, %struct.mlxsw_sp_rif_ops** %9, align 8
  %195 = getelementptr inbounds %struct.mlxsw_sp_rif_ops, %struct.mlxsw_sp_rif_ops* %194, i32 0, i32 1
  %196 = load i32 (%struct.mlxsw_sp_rif.1*)*, i32 (%struct.mlxsw_sp_rif.1*)** %195, align 8
  %197 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %198 = bitcast %struct.mlxsw_sp_rif* %197 to %struct.mlxsw_sp_rif.1*
  %199 = call i32 %196(%struct.mlxsw_sp_rif.1* %198)
  br label %200

200:                                              ; preds = %193, %147
  %201 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %10, align 8
  %202 = icmp ne %struct.mlxsw_sp_fid* %201, null
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %10, align 8
  %205 = bitcast %struct.mlxsw_sp_fid* %204 to %struct.mlxsw_sp_vr*
  %206 = call i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_vr* %205)
  br label %207

207:                                              ; preds = %203, %200
  br label %208

208:                                              ; preds = %207, %116
  %209 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %210 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %209, i32 0, i32 0
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load %struct.mlxsw_sp_rif**, %struct.mlxsw_sp_rif*** %212, align 8
  %214 = load i64, i64* %14, align 8
  %215 = getelementptr inbounds %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %213, i64 %214
  store %struct.mlxsw_sp_rif* null, %struct.mlxsw_sp_rif** %215, align 8
  %216 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %217 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @dev_put(i32 %218)
  %220 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %221 = call i32 @kfree(%struct.mlxsw_sp_rif* %220)
  br label %222

222:                                              ; preds = %208, %77
  br label %223

223:                                              ; preds = %222, %60
  %224 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %13, align 8
  %225 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, -1
  store i32 %227, i32* %225, align 8
  %228 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %229 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %13, align 8
  %230 = call i32 @mlxsw_sp_vr_put(%struct.mlxsw_sp* %228, %struct.mlxsw_sp_vr* %229)
  %231 = load i32, i32* %16, align 4
  %232 = call %struct.mlxsw_sp_rif* @ERR_PTR(i32 %231)
  store %struct.mlxsw_sp_rif* %232, %struct.mlxsw_sp_rif** %4, align 8
  br label %233

233:                                              ; preds = %223, %170, %48
  %234 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %4, align 8
  ret %struct.mlxsw_sp_rif* %234
}

declare dso_local i64 @l3mdev_fib_table(i32) #1

declare dso_local i32 @mlxsw_sp_dev_rif_type(%struct.mlxsw_sp*, i32) #1

declare dso_local %struct.mlxsw_sp_vr* @mlxsw_sp_vr_get(%struct.mlxsw_sp*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_vr*) #1

declare dso_local %struct.mlxsw_sp_rif* @ERR_CAST(%struct.mlxsw_sp_vr*) #1

declare dso_local i32 @mlxsw_sp_rif_index_alloc(%struct.mlxsw_sp*, i64*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.mlxsw_sp_rif* @mlxsw_sp_rif_alloc(i32, i64, i32, i32) #1

declare dso_local i32 @dev_hold(i32) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_vr*) #1

declare dso_local i32 @mlxsw_sp_mr_rif_add(i32, %struct.mlxsw_sp_rif*) #1

declare dso_local i32 @mlxsw_sp_rif_counters_alloc(%struct.mlxsw_sp_rif*) #1

declare dso_local i32 @mlxsw_sp_mr_rif_del(i32, %struct.mlxsw_sp_rif*) #1

declare dso_local i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_vr*) #1

declare dso_local i32 @dev_put(i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_rif*) #1

declare dso_local i32 @mlxsw_sp_vr_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_vr*) #1

declare dso_local %struct.mlxsw_sp_rif* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
