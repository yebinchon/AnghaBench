; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_QUERY_DEV_CAP_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_QUERY_DEV_CAP_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.mlx4_active_ports = type { i32 }

@MLX4_CMD_QUERY_DEV_CAP = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_EXT_FLAGS_OFFSET = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_MEM_WINDOW = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_WOL_PORT1 = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_RSS_IP_FRAG = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_VL_PORT_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_CQ_TS_SUPPORT_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_VXLAN = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_PORT_BEACON_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_BF_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_BMME_FLAGS_OFFSET = common dso_local global i32 0, align 4
@MLX4_BMME_FLAG_TYPE_2_WIN = common dso_local global i32 0, align 4
@MLX4_FLAG_PORT_REMAP = common dso_local global i32 0, align 4
@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@QUERY_DEV_CAP_FLOW_STEERING_RANGE_EN_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_FLOW_STEERING_IPOIB_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_EXT_2_FLAGS_OFFSET = common dso_local global i32 0, align 4
@DEV_CAP_EXT_2_FLAG_VLAN_CONTROL = common dso_local global i32 0, align 4
@DEV_CAP_EXT_2_FLAG_80_VFS = common dso_local global i32 0, align 4
@DEV_CAP_EXT_2_FLAG_FSM = common dso_local global i32 0, align 4
@DEV_CAP_EXT_2_FLAG_PFC_COUNTERS = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_ECN_QCN_VER_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_QP_RATE_LIMIT_NUM_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_CQ_EQ_CACHE_LINE_STRIDE = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_CONFIG_DEV_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QUERY_DEV_CAP_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.mlx4_active_ports, align 4
  %24 = alloca %struct.mlx4_active_ports, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  store i32 0, i32* %15, align 4
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %26 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %27 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MLX4_CMD_QUERY_DEV_CAP, align 4
  %30 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %31 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %32 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %25, i32 0, i32 %28, i32 0, i32 0, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %6
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %7, align 4
  br label %342

37:                                               ; preds = %6
  %38 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %39 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @disable_unsupported_roce_caps(i32 %40)
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %44 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @QUERY_DEV_CAP_EXT_FLAGS_OFFSET, align 4
  %47 = call i32 @MLX4_GET(i32 %42, i32 %45, i32 %46)
  %48 = load i32, i32* @MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV, align 4
  %49 = load i32, i32* %14, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* @MLX4_DEV_CAP_FLAG_MEM_WINDOW, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %14, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %14, align 4
  %55 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @mlx4_get_active_ports(%struct.mlx4_dev* %55, i32 %56)
  %58 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %24, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = bitcast %struct.mlx4_active_ports* %23 to i8*
  %60 = bitcast %struct.mlx4_active_ports* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 4, i1 false)
  %61 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %23, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %64 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @find_first_bit(i32 %62, i32 %66)
  store i32 %67, i32* %22, align 4
  store i32 0, i32* %21, align 4
  %68 = load i32, i32* %22, align 4
  store i32 %68, i32* %20, align 4
  br label %69

69:                                               ; preds = %102, %37
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* %22, align 4
  %72 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %23, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %75 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @bitmap_weight(i32 %73, i32 %77)
  %79 = add nsw i32 %71, %78
  %80 = icmp slt i32 %70, %79
  br i1 %80, label %81, label %107

81:                                               ; preds = %69
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @MLX4_DEV_CAP_FLAG_WOL_PORT1, align 4
  %84 = load i32, i32* %20, align 4
  %85 = shl i32 %83, %84
  %86 = and i32 %82, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i32, i32* @MLX4_DEV_CAP_FLAG_WOL_PORT1, align 4
  %90 = load i32, i32* %21, align 4
  %91 = shl i32 %89, %90
  %92 = load i32, i32* %14, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %14, align 4
  br label %101

94:                                               ; preds = %81
  %95 = load i32, i32* @MLX4_DEV_CAP_FLAG_WOL_PORT1, align 4
  %96 = load i32, i32* %21, align 4
  %97 = shl i32 %95, %96
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %14, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %94, %88
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %20, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %20, align 4
  %105 = load i32, i32* %21, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %21, align 4
  br label %69

107:                                              ; preds = %69
  br label %108

108:                                              ; preds = %122, %107
  %109 = load i32, i32* %21, align 4
  %110 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %111 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %109, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %108
  %116 = load i32, i32* @MLX4_DEV_CAP_FLAG_WOL_PORT1, align 4
  %117 = load i32, i32* %21, align 4
  %118 = shl i32 %116, %117
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %14, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %14, align 4
  br label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %21, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %21, align 4
  br label %108

