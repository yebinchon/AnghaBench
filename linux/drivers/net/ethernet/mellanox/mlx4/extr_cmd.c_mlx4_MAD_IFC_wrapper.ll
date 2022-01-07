; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_MAD_IFC_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_MAD_IFC_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.mlx4_vhcr = type { i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32, %struct.ib_smp* }
%struct.ib_smp = type { i32*, i32, i64, i32, i64, i64, i64 }
%struct.mlx4_cmd_info = type { i32 }
%struct.mlx4_priv = type { i32***, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64* }

@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_GET = common dso_local global i64 0, align 8
@IB_SMP_ATTR_PKEY_TABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_SMP_ATTR_PORT_INFO = common dso_local global i64 0, align 8
@MLX4_CMD_TIME_CLASS_C = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@PORT_STATE_OFFSET = common dso_local global i32 0, align 4
@PORT_CAPABILITY_LOCATION_IN_SMP = common dso_local global i32 0, align 4
@IB_SMP_ATTR_GUID_INFO = common dso_local global i64 0, align 8
@IB_SMP_ATTR_NODE_INFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [121 x i8] c"Unprivileged slave %d is trying to execute a Subnet MGMT MAD, class 0x%x, method 0x%x, view=%s for attr 0x%x. Rejecting\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Network\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*)* @mlx4_MAD_IFC_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_MAD_IFC_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca %struct.ib_smp*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.mlx4_priv*, align 8
  %25 = alloca %struct.ib_smp*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i64, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %31 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %32 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %31, i32 0, i32 1
  %33 = load %struct.ib_smp*, %struct.ib_smp** %32, align 8
  store %struct.ib_smp* %33, %struct.ib_smp** %14, align 8
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %35 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %34)
  store %struct.mlx4_priv* %35, %struct.mlx4_priv** %24, align 8
  %36 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %37 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %36, i32 0, i32 1
  %38 = load %struct.ib_smp*, %struct.ib_smp** %37, align 8
  store %struct.ib_smp* %38, %struct.ib_smp** %25, align 8
  %39 = load %struct.ib_smp*, %struct.ib_smp** %25, align 8
  %40 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %26, align 8
  %42 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %43 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %17, align 4
  %45 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %17, align 4
  %48 = call i32 @mlx4_slave_convert_port(%struct.mlx4_dev* %45, i32 %46, i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %50 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, -9
  store i32 %52, i32* %18, align 4
  %53 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %54 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 8
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %23, align 4
  %61 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %62 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %350

65:                                               ; preds = %6
  %66 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %67 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %350

71:                                               ; preds = %65
  %72 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %73 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %350

76:                                               ; preds = %71
  %77 = load i32, i32* %23, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %349, label %79

79:                                               ; preds = %76
  %80 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %81 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %349

85:                                               ; preds = %79
  %86 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %87 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @IB_SMP_ATTR_PKEY_TABLE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %180

91:                                               ; preds = %85
  %92 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %93 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @be32_to_cpu(i64 %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %105, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %16, align 4
  %100 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %101 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sgt i32 %99, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %98, %91
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  br label %415

108:                                              ; preds = %98
  %109 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %110 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = sdiv i32 %116, 32
  %118 = add nsw i32 %117, 1
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call i32* @kcalloc(i32 %118, i32 128, i32 %119)
  store i32* %120, i32** %19, align 8
  %121 = load i32*, i32** %19, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %108
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %7, align 4
  br label %415

126:                                              ; preds = %108
  %127 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %128 = load i32, i32* %16, align 4
  %129 = load i32*, i32** %19, align 8
  %130 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %131 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %132 = call i32 @get_full_pkey_table(%struct.mlx4_dev* %127, i32 %128, i32* %129, %struct.mlx4_cmd_mailbox* %130, %struct.mlx4_cmd_mailbox* %131)
  store i32 %132, i32* %20, align 4
  %133 = load i32, i32* %20, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %176, label %135

135:                                              ; preds = %126
  %136 = load i32, i32* %15, align 4
  %137 = mul nsw i32 %136, 32
  store i32 %137, i32* %21, align 4
  br label %138

138:                                              ; preds = %172, %135
  %139 = load i32, i32* %21, align 4
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %140, 1
  %142 = mul nsw i32 %141, 32
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %175

144:                                              ; preds = %138
  %145 = load %struct.mlx4_priv*, %struct.mlx4_priv** %24, align 8
  %146 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %145, i32 0, i32 0
  %147 = load i32***, i32**** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32**, i32*** %147, i64 %149
  %151 = load i32**, i32*** %150, align 8
  %152 = load i32, i32* %16, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %151, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %21, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %22, align 4
  %161 = load i32*, i32** %19, align 8
  %162 = load i32, i32* %22, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @cpu_to_be16(i32 %165)
  %167 = load i32*, i32** %26, align 8
  %168 = load i32, i32* %21, align 4
  %169 = srem i32 %168, 32
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  store i32 %166, i32* %171, align 4
  br label %172

172:                                              ; preds = %144
  %173 = load i32, i32* %21, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %21, align 4
  br label %138

175:                                              ; preds = %138
  br label %176

176:                                              ; preds = %175, %126
  %177 = load i32*, i32** %19, align 8
  %178 = call i32 @kfree(i32* %177)
  %179 = load i32, i32* %20, align 4
  store i32 %179, i32* %7, align 4
  br label %415

180:                                              ; preds = %85
  %181 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %182 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @IB_SMP_ATTR_PORT_INFO, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %252

186:                                              ; preds = %180
  %187 = load i32, i32* %16, align 4
  %188 = call i64 @cpu_to_be32(i32 %187)
  %189 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %190 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %189, i32 0, i32 6
  store i64 %188, i64* %190, align 8
  %191 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %192 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %193 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %196 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* %18, align 4
  %200 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %201 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @MLX4_CMD_TIME_CLASS_C, align 4
  %204 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %205 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %191, i32 %194, i32 %197, i32 %198, i32 %199, i32 %202, i32 %203, i32 %204)
  store i32 %205, i32* %20, align 4
  %206 = load i32, i32* %20, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %250, label %208

208:                                              ; preds = %186
  %209 = load i32, i32* %9, align 4
  %210 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %211 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %210)
  %212 = icmp ne i32 %209, %211
  br i1 %212, label %213, label %250

