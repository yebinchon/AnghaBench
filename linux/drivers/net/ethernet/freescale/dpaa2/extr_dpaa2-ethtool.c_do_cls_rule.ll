; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_do_cls_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_do_cls_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ethtool_rx_flow_spec = type { i64, i32 }
%struct.dpaa2_eth_priv = type { i64, i32, i32 }
%struct.dpni_rule_cfg = type { i32, i8*, i8*, i32 }
%struct.dpni_fs_action_cfg = type { i64, i32, i32 }

@RX_CLS_FLOW_DISC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DPAA2_ETH_DIST_ALL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"No support for multiple FS keys, need to delete existing rules\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DPNI_FS_OPT_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rx_flow_spec*, i32)* @do_cls_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cls_rule(%struct.net_device* %0, %struct.ethtool_rx_flow_spec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpaa2_eth_priv*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.dpni_rule_cfg, align 8
  %11 = alloca %struct.dpni_fs_action_cfg, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_rx_flow_spec* %1, %struct.ethtool_rx_flow_spec** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.dpaa2_eth_priv* %17, %struct.dpaa2_eth_priv** %8, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %9, align 8
  %22 = bitcast %struct.dpni_rule_cfg* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 32, i1 false)
  %23 = bitcast %struct.dpni_fs_action_cfg* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 16, i1 false)
  store i64 0, i64* %13, align 8
  %24 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %25 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RX_CLS_FLOW_DISC, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %3
  %30 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %31 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %34 = call i64 @dpaa2_eth_queue_count(%struct.dpaa2_eth_priv* %33)
  %35 = icmp sge i64 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %184