125:                                              ; preds = %108
  %126 = load i32, i32* @MLX4_DEV_CAP_FLAG_RSS_IP_FRAG, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %14, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %14, align 4
  %130 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %131 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* @QUERY_DEV_CAP_EXT_FLAGS_OFFSET, align 4
  %135 = call i32 @MLX4_PUT(i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %16, align 4
  %137 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %138 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @QUERY_DEV_CAP_VL_PORT_OFFSET, align 4
  %141 = call i32 @MLX4_GET(i32 %136, i32 %139, i32 %140)
  %142 = load i32, i32* %16, align 4
  %143 = and i32 %142, -16
  store i32 %143, i32* %16, align 4
  %144 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %23, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %147 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @bitmap_weight(i32 %145, i32 %149)
  %151 = and i32 %150, 15
  %152 = load i32, i32* %16, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %16, align 4
  %154 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %155 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* @QUERY_DEV_CAP_VL_PORT_OFFSET, align 4
  %159 = call i32 @MLX4_PUT(i32 %156, i32 %157, i32 %158)
  %160 = load i32, i32* %16, align 4
  %161 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %162 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @QUERY_DEV_CAP_CQ_TS_SUPPORT_OFFSET, align 4
  %165 = call i32 @MLX4_GET(i32 %160, i32 %163, i32 %164)
  %166 = load i32, i32* %16, align 4
  %167 = and i32 %166, 127
  store i32 %167, i32* %16, align 4
  %168 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %169 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* @QUERY_DEV_CAP_CQ_TS_SUPPORT_OFFSET, align 4
  %173 = call i32 @MLX4_PUT(i32 %170, i32 %171, i32 %172)
  %174 = load i32, i32* %16, align 4
  %175 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %176 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @QUERY_DEV_CAP_VXLAN, align 4
  %179 = call i32 @MLX4_GET(i32 %174, i32 %177, i32 %178)
  %180 = load i32, i32* %16, align 4
  %181 = and i32 %180, 215
  store i32 %181, i32* %16, align 4
  %182 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %183 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* @QUERY_DEV_CAP_VXLAN, align 4
  %187 = call i32 @MLX4_PUT(i32 %184, i32 %185, i32 %186)
  %188 = load i32, i32* %16, align 4
  %189 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %190 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @QUERY_DEV_CAP_PORT_BEACON_OFFSET, align 4
  %193 = call i32 @MLX4_GET(i32 %188, i32 %191, i32 %192)
  %194 = load i32, i32* %16, align 4
  %195 = and i32 %194, 127
  store i32 %195, i32* %16, align 4
  %196 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %197 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* @QUERY_DEV_CAP_PORT_BEACON_OFFSET, align 4
  %201 = call i32 @MLX4_PUT(i32 %198, i32 %199, i32 %200)
  %202 = load i32, i32* %16, align 4
  %203 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %204 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @QUERY_DEV_CAP_BF_OFFSET, align 4
  %207 = call i32 @MLX4_GET(i32 %202, i32 %205, i32 %206)
  %208 = load i32, i32* %16, align 4
  %209 = and i32 %208, 127
  store i32 %209, i32* %16, align 4
  %210 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %211 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %16, align 4
  %214 = load i32, i32* @QUERY_DEV_CAP_BF_OFFSET, align 4
  %215 = call i32 @MLX4_PUT(i32 %212, i32 %213, i32 %214)
  %216 = load i32, i32* %18, align 4
  %217 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %218 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @QUERY_DEV_CAP_BMME_FLAGS_OFFSET, align 4
  %221 = call i32 @MLX4_GET(i32 %216, i32 %219, i32 %220)
  %222 = load i32, i32* @MLX4_BMME_FLAG_TYPE_2_WIN, align 4
  %223 = xor i32 %222, -1
  %224 = load i32, i32* %18, align 4
  %225 = and i32 %224, %223
  store i32 %225, i32* %18, align 4
  %226 = load i32, i32* @MLX4_FLAG_PORT_REMAP, align 4
  %227 = xor i32 %226, -1
  %228 = load i32, i32* %18, align 4
  %229 = and i32 %228, %227
  store i32 %229, i32* %18, align 4
  %230 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %231 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* @QUERY_DEV_CAP_BMME_FLAGS_OFFSET, align 4
  %235 = call i32 @MLX4_PUT(i32 %232, i32 %233, i32 %234)
  %236 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %237 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %241 = icmp ne i64 %239, %240
  br i1 %241, label %242, label %257

242:                                              ; preds = %125
  %243 = load i32, i32* %16, align 4
  %244 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %245 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @QUERY_DEV_CAP_FLOW_STEERING_RANGE_EN_OFFSET, align 4
  %248 = call i32 @MLX4_GET(i32 %243, i32 %246, i32 %247)
  %249 = load i32, i32* %16, align 4
  %250 = and i32 %249, 127
  store i32 %250, i32* %16, align 4
  %251 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %252 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %16, align 4
  %255 = load i32, i32* @QUERY_DEV_CAP_FLOW_STEERING_RANGE_EN_OFFSET, align 4
  %256 = call i32 @MLX4_PUT(i32 %253, i32 %254, i32 %255)
  br label %257

257:                                              ; preds = %242, %125
  %258 = load i32, i32* %16, align 4
  %259 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %260 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @QUERY_DEV_CAP_FLOW_STEERING_IPOIB_OFFSET, align 4
  %263 = call i32 @MLX4_GET(i32 %258, i32 %261, i32 %262)
  %264 = load i32, i32* %16, align 4
  %265 = and i32 %264, -129
  store i32 %265, i32* %16, align 4
  %266 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %267 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %16, align 4
  %270 = load i32, i32* @QUERY_DEV_CAP_FLOW_STEERING_IPOIB_OFFSET, align 4
  %271 = call i32 @MLX4_PUT(i32 %268, i32 %269, i32 %270)
  %272 = load i32, i32* %19, align 4
  %273 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %274 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @QUERY_DEV_CAP_EXT_2_FLAGS_OFFSET, align 4
  %277 = call i32 @MLX4_GET(i32 %272, i32 %275, i32 %276)
  %278 = load i32, i32* @DEV_CAP_EXT_2_FLAG_VLAN_CONTROL, align 4
  %279 = load i32, i32* @DEV_CAP_EXT_2_FLAG_80_VFS, align 4
  %280 = or i32 %278, %279
  %281 = load i32, i32* @DEV_CAP_EXT_2_FLAG_FSM, align 4
  %282 = or i32 %280, %281
  %283 = load i32, i32* @DEV_CAP_EXT_2_FLAG_PFC_COUNTERS, align 4
  %284 = or i32 %282, %283
  %285 = xor i32 %284, -1
  %286 = load i32, i32* %19, align 4
  %287 = and i32 %286, %285
  store i32 %287, i32* %19, align 4
  %288 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %289 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %19, align 4
  %292 = load i32, i32* @QUERY_DEV_CAP_EXT_2_FLAGS_OFFSET, align 4
  %293 = call i32 @MLX4_PUT(i32 %290, i32 %291, i32 %292)
  %294 = load i32, i32* %16, align 4
  %295 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %296 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @QUERY_DEV_CAP_ECN_QCN_VER_OFFSET, align 4
  %299 = call i32 @MLX4_GET(i32 %294, i32 %297, i32 %298)
  %300 = load i32, i32* %16, align 4
  %301 = and i32 %300, 254
  store i32 %301, i32* %16, align 4
  %302 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %303 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %16, align 4
  %306 = load i32, i32* @QUERY_DEV_CAP_ECN_QCN_VER_OFFSET, align 4
  %307 = call i32 @MLX4_PUT(i32 %304, i32 %305, i32 %306)
  store i32 0, i32* %17, align 4
  %308 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %309 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* %17, align 4
  %312 = load i32, i32* @QUERY_DEV_CAP_QP_RATE_LIMIT_NUM_OFFSET, align 4
  %313 = call i32 @MLX4_PUT(i32 %310, i32 %311, i32 %312)
  %314 = load i32, i32* %16, align 4
  %315 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %316 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @QUERY_DEV_CAP_CQ_EQ_CACHE_LINE_STRIDE, align 4
  %319 = call i32 @MLX4_GET(i32 %314, i32 %317, i32 %318)
  %320 = load i32, i32* %16, align 4
  %321 = and i32 %320, 239
  store i32 %321, i32* %16, align 4
  %322 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %323 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* %16, align 4
  %326 = load i32, i32* @QUERY_DEV_CAP_CQ_EQ_CACHE_LINE_STRIDE, align 4
  %327 = call i32 @MLX4_PUT(i32 %324, i32 %325, i32 %326)
  %328 = load i32, i32* %16, align 4
  %329 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %330 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @QUERY_DEV_CAP_CONFIG_DEV_OFFSET, align 4
  %333 = call i32 @MLX4_GET(i32 %328, i32 %331, i32 %332)
  %334 = load i32, i32* %16, align 4
  %335 = and i32 %334, 251
  store i32 %335, i32* %16, align 4
  %336 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %337 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* %16, align 4
  %340 = load i32, i32* @QUERY_DEV_CAP_CONFIG_DEV_OFFSET, align 4
  %341 = call i32 @MLX4_PUT(i32 %338, i32 %339, i32 %340)
  store i32 0, i32* %7, align 4
  br label %342

342:                                              ; preds = %257, %35
  %343 = load i32, i32* %7, align 4
  ret i32 %343
}

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @disable_unsupported_roce_caps(i32) #1

declare dso_local i32 @MLX4_GET(i32, i32, i32) #1

declare dso_local i32 @mlx4_get_active_ports(%struct.mlx4_dev*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i32 @MLX4_PUT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