213:                                              ; preds = %208
  %214 = load %struct.ib_smp*, %struct.ib_smp** %25, align 8
  %215 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* @PORT_STATE_OFFSET, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32* %219, i32** %29, align 8
  %220 = load i32*, i32** %29, align 8
  %221 = load i32, i32* %220, align 4
  %222 = and i32 %221, 240
  %223 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %224 = load i32, i32* %16, align 4
  %225 = load i32, i32* %9, align 4
  %226 = call i32 @vf_port_state(%struct.mlx4_dev* %223, i32 %224, i32 %225)
  %227 = or i32 %222, %226
  %228 = load i32*, i32** %29, align 8
  store i32 %227, i32* %228, align 4
  %229 = load %struct.mlx4_priv*, %struct.mlx4_priv** %24, align 8
  %230 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = load i32, i32* %9, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i64*, i64** %237, align 8
  %239 = load i32, i32* %16, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %238, i64 %240
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %27, align 8
  %243 = load %struct.ib_smp*, %struct.ib_smp** %25, align 8
  %244 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* @PORT_CAPABILITY_LOCATION_IN_SMP, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = call i32 @memcpy(i32* %248, i64* %27, i32 4)
  br label %250

250:                                              ; preds = %213, %208, %186
  %251 = load i32, i32* %20, align 4
  store i32 %251, i32* %7, align 4
  br label %415

252:                                              ; preds = %180
  %253 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %254 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %253, i32 0, i32 5
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @IB_SMP_ATTR_GUID_INFO, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %313

258:                                              ; preds = %252
  %259 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %260 = load i32, i32* %9, align 4
  %261 = load i32, i32* %16, align 4
  %262 = call i64 @mlx4_get_admin_guid(%struct.mlx4_dev* %259, i32 %260, i32 %261)
  store i64 %262, i64* %30, align 8
  %263 = load i32, i32* %9, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %302

265:                                              ; preds = %258
  %266 = load i64, i64* %30, align 8
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %302

268:                                              ; preds = %265
  %269 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %270 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %269, i32 0, i32 6
  store i64 0, i64* %270, align 8
  %271 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %272 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %273 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %276 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %279 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* %18, align 4
  %282 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %283 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @MLX4_CMD_TIME_CLASS_C, align 4
  %286 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %287 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %271, i32 %274, i32 %277, i32 %280, i32 %281, i32 %284, i32 %285, i32 %286)
  store i32 %287, i32* %20, align 4
  %288 = load i32, i32* %20, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %268
  %291 = load i32, i32* %20, align 4
  store i32 %291, i32* %7, align 4
  br label %415

292:                                              ; preds = %268
  %293 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %294 = load %struct.ib_smp*, %struct.ib_smp** %25, align 8
  %295 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = bitcast i32* %296 to i64*
  %298 = load i64, i64* %297, align 8
  %299 = load i32, i32* %9, align 4
  %300 = load i32, i32* %16, align 4
  %301 = call i32 @mlx4_set_admin_guid(%struct.mlx4_dev* %293, i64 %298, i32 %299, i32 %300)
  br label %307

302:                                              ; preds = %265, %258
  %303 = load %struct.ib_smp*, %struct.ib_smp** %25, align 8
  %304 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %303, i32 0, i32 0
  %305 = load i32*, i32** %304, align 8
  %306 = call i32 @memcpy(i32* %305, i64* %30, i32 8)
  br label %307