39:                                               ; preds = %29, %3
  %40 = load i64, i64* @DPAA2_ETH_DIST_ALL, align 8
  %41 = call i8* @dpaa2_eth_cls_key_size(i64 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = getelementptr inbounds %struct.dpni_rule_cfg, %struct.dpni_rule_cfg* %10, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.dpni_rule_cfg, %struct.dpni_rule_cfg* %10, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 2
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kzalloc(i32 %46, i32 %47)
  store i8* %48, i8** %14, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %39
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %184

54:                                               ; preds = %39
  %55 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = getelementptr inbounds %struct.dpni_rule_cfg, %struct.dpni_rule_cfg* %10, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr i8, i8* %57, i64 %60
  %62 = call i32 @prep_cls_rule(%struct.ethtool_rx_flow_spec* %55, i8* %56, i8* %61, i64* %13)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %180

66:                                               ; preds = %54
  %67 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %68 = call i64 @dpaa2_eth_fs_mask_enabled(%struct.dpaa2_eth_priv* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %106, label %70

70:                                               ; preds = %66
  %71 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %72 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %70
  %76 = load %struct.net_device*, %struct.net_device** %5, align 8
  %77 = load i64, i64* %13, align 8
  %78 = call i32 @dpaa2_eth_set_cls(%struct.net_device* %76, i64 %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %180

82:                                               ; preds = %75
  %83 = load i64, i64* %13, align 8
  %84 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %85 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %98

86:                                               ; preds = %70
  %87 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %88 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %13, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.net_device*, %struct.net_device** %5, align 8
  %94 = call i32 @netdev_err(%struct.net_device* %93, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %95 = load i32, i32* @EOPNOTSUPP, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %15, align 4
  br label %180

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %82
  %99 = load i8*, i8** %14, align 8
  %100 = load i64, i64* %13, align 8
  %101 = call i32 @dpaa2_eth_cls_trim_rule(i8* %99, i64 %100)
  %102 = load i64, i64* %13, align 8
  %103 = call i8* @dpaa2_eth_cls_key_size(i64 %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = getelementptr inbounds %struct.dpni_rule_cfg, %struct.dpni_rule_cfg* %10, i32 0, i32 0
  store i32 %104, i32* %105, align 8
  br label %106

106:                                              ; preds = %98, %66
  %107 = load %struct.device*, %struct.device** %9, align 8
  %108 = load i8*, i8** %14, align 8
  %109 = getelementptr inbounds %struct.dpni_rule_cfg, %struct.dpni_rule_cfg* %10, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = mul nsw i32 %110, 2
  %112 = load i32, i32* @DMA_TO_DEVICE, align 4
  %113 = call i8* @dma_map_single(%struct.device* %107, i8* %108, i32 %111, i32 %112)
  store i8* %113, i8** %12, align 8
  %114 = load %struct.device*, %struct.device** %9, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = call i64 @dma_mapping_error(%struct.device* %114, i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %106
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %15, align 4
  br label %180

121:                                              ; preds = %106
  %122 = load i8*, i8** %12, align 8
  %123 = getelementptr inbounds %struct.dpni_rule_cfg, %struct.dpni_rule_cfg* %10, i32 0, i32 2
  store i8* %122, i8** %123, align 8
  %124 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %125 = call i64 @dpaa2_eth_fs_mask_enabled(%struct.dpaa2_eth_priv* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = load i8*, i8** %12, align 8
  %129 = getelementptr inbounds %struct.dpni_rule_cfg, %struct.dpni_rule_cfg* %10, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = getelementptr i8, i8* %128, i64 %131
  %133 = getelementptr inbounds %struct.dpni_rule_cfg, %struct.dpni_rule_cfg* %10, i32 0, i32 1
  store i8* %132, i8** %133, align 8
  br label %134

134:                                              ; preds = %127, %121
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %164

137:                                              ; preds = %134
  %138 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %139 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @RX_CLS_FLOW_DISC, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load i32, i32* @DPNI_FS_OPT_DISCARD, align 4
  %145 = getelementptr inbounds %struct.dpni_fs_action_cfg, %struct.dpni_fs_action_cfg* %11, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %144
  store i32 %147, i32* %145, align 8
  br label %153

148:                                              ; preds = %137
  %149 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %150 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.dpni_fs_action_cfg, %struct.dpni_fs_action_cfg* %11, i32 0, i32 0
  store i64 %151, i64* %152, align 8
  br label %153

153:                                              ; preds = %148, %143
  %154 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %155 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %158 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %161 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @dpni_add_fs_entry(i32 %156, i32 0, i32 %159, i32 0, i32 %162, %struct.dpni_rule_cfg* %10, %struct.dpni_fs_action_cfg* %11)
  store i32 %163, i32* %15, align 4
  br label %172

164:                                              ; preds = %134
  %165 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %166 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %169 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @dpni_remove_fs_entry(i32 %167, i32 0, i32 %170, i32 0, %struct.dpni_rule_cfg* %10)
  store i32 %171, i32* %15, align 4
  br label %172

172:                                              ; preds = %164, %153
  %173 = load %struct.device*, %struct.device** %9, align 8
  %174 = load i8*, i8** %12, align 8
  %175 = getelementptr inbounds %struct.dpni_rule_cfg, %struct.dpni_rule_cfg* %10, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = mul nsw i32 %176, 2
  %178 = load i32, i32* @DMA_TO_DEVICE, align 4
  %179 = call i32 @dma_unmap_single(%struct.device* %173, i8* %174, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %172, %118, %92, %81, %65
  %181 = load i8*, i8** %14, align 8
  %182 = call i32 @kfree(i8* %181)
  %183 = load i32, i32* %15, align 4
  store i32 %183, i32* %4, align 4
  br label %184

184:                                              ; preds = %180, %51, %36
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @dpaa2_eth_queue_count(%struct.dpaa2_eth_priv*) #1

declare dso_local i8* @dpaa2_eth_cls_key_size(i64) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @prep_cls_rule(%struct.ethtool_rx_flow_spec*, i8*, i8*, i64*) #1

declare dso_local i64 @dpaa2_eth_fs_mask_enabled(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @dpaa2_eth_set_cls(%struct.net_device*, i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @dpaa2_eth_cls_trim_rule(i8*, i64) #1

declare dso_local i8* @dma_map_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i8*) #1

declare dso_local i32 @dpni_add_fs_entry(i32, i32, i32, i32, i32, %struct.dpni_rule_cfg*, %struct.dpni_fs_action_cfg*) #1

declare dso_local i32 @dpni_remove_fs_entry(i32, i32, i32, i32, %struct.dpni_rule_cfg*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
