; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_QP_FLOW_STEERING_ATTACH_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_QP_FLOW_STEERING_ATTACH_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.mlx4_vhcr = type { i32, i32 }
%struct.mlx4_cmd_mailbox = type { i64, i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mlx4_resource_tracker }
%struct.mlx4_resource_tracker = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.list_head* }
%struct.list_head = type { i32 }
%struct.res_qp = type { i32, i64, i64, i32 }
%struct.mlx4_net_trans_rule_hw_ctrl = type { i32, i32 }
%struct._rule_hw = type { i32 }
%struct.res_fs_rule = type { i32, i64, i64, i32 }

@RES_MAC = common dso_local global i64 0, align 8
@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RES_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Steering rule with qpn 0x%x rejected\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Can't attach FS rule without L2 headers, adding L2 header\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Corrupted mailbox\0A\00", align 1
@MLX4_QP_FLOW_STEERING_ATTACH = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@RES_FS_RULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Fail to add flow steering resources\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_QP_FLOW_STEERING_DETACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QP_FLOW_STEERING_ATTACH_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca %struct.mlx4_priv*, align 8
  %15 = alloca %struct.mlx4_resource_tracker*, align 8
  %16 = alloca %struct.list_head*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.res_qp*, align 8
  %20 = alloca %struct.mlx4_net_trans_rule_hw_ctrl*, align 8
  %21 = alloca %struct._rule_hw*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.res_fs_rule*, align 8
  %24 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %26 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %25)
  store %struct.mlx4_priv* %26, %struct.mlx4_priv** %14, align 8
  %27 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %28 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store %struct.mlx4_resource_tracker* %30, %struct.mlx4_resource_tracker** %15, align 8
  %31 = load %struct.mlx4_resource_tracker*, %struct.mlx4_resource_tracker** %15, align 8
  %32 = getelementptr inbounds %struct.mlx4_resource_tracker, %struct.mlx4_resource_tracker* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.list_head*, %struct.list_head** %37, align 8
  %39 = load i64, i64* @RES_MAC, align 8
  %40 = getelementptr inbounds %struct.list_head, %struct.list_head* %38, i64 %39
  store %struct.list_head* %40, %struct.list_head** %16, align 8
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %42 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %6
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %266