307:                                              ; preds = %302, %292
  %308 = load %struct.ib_smp*, %struct.ib_smp** %25, align 8
  %309 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %308, i32 0, i32 0
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 8
  %312 = call i32 @memset(i32* %311, i32 0, i32 56)
  store i32 0, i32* %7, align 4
  br label %415

313:                                              ; preds = %252
  %314 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %315 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %314, i32 0, i32 5
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @IB_SMP_ATTR_NODE_INFO, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %348

319:                                              ; preds = %313
  %320 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %321 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %322 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %325 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* %16, align 4
  %328 = load i32, i32* %18, align 4
  %329 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %330 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @MLX4_CMD_TIME_CLASS_C, align 4
  %333 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %334 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %320, i32 %323, i32 %326, i32 %327, i32 %328, i32 %331, i32 %332, i32 %333)
  store i32 %334, i32* %20, align 4
  %335 = load i32, i32* %20, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %346, label %337

337:                                              ; preds = %319
  %338 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %339 = load i32, i32* %9, align 4
  %340 = call i64 @mlx4_get_slave_node_guid(%struct.mlx4_dev* %338, i32 %339)
  store i64 %340, i64* %28, align 8
  %341 = load %struct.ib_smp*, %struct.ib_smp** %25, align 8
  %342 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %341, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 12
  %345 = call i32 @memcpy(i32* %344, i64* %28, i32 8)
  br label %346

346:                                              ; preds = %337, %319
  %347 = load i32, i32* %20, align 4
  store i32 %347, i32* %7, align 4
  br label %415

348:                                              ; preds = %313
  br label %349

349:                                              ; preds = %348, %79, %76
  br label %350

350:                                              ; preds = %349, %71, %65, %6
  %351 = load i32, i32* %9, align 4
  %352 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %353 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %352)
  %354 = icmp ne i32 %351, %353
  br i1 %354, label %355, label %397

355:                                              ; preds = %350
  %356 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %357 = load i32, i32* %9, align 4
  %358 = load i32, i32* %16, align 4
  %359 = call i32 @mlx4_vf_smi_enabled(%struct.mlx4_dev* %356, i32 %357, i32 %358)
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %397, label %361

361:                                              ; preds = %355
  %362 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %363 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %362, i32 0, i32 2
  %364 = load i64, i64* %363, align 8
  %365 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %366 = icmp eq i64 %364, %365
  br i1 %366, label %367, label %376

367:                                              ; preds = %361
  %368 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %369 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %368, i32 0, i32 4
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %376

373:                                              ; preds = %367
  %374 = load i32, i32* %23, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %396

376:                                              ; preds = %373, %367, %361
  %377 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %378 = load i32, i32* %9, align 4
  %379 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %380 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %379, i32 0, i32 2
  %381 = load i64, i64* %380, align 8
  %382 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %383 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %382, i32 0, i32 4
  %384 = load i64, i64* %383, align 8
  %385 = load i32, i32* %23, align 4
  %386 = icmp ne i32 %385, 0
  %387 = zext i1 %386 to i64
  %388 = select i1 %386, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %389 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %390 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %389, i32 0, i32 5
  %391 = load i64, i64* %390, align 8
  %392 = call i32 @be16_to_cpu(i64 %391)
  %393 = call i32 @mlx4_err(%struct.mlx4_dev* %377, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str, i64 0, i64 0), i32 %378, i64 %381, i64 %384, i8* %388, i32 %392)
  %394 = load i32, i32* @EPERM, align 4
  %395 = sub nsw i32 0, %394
  store i32 %395, i32* %7, align 4
  br label %415

396:                                              ; preds = %373
  br label %397

397:                                              ; preds = %396, %355, %350
  %398 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %399 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %400 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %403 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %406 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* %18, align 4
  %409 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %410 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 4
  %412 = load i32, i32* @MLX4_CMD_TIME_CLASS_C, align 4
  %413 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %414 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %398, i32 %401, i32 %404, i32 %407, i32 %408, i32 %411, i32 %412, i32 %413)
  store i32 %414, i32* %7, align 4
  br label %415

415:                                              ; preds = %397, %376, %346, %307, %290, %250, %176, %123, %105
  %416 = load i32, i32* %7, align 4
  ret i32 %416
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_slave_convert_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @get_full_pkey_table(%struct.mlx4_dev*, i32, i32*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_master_func_num(%struct.mlx4_dev*) #1

declare dso_local i32 @vf_port_state(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i64 @mlx4_get_admin_guid(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_set_admin_guid(%struct.mlx4_dev*, i64, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @mlx4_get_slave_node_guid(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_vf_smi_enabled(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i32, i64, i64, i8*, i32) #1

declare dso_local i32 @be16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
