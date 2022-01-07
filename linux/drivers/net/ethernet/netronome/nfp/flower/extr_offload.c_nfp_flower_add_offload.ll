; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_add_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_add_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32 }
%struct.net_device = type { i32 }
%struct.flow_cls_offload = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }
%struct.nfp_fl_payload = type { i32, %struct.nfp_fl_payload*, %struct.nfp_fl_payload*, %struct.nfp_fl_payload*, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.nfp_fl_key_ls = type { i32, %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls*, i32, %struct.TYPE_4__, i32 }
%struct.nfp_port = type { i32 }

@NFP_FL_TUNNEL_NONE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfp_flower_table_params = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"invalid entry: cannot insert flow into tables for offloads\00", align 1
@NFP_FLOWER_CMSG_TYPE_FLOW_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.net_device*, %struct.flow_cls_offload*)* @nfp_flower_add_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_add_offload(%struct.nfp_app* %0, %struct.net_device* %1, %struct.flow_cls_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.flow_cls_offload*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfp_flower_priv*, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca %struct.nfp_fl_payload*, align 8
  %12 = alloca %struct.nfp_fl_key_ls*, align 8
  %13 = alloca %struct.nfp_port*, align 8
  %14 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %7, align 8
  %15 = load i32, i32* @NFP_FL_TUNNEL_NONE, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %17 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %16, i32 0, i32 0
  %18 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %17, align 8
  store %struct.nfp_flower_priv* %18, %struct.nfp_flower_priv** %9, align 8
  store %struct.netlink_ext_ack* null, %struct.netlink_ext_ack** %10, align 8
  store %struct.nfp_port* null, %struct.nfp_port** %13, align 8
  %19 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %20 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %21, align 8
  store %struct.netlink_ext_ack* %22, %struct.netlink_ext_ack** %10, align 8
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = call i64 @nfp_netdev_is_nfp_repr(%struct.net_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = call %struct.nfp_port* @nfp_port_from_netdev(%struct.net_device* %27)
  store %struct.nfp_port* %28, %struct.nfp_port** %13, align 8
  br label %29

29:                                               ; preds = %26, %3
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.nfp_fl_payload* @kmalloc(i32 56, i32 %30)
  %32 = bitcast %struct.nfp_fl_payload* %31 to %struct.nfp_fl_key_ls*
  store %struct.nfp_fl_key_ls* %32, %struct.nfp_fl_key_ls** %12, align 8
  %33 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %12, align 8
  %34 = icmp ne %struct.nfp_fl_key_ls* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %188

38:                                               ; preds = %29
  %39 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %12, align 8
  %42 = bitcast %struct.nfp_fl_key_ls* %41 to %struct.nfp_fl_payload*
  %43 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %44 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %45 = call i32 @nfp_flower_calculate_key_layers(%struct.nfp_app* %39, %struct.net_device* %40, %struct.nfp_fl_payload* %42, %struct.flow_cls_offload* %43, i32* %8, %struct.netlink_ext_ack* %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %183

49:                                               ; preds = %38
  %50 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %12, align 8
  %51 = bitcast %struct.nfp_fl_key_ls* %50 to %struct.nfp_fl_payload*
  %52 = call %struct.nfp_fl_payload* @nfp_flower_allocate_new(%struct.nfp_fl_payload* %51)
  store %struct.nfp_fl_payload* %52, %struct.nfp_fl_payload** %11, align 8
  %53 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %54 = icmp ne %struct.nfp_fl_payload* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %14, align 4
  br label %183

58:                                               ; preds = %49
  %59 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %60 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %61 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %12, align 8
  %62 = bitcast %struct.nfp_fl_key_ls* %61 to %struct.nfp_fl_payload*
  %63 = load %struct.net_device*, %struct.net_device** %6, align 8
  %64 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %67 = call i32 @nfp_flower_compile_flow_match(%struct.nfp_app* %59, %struct.flow_cls_offload* %60, %struct.nfp_fl_payload* %62, %struct.net_device* %63, %struct.nfp_fl_payload* %64, i32 %65, %struct.netlink_ext_ack* %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %168

71:                                               ; preds = %58
  %72 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %73 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %74 = load %struct.net_device*, %struct.net_device** %6, align 8
  %75 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %76 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %77 = call i32 @nfp_flower_compile_action(%struct.nfp_app* %72, %struct.flow_cls_offload* %73, %struct.net_device* %74, %struct.nfp_fl_payload* %75, %struct.netlink_ext_ack* %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %168

81:                                               ; preds = %71
  %82 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %83 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %89 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %90 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %91 = call i32 @nfp_flower_validate_pre_tun_rule(%struct.nfp_app* %88, %struct.nfp_fl_payload* %89, %struct.netlink_ext_ack* %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %168

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %81
  %97 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %98 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %99 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %100 = load %struct.net_device*, %struct.net_device** %6, align 8
  %101 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %102 = call i32 @nfp_compile_flow_metadata(%struct.nfp_app* %97, %struct.flow_cls_offload* %98, %struct.nfp_fl_payload* %99, %struct.net_device* %100, %struct.netlink_ext_ack* %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %168

106:                                              ; preds = %96
  %107 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %108 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %111 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 8
  %112 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %113 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %112, i32 0, i32 0
  %114 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %115 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %114, i32 0, i32 4
  %116 = load i32, i32* @nfp_flower_table_params, align 4
  %117 = call i32 @rhashtable_insert_fast(i32* %113, i32* %115, i32 %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %106
  %121 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %122 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %121, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %164

123:                                              ; preds = %106
  %124 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %125 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %131 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %132 = call i32 @nfp_flower_xmit_pre_tun_flow(%struct.nfp_app* %130, %struct.nfp_fl_payload* %131)
  store i32 %132, i32* %14, align 4
  br label %138

133:                                              ; preds = %123
  %134 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %135 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %136 = load i32, i32* @NFP_FLOWER_CMSG_TYPE_FLOW_ADD, align 4
  %137 = call i32 @nfp_flower_xmit_flow(%struct.nfp_app* %134, %struct.nfp_fl_payload* %135, i32 %136)
  store i32 %137, i32* %14, align 4
  br label %138

138:                                              ; preds = %133, %129
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %156

142:                                              ; preds = %138
  %143 = load %struct.nfp_port*, %struct.nfp_port** %13, align 8
  %144 = icmp ne %struct.nfp_port* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load %struct.nfp_port*, %struct.nfp_port** %13, align 8
  %147 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %145, %142
  %151 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %152 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %151, i32 0, i32 0
  store i32 1, i32* %152, align 8
  %153 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %12, align 8
  %154 = bitcast %struct.nfp_fl_key_ls* %153 to %struct.nfp_fl_payload*
  %155 = call i32 @kfree(%struct.nfp_fl_payload* %154)
  store i32 0, i32* %4, align 4
  br label %188

156:                                              ; preds = %141
  %157 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %158 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %157, i32 0, i32 0
  %159 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %160 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %159, i32 0, i32 4
  %161 = load i32, i32* @nfp_flower_table_params, align 4
  %162 = call i32 @rhashtable_remove_fast(i32* %158, i32* %160, i32 %161)
  %163 = call i32 @WARN_ON_ONCE(i32 %162)
  br label %164

164:                                              ; preds = %156, %120
  %165 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %166 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %167 = call i32 @nfp_modify_flow_metadata(%struct.nfp_app* %165, %struct.nfp_fl_payload* %166)
  br label %168

168:                                              ; preds = %164, %105, %94, %80, %70
  %169 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %170 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %169, i32 0, i32 3
  %171 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %170, align 8
  %172 = call i32 @kfree(%struct.nfp_fl_payload* %171)
  %173 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %174 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %173, i32 0, i32 2
  %175 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %174, align 8
  %176 = call i32 @kfree(%struct.nfp_fl_payload* %175)
  %177 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %178 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %177, i32 0, i32 1
  %179 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %178, align 8
  %180 = call i32 @kfree(%struct.nfp_fl_payload* %179)
  %181 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %182 = call i32 @kfree(%struct.nfp_fl_payload* %181)
  br label %183

183:                                              ; preds = %168, %55, %48
  %184 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %12, align 8
  %185 = bitcast %struct.nfp_fl_key_ls* %184 to %struct.nfp_fl_payload*
  %186 = call i32 @kfree(%struct.nfp_fl_payload* %185)
  %187 = load i32, i32* %14, align 4
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %183, %150, %35
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i64 @nfp_netdev_is_nfp_repr(%struct.net_device*) #1

declare dso_local %struct.nfp_port* @nfp_port_from_netdev(%struct.net_device*) #1

declare dso_local %struct.nfp_fl_payload* @kmalloc(i32, i32) #1

declare dso_local i32 @nfp_flower_calculate_key_layers(%struct.nfp_app*, %struct.net_device*, %struct.nfp_fl_payload*, %struct.flow_cls_offload*, i32*, %struct.netlink_ext_ack*) #1

declare dso_local %struct.nfp_fl_payload* @nfp_flower_allocate_new(%struct.nfp_fl_payload*) #1

declare dso_local i32 @nfp_flower_compile_flow_match(%struct.nfp_app*, %struct.flow_cls_offload*, %struct.nfp_fl_payload*, %struct.net_device*, %struct.nfp_fl_payload*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nfp_flower_compile_action(%struct.nfp_app*, %struct.flow_cls_offload*, %struct.net_device*, %struct.nfp_fl_payload*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nfp_flower_validate_pre_tun_rule(%struct.nfp_app*, %struct.nfp_fl_payload*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nfp_compile_flow_metadata(%struct.nfp_app*, %struct.flow_cls_offload*, %struct.nfp_fl_payload*, %struct.net_device*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @rhashtable_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nfp_flower_xmit_pre_tun_flow(%struct.nfp_app*, %struct.nfp_fl_payload*) #1

declare dso_local i32 @nfp_flower_xmit_flow(%struct.nfp_app*, %struct.nfp_fl_payload*, i32) #1

declare dso_local i32 @kfree(%struct.nfp_fl_payload*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @nfp_modify_flow_metadata(%struct.nfp_app*, %struct.nfp_fl_payload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