50:                                               ; preds = %6
  %51 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %52 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.mlx4_net_trans_rule_hw_ctrl*
  store %struct.mlx4_net_trans_rule_hw_ctrl* %54, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %55 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %58 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mlx4_slave_convert_port(%struct.mlx4_dev* %55, i32 %56, i32 %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %50
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %266

66:                                               ; preds = %50
  %67 = load i32, i32* %17, align 4
  %68 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %69 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %71 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @be32_to_cpu(i32 %72)
  %74 = and i32 %73, 16777215
  store i32 %74, i32* %18, align 4
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* @RES_QP, align 4
  %79 = call i32 @get_res(%struct.mlx4_dev* %75, i32 %76, i32 %77, i32 %78, %struct.res_qp** %19)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %66
  %83 = load i32, i32* %18, align 4
  %84 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %17, align 4
  store i32 %85, i32* %7, align 4
  br label %266

86:                                               ; preds = %66
  %87 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %88 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %87, i64 1
  %89 = bitcast %struct.mlx4_net_trans_rule_hw_ctrl* %88 to %struct._rule_hw*
  store %struct._rule_hw* %89, %struct._rule_hw** %21, align 8
  %90 = load %struct._rule_hw*, %struct._rule_hw** %21, align 8
  %91 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @be16_to_cpu(i32 %92)
  %94 = call i32 @map_hw_to_sw_id(i32 %93)
  store i32 %94, i32* %22, align 4
  %95 = load i32, i32* %22, align 4
  %96 = icmp eq i32 %95, 132
  br i1 %96, label %97, label %101

97:                                               ; preds = %86
  %98 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %99 = load %struct._rule_hw*, %struct._rule_hw** %21, align 8
  %100 = call i32 @mlx4_handle_eth_header_mcast_prio(%struct.mlx4_net_trans_rule_hw_ctrl* %98, %struct._rule_hw* %99)
  br label %101

101:                                              ; preds = %97, %86
  %102 = load i32, i32* %22, align 4
  switch i32 %102, label %133 [
    i32 132, label %103
    i32 131, label %113
    i32 130, label %114
    i32 129, label %114
    i32 128, label %114
  ]

103:                                              ; preds = %101
  %104 = load i32, i32* %9, align 4
  %105 = load %struct._rule_hw*, %struct._rule_hw** %21, align 8
  %106 = load %struct.list_head*, %struct.list_head** %16, align 8
  %107 = call i32 @validate_eth_header_mac(i32 %104, %struct._rule_hw* %105, %struct.list_head* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %17, align 4
  br label %259

112:                                              ; preds = %103
  br label %137

113:                                              ; preds = %101
  br label %137

114:                                              ; preds = %101, %101, %101
  %115 = call i32 @pr_warn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %116 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %119 = load %struct.list_head*, %struct.list_head** %16, align 8
  %120 = load i32, i32* %22, align 4
  %121 = call i32 @add_eth_header(%struct.mlx4_dev* %116, i32 %117, %struct.mlx4_cmd_mailbox* %118, %struct.list_head* %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %17, align 4
  br label %259

126:                                              ; preds = %114
  %127 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %128 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = add i64 %130, 1
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %128, align 4
  br label %137

133:                                              ; preds = %101
  %134 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %17, align 4
  br label %259

137:                                              ; preds = %126, %113, %112
  %138 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %139 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %140 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %143 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %142, i32 0, i32 1
  %144 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %145 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @MLX4_QP_FLOW_STEERING_ATTACH, align 4
  %148 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %149 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %150 = call i32 @mlx4_cmd_imm(%struct.mlx4_dev* %138, i32 %141, i32* %143, i32 %146, i32 0, i32 %147, i32 %148, i32 %149)
  store i32 %150, i32* %17, align 4
  %151 = load i32, i32* %17, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %137
  br label %259

154:                                              ; preds = %137
  %155 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %158 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @RES_FS_RULE, align 4
  %161 = load i32, i32* %18, align 4
  %162 = call i32 @add_res_range(%struct.mlx4_dev* %155, i32 %156, i32 %159, i32 1, i32 %160, i32 %161)
  store i32 %162, i32* %17, align 4
  %163 = load i32, i32* %17, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %154
  %166 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %167 = call i32 @mlx4_err(%struct.mlx4_dev* %166, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %246

168:                                              ; preds = %154
  %169 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %172 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @RES_FS_RULE, align 4
  %175 = bitcast %struct.res_fs_rule** %23 to %struct.res_qp**
  %176 = call i32 @get_res(%struct.mlx4_dev* %169, i32 %170, i32 %173, i32 %174, %struct.res_qp** %175)
  store i32 %176, i32* %17, align 4
  %177 = load i32, i32* %17, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %168
  br label %246

180:                                              ; preds = %168
  %181 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %182 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @qp_attach_mbox_size(i64 %183)
  store i32 %184, i32* %24, align 4
  %185 = load i32, i32* %24, align 4
  %186 = load i32, i32* @GFP_KERNEL, align 4
  %187 = call i64 @kmalloc(i32 %185, i32 %186)
  %188 = load %struct.res_fs_rule*, %struct.res_fs_rule** %23, align 8
  %189 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %188, i32 0, i32 1
  store i64 %187, i64* %189, align 8
  %190 = load %struct.res_fs_rule*, %struct.res_fs_rule** %23, align 8
  %191 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %180
  %195 = load i32, i32* @ENOMEM, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %17, align 4
  br label %238

197:                                              ; preds = %180
  %198 = load i32, i32* %24, align 4
  %199 = load %struct.res_fs_rule*, %struct.res_fs_rule** %23, align 8
  %200 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 8
  %201 = load %struct.res_fs_rule*, %struct.res_fs_rule** %23, align 8
  %202 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %201, i32 0, i32 2
  store i64 0, i64* %202, align 8
  %203 = load %struct.res_fs_rule*, %struct.res_fs_rule** %23, align 8
  %204 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %207 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i32, i32* %24, align 4
  %210 = call i32 @memcpy(i64 %205, i64 %208, i32 %209)
  %211 = load %struct.res_fs_rule*, %struct.res_fs_rule** %23, align 8
  %212 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = inttoptr i64 %213 to %struct.mlx4_net_trans_rule_hw_ctrl*
  store %struct.mlx4_net_trans_rule_hw_ctrl* %214, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %215 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %216 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %219, label %222

219:                                              ; preds = %197
  %220 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %221 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %220, i32 0, i32 0
  store i32 2, i32* %221, align 4
  br label %225

222:                                              ; preds = %197
  %223 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %224 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %223, i32 0, i32 0
  store i32 1, i32* %224, align 4
  br label %225

225:                                              ; preds = %222, %219
  %226 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %227 = call i64 @mlx4_is_bonded(%struct.mlx4_dev* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %225
  %230 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %231 = load %struct.res_fs_rule*, %struct.res_fs_rule** %23, align 8
  %232 = bitcast %struct.res_fs_rule* %231 to %struct.res_qp*
  %233 = call i32 @mlx4_do_mirror_rule(%struct.mlx4_dev* %230, %struct.res_qp* %232)
  br label %234

234:                                              ; preds = %229, %225
  %235 = load %struct.res_qp*, %struct.res_qp** %19, align 8
  %236 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %235, i32 0, i32 0
  %237 = call i32 @atomic_inc(i32* %236)
  br label %238

238:                                              ; preds = %234, %194
  %239 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %240 = load i32, i32* %9, align 4
  %241 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %242 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @RES_FS_RULE, align 4
  %245 = call i32 @put_res(%struct.mlx4_dev* %239, i32 %240, i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %238, %179, %165
  %247 = load i32, i32* %17, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %258

249:                                              ; preds = %246
  %250 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %251 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %252 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @MLX4_QP_FLOW_STEERING_DETACH, align 4
  %255 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %256 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %257 = call i32 @mlx4_cmd(%struct.mlx4_dev* %250, i32 %253, i32 0, i32 0, i32 %254, i32 %255, i32 %256)
  br label %258

258:                                              ; preds = %249, %246
  br label %259

259:                                              ; preds = %258, %153, %133, %123, %109
  %260 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* %18, align 4
  %263 = load i32, i32* @RES_QP, align 4
  %264 = call i32 @put_res(%struct.mlx4_dev* %260, i32 %261, i32 %262, i32 %263)
  %265 = load i32, i32* %17, align 4
  store i32 %265, i32* %7, align 4
  br label %266

266:                                              ; preds = %259, %82, %63, %47
  %267 = load i32, i32* %7, align 4
  ret i32 %267
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_slave_convert_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_qp**) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @map_hw_to_sw_id(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @mlx4_handle_eth_header_mcast_prio(%struct.mlx4_net_trans_rule_hw_ctrl*, %struct._rule_hw*) #1

declare dso_local i32 @validate_eth_header_mac(i32, %struct._rule_hw*, %struct.list_head*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @add_eth_header(%struct.mlx4_dev*, i32, %struct.mlx4_cmd_mailbox*, %struct.list_head*, i32) #1

declare dso_local i32 @mlx4_cmd_imm(%struct.mlx4_dev*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @add_res_range(%struct.mlx4_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @qp_attach_mbox_size(i64) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i64 @mlx4_is_bonded(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_do_mirror_rule(%struct.mlx4_dev*, %struct.res_qp*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
