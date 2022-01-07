; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_master_immediate_activate_vlan_qos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_master_immediate_activate_vlan_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_priv = type { %struct.TYPE_14__, %struct.mlx4_dev }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.mlx4_vport_state* }
%struct.mlx4_vport_state = type { i64, i64, i64, i32, i64 }
%struct.TYPE_8__ = type { %struct.mlx4_vport_oper_state* }
%struct.mlx4_vport_oper_state = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i32 }
%struct.mlx4_dev = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.mlx4_vf_immed_vlan_work = type { i32, i32, i32, i32, i64, i32, i64, i32, %struct.mlx4_priv*, i64, i32, i64 }

@NO_INDX = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_UPDATE_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"updating immediately admin params slave %d port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"vlan %d QoS %d link down %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_VGT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"No vlan resources slave %d, port %d\0A\00", align 1
@MLX4_VF_IMMED_VLAN_FLAG_VLAN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"alloc vlan %d idx  %d slave %d port %d\0A\00", align 1
@MLX4_VF_IMMED_VLAN_FLAG_QOS = common dso_local global i32 0, align 4
@IFLA_VF_LINK_STATE_DISABLE = common dso_local global i64 0, align 8
@MLX4_VF_IMMED_VLAN_FLAG_LINK_DISABLE = common dso_local global i32 0, align 4
@mlx4_vf_immed_vlan_work_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_priv*, i32, i32)* @mlx4_master_immediate_activate_vlan_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_master_immediate_activate_vlan_qos(%struct.mlx4_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_vport_oper_state*, align 8
  %9 = alloca %struct.mlx4_vport_state*, align 8
  %10 = alloca %struct.mlx4_vf_immed_vlan_work*, align 8
  %11 = alloca %struct.mlx4_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_priv* %0, %struct.mlx4_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %15 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %14, i32 0, i32 1
  store %struct.mlx4_dev* %15, %struct.mlx4_dev** %11, align 8
  %16 = load i32, i32* @NO_INDX, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %18 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %26, i64 %28
  store %struct.mlx4_vport_oper_state* %29, %struct.mlx4_vport_oper_state** %8, align 8
  %30 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %31 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %39, i64 %41
  store %struct.mlx4_vport_state* %42, %struct.mlx4_vport_state** %9, align 8
  %43 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %44 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %48 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %88

51:                                               ; preds = %3
  %52 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %53 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %57 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %88

60:                                               ; preds = %51
  %61 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %62 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %66 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %60
  %70 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %71 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %75 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %69
  %79 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %80 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %84 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %322

88:                                               ; preds = %78, %69, %60, %51, %3
  %89 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %90 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %88
  %101 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %102 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MLX4_DEV_CAP_FLAG2_UPDATE_QP, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %100, %88
  %109 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %110 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %113 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  store i64 %111, i64* %114, align 8
  store i32 -1, i32* %4, align 4
  br label %322

115:                                              ; preds = %100
  %116 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 (%struct.mlx4_dev*, i8*, i32, i32, ...) @mlx4_dbg(%struct.mlx4_dev* %116, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %118)
  %120 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %121 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %122 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %126 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %129 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i32 (%struct.mlx4_dev*, i8*, i32, i32, ...) @mlx4_dbg(%struct.mlx4_dev* %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %124, i32 %127, i64 %130)
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call %struct.mlx4_vf_immed_vlan_work* @kzalloc(i32 80, i32 %132)
  store %struct.mlx4_vf_immed_vlan_work* %133, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %134 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %135 = icmp ne %struct.mlx4_vf_immed_vlan_work* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %115
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %4, align 4
  br label %322

139:                                              ; preds = %115
  %140 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %141 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %145 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %143, %146
  br i1 %147, label %148, label %192

148:                                              ; preds = %139
  %149 = load i64, i64* @MLX4_VGT, align 8
  %150 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %151 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %149, %152
  br i1 %153, label %154, label %174

154:                                              ; preds = %148
  %155 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %156 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %155, i32 0, i32 1
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %159 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @__mlx4_register_vlan(%struct.mlx4_dev* %156, i32 %157, i64 %160, i32* %13)
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %154
  %165 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %166 = call i32 @kfree(%struct.mlx4_vf_immed_vlan_work* %165)
  %167 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %168 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %167, i32 0, i32 1
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @mlx4_warn(%struct.mlx4_dev* %168, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %169, i32 %170)
  %172 = load i32, i32* %12, align 4
  store i32 %172, i32* %4, align 4
  br label %322

173:                                              ; preds = %154
  br label %176

174:                                              ; preds = %148
  %175 = load i32, i32* @NO_INDX, align 4
  store i32 %175, i32* %13, align 4
  br label %176

176:                                              ; preds = %174, %173
  %177 = load i32, i32* @MLX4_VF_IMMED_VLAN_FLAG_VLAN, align 4
  %178 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %179 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 8
  %182 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %183 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %182, i32 0, i32 1
  %184 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %185 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = trunc i64 %186 to i32
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* %7, align 4
  %191 = call i32 (%struct.mlx4_dev*, i8*, i32, i32, ...) @mlx4_dbg(%struct.mlx4_dev* %183, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %187, i32 %188, i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %176, %139
  %193 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %194 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %198 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %197, i32 0, i32 11
  store i64 %196, i64* %198, align 8
  %199 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %200 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %203 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  %204 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %205 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %209 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %207, %210
  br i1 %211, label %212, label %218

212:                                              ; preds = %192
  %213 = load i32, i32* @MLX4_VF_IMMED_VLAN_FLAG_QOS, align 4
  %214 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %215 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  br label %218

218:                                              ; preds = %212, %192
  %219 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %220 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @MLX4_VF_IMMED_VLAN_FLAG_VLAN, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %218
  %226 = load i32, i32* %13, align 4
  %227 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %228 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 8
  br label %229

229:                                              ; preds = %225, %218
  %230 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %231 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %230, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %234 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 3
  store i64 %232, i64* %235, align 8
  %236 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %237 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %240 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 4
  store i32 %238, i32* %241, align 8
  %242 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %243 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %246 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 0
  store i64 %244, i64* %247, align 8
  %248 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %249 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %252 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 1
  store i64 %250, i64* %253, align 8
  %254 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %255 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %258 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 2
  store i64 %256, i64* %259, align 8
  %260 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %261 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @IFLA_VF_LINK_STATE_DISABLE, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %271

265:                                              ; preds = %229
  %266 = load i32, i32* @MLX4_VF_IMMED_VLAN_FLAG_LINK_DISABLE, align 4
  %267 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %268 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 8
  br label %271

271:                                              ; preds = %265, %229
  %272 = load i32, i32* %7, align 4
  %273 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %274 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %273, i32 0, i32 2
  store i32 %272, i32* %274, align 8
  %275 = load i32, i32* %6, align 4
  %276 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %277 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %276, i32 0, i32 3
  store i32 %275, i32* %277, align 4
  %278 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %279 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %283 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %282, i32 0, i32 10
  store i32 %281, i32* %283, align 8
  %284 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %285 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %289 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %288, i32 0, i32 4
  store i64 %287, i64* %289, align 8
  %290 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %291 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 3
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %295 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %294, i32 0, i32 9
  store i64 %293, i64* %295, align 8
  %296 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %297 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %300 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %299, i32 0, i32 5
  store i32 %298, i32* %300, align 8
  %301 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %302 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %306 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %305, i32 0, i32 6
  store i64 %304, i64* %306, align 8
  %307 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %308 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %309 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %308, i32 0, i32 8
  store %struct.mlx4_priv* %307, %struct.mlx4_priv** %309, align 8
  %310 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %311 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %310, i32 0, i32 7
  %312 = load i32, i32* @mlx4_vf_immed_vlan_work_handler, align 4
  %313 = call i32 @INIT_WORK(i32* %311, i32 %312)
  %314 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %315 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %320 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %319, i32 0, i32 7
  %321 = call i32 @queue_work(i32 %318, i32* %320)
  store i32 0, i32* %4, align 4
  br label %322

322:                                              ; preds = %271, %164, %136, %108, %87
  %323 = load i32, i32* %4, align 4
  ret i32 %323
}

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i32, i32, ...) #1

declare dso_local %struct.mlx4_vf_immed_vlan_work* @kzalloc(i32, i32) #1

declare dso_local i32 @__mlx4_register_vlan(%struct.mlx4_dev*, i32, i64, i32*) #1

declare dso_local i32 @kfree(%struct.mlx4_vf_immed_vlan_work*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
