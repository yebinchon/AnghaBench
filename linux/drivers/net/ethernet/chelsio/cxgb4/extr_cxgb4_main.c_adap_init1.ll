; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_adap_init1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_adap_init1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_6__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fw_caps_config_cmd = type { i8*, i8* }

@.str = private unnamed_addr constant [54 x i8] c"Unable to retrieve resource provisioning information\0A\00", align 1
@FW_CAPS_CONFIG_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4
@FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL = common dso_local global i32 0, align 4
@FW_RSS_GLB_CONFIG_CMD_TNLMAPEN_F = common dso_local global i32 0, align 4
@FW_RSS_GLB_CONFIG_CMD_TNLALLLKP_F = common dso_local global i32 0, align 4
@MAX_INGQ = common dso_local global i32 0, align 4
@FW_CMD_CAP_PF = common dso_local global i32 0, align 4
@TP_SHIFT_CNT_A = common dso_local global i32 0, align 4
@ULP_RX_TDDP_PSZ_A = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@TP_PIO_ADDR_A = common dso_local global i32 0, align 4
@TP_INGRESS_CONFIG_A = common dso_local global i32 0, align 4
@TP_PIO_DATA_A = common dso_local global i32 0, align 4
@CSUM_HAS_PSEUDO_HDR_F = common dso_local global i32 0, align 4
@TP_TX_MOD_QUEUE_REQ_MAP_A = common dso_local global i32 0, align 4
@TP_TX_SCHED_HDR_A = common dso_local global i32 0, align 4
@TP_TX_SCHED_FIFO_A = common dso_local global i32 0, align 4
@TP_TX_SCHED_PCMD_A = common dso_local global i32 0, align 4
@TP_TX_MOD_QUEUE_WEIGHT0_A = common dso_local global i32 0, align 4
@TP_TX_MOD_CHANNEL_WEIGHT_A = common dso_local global i32 0, align 4
@T4_TX_MODQ_10G_WEIGHT_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.fw_caps_config_cmd*)* @adap_init1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adap_init1(%struct.adapter* %0, %struct.fw_caps_config_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.fw_caps_config_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.fw_caps_config_cmd* %1, %struct.fw_caps_config_cmd** %5, align 8
  %8 = load %struct.adapter*, %struct.adapter** %4, align 8
  %9 = call i32 @t4_get_pfres(%struct.adapter* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.adapter*, %struct.adapter** %4, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %189

18:                                               ; preds = %2
  %19 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %5, align 8
  %20 = call i32 @memset(%struct.fw_caps_config_cmd* %19, i32 0, i32 16)
  %21 = load i32, i32* @FW_CAPS_CONFIG_CMD, align 4
  %22 = call i32 @FW_CMD_OP_V(i32 %21)
  %23 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @FW_CMD_READ_F, align 4
  %26 = or i32 %24, %25
  %27 = call i8* @htonl(i32 %26)
  %28 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %5, align 8
  %31 = bitcast %struct.fw_caps_config_cmd* %30 to { i8*, i8* }*
  %32 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %31, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @FW_LEN16(i8* %33, i8* %35)
  %37 = call i8* @htonl(i32 %36)
  %38 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %5, align 8
  %39 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.adapter*, %struct.adapter** %4, align 8
  %41 = load %struct.adapter*, %struct.adapter** %4, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %5, align 8
  %45 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %5, align 8
  %46 = call i32 @t4_wr_mbox(%struct.adapter* %40, i32 %43, %struct.fw_caps_config_cmd* %44, i32 16, %struct.fw_caps_config_cmd* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %18
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %189

51:                                               ; preds = %18
  %52 = load i32, i32* @FW_CAPS_CONFIG_CMD, align 4
  %53 = call i32 @FW_CMD_OP_V(i32 %52)
  %54 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %57 = or i32 %55, %56
  %58 = call i8* @htonl(i32 %57)
  %59 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %5, align 8
  %60 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.adapter*, %struct.adapter** %4, align 8
  %62 = load %struct.adapter*, %struct.adapter** %4, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %5, align 8
  %66 = call i32 @t4_wr_mbox(%struct.adapter* %61, i32 %64, %struct.fw_caps_config_cmd* %65, i32 16, %struct.fw_caps_config_cmd* null)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %51
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %189

71:                                               ; preds = %51
  %72 = load %struct.adapter*, %struct.adapter** %4, align 8
  %73 = load %struct.adapter*, %struct.adapter** %4, align 8
  %74 = getelementptr inbounds %struct.adapter, %struct.adapter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL, align 4
  %77 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD_TNLMAPEN_F, align 4
  %78 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD_TNLALLLKP_F, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @t4_config_glbl_rss(%struct.adapter* %72, i32 %75, i32 %76, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %189

85:                                               ; preds = %71
  %86 = load %struct.adapter*, %struct.adapter** %4, align 8
  %87 = load %struct.adapter*, %struct.adapter** %4, align 8
  %88 = getelementptr inbounds %struct.adapter, %struct.adapter* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.adapter*, %struct.adapter** %4, align 8
  %91 = getelementptr inbounds %struct.adapter, %struct.adapter* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.adapter*, %struct.adapter** %4, align 8
  %94 = getelementptr inbounds %struct.adapter, %struct.adapter* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @MAX_INGQ, align 4
  %98 = load i32, i32* @FW_CMD_CAP_PF, align 4
  %99 = load i32, i32* @FW_CMD_CAP_PF, align 4
  %100 = call i32 @t4_cfg_pfvf(%struct.adapter* %86, i32 %89, i32 %92, i32 0, i32 %96, i32 64, i32 %97, i32 0, i32 0, i32 4, i32 15, i32 15, i32 16, i32 %98, i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %85
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %189

105:                                              ; preds = %85
  %106 = load %struct.adapter*, %struct.adapter** %4, align 8
  %107 = call i32 @t4_sge_init(%struct.adapter* %106)
  %108 = load %struct.adapter*, %struct.adapter** %4, align 8
  %109 = load i32, i32* @TP_SHIFT_CNT_A, align 4
  %110 = call i32 @t4_write_reg(%struct.adapter* %108, i32 %109, i32 105875529)
  %111 = load %struct.adapter*, %struct.adapter** %4, align 8
  %112 = load i32, i32* @ULP_RX_TDDP_PSZ_A, align 4
  %113 = load i64, i64* @PAGE_SHIFT, align 8
  %114 = sub nsw i64 %113, 12
  %115 = call i32 @HPZ0_V(i64 %114)
  %116 = call i32 @t4_write_reg(%struct.adapter* %111, i32 %112, i32 %115)
  %117 = load %struct.adapter*, %struct.adapter** %4, align 8
  %118 = load i32, i32* @TP_PIO_ADDR_A, align 4
  %119 = load i32, i32* @TP_INGRESS_CONFIG_A, align 4
  %120 = call i32 @t4_write_reg(%struct.adapter* %117, i32 %118, i32 %119)
  %121 = load %struct.adapter*, %struct.adapter** %4, align 8
  %122 = load i32, i32* @TP_PIO_DATA_A, align 4
  %123 = call i32 @t4_read_reg(%struct.adapter* %121, i32 %122)
  store i32 %123, i32* %6, align 4
  %124 = load %struct.adapter*, %struct.adapter** %4, align 8
  %125 = load i32, i32* @TP_PIO_DATA_A, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @CSUM_HAS_PSEUDO_HDR_F, align 4
  %128 = xor i32 %127, -1
  %129 = and i32 %126, %128
  %130 = call i32 @t4_write_reg(%struct.adapter* %124, i32 %125, i32 %129)
  %131 = load %struct.adapter*, %struct.adapter** %4, align 8
  %132 = getelementptr inbounds %struct.adapter, %struct.adapter* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  store i32 228, i32* %134, align 4
  %135 = load %struct.adapter*, %struct.adapter** %4, align 8
  %136 = load i32, i32* @TP_TX_MOD_QUEUE_REQ_MAP_A, align 4
  %137 = load %struct.adapter*, %struct.adapter** %4, align 8
  %138 = getelementptr inbounds %struct.adapter, %struct.adapter* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @TX_MOD_QUEUE_REQ_MAP_V(i32 %141)
  %143 = call i32 @t4_write_reg(%struct.adapter* %135, i32 %136, i32 %142)
  store i32 -2078178271, i32* %6, align 4
  %144 = load %struct.adapter*, %struct.adapter** %4, align 8
  %145 = load i32, i32* @TP_PIO_ADDR_A, align 4
  %146 = load i32, i32* @TP_PIO_DATA_A, align 4
  %147 = load i32, i32* @TP_TX_SCHED_HDR_A, align 4
  %148 = call i32 @t4_write_indirect(%struct.adapter* %144, i32 %145, i32 %146, i32* %6, i32 1, i32 %147)
  %149 = load %struct.adapter*, %struct.adapter** %4, align 8
  %150 = load i32, i32* @TP_PIO_ADDR_A, align 4
  %151 = load i32, i32* @TP_PIO_DATA_A, align 4
  %152 = load i32, i32* @TP_TX_SCHED_FIFO_A, align 4
  %153 = call i32 @t4_write_indirect(%struct.adapter* %149, i32 %150, i32 %151, i32* %6, i32 1, i32 %152)
  %154 = load %struct.adapter*, %struct.adapter** %4, align 8
  %155 = load i32, i32* @TP_PIO_ADDR_A, align 4
  %156 = load i32, i32* @TP_PIO_DATA_A, align 4
  %157 = load i32, i32* @TP_TX_SCHED_PCMD_A, align 4
  %158 = call i32 @t4_write_indirect(%struct.adapter* %154, i32 %155, i32 %156, i32* %6, i32 1, i32 %157)
  %159 = load %struct.adapter*, %struct.adapter** %4, align 8
  %160 = call i64 @is_offload(%struct.adapter* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %183

162:                                              ; preds = %105
  %163 = load %struct.adapter*, %struct.adapter** %4, align 8
  %164 = load i32, i32* @TP_TX_MOD_QUEUE_WEIGHT0_A, align 4
  %165 = call i32 @TX_MODQ_WEIGHT0_V(i32 16)
  %166 = call i32 @TX_MODQ_WEIGHT1_V(i32 16)
  %167 = or i32 %165, %166
  %168 = call i32 @TX_MODQ_WEIGHT2_V(i32 16)
  %169 = or i32 %167, %168
  %170 = call i32 @TX_MODQ_WEIGHT3_V(i32 16)
  %171 = or i32 %169, %170
  %172 = call i32 @t4_write_reg(%struct.adapter* %163, i32 %164, i32 %171)
  %173 = load %struct.adapter*, %struct.adapter** %4, align 8
  %174 = load i32, i32* @TP_TX_MOD_CHANNEL_WEIGHT_A, align 4
  %175 = call i32 @TX_MODQ_WEIGHT0_V(i32 16)
  %176 = call i32 @TX_MODQ_WEIGHT1_V(i32 16)
  %177 = or i32 %175, %176
  %178 = call i32 @TX_MODQ_WEIGHT2_V(i32 16)
  %179 = or i32 %177, %178
  %180 = call i32 @TX_MODQ_WEIGHT3_V(i32 16)
  %181 = or i32 %179, %180
  %182 = call i32 @t4_write_reg(%struct.adapter* %173, i32 %174, i32 %181)
  br label %183

183:                                              ; preds = %162, %105
  %184 = load %struct.adapter*, %struct.adapter** %4, align 8
  %185 = load %struct.adapter*, %struct.adapter** %4, align 8
  %186 = getelementptr inbounds %struct.adapter, %struct.adapter* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @t4_early_init(%struct.adapter* %184, i32 %187)
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %183, %103, %83, %69, %49, %12
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @t4_get_pfres(%struct.adapter*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @memset(%struct.fw_caps_config_cmd*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_LEN16(i8*, i8*) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_caps_config_cmd*, i32, %struct.fw_caps_config_cmd*) #1

declare dso_local i32 @t4_config_glbl_rss(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @t4_cfg_pfvf(%struct.adapter*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @t4_sge_init(%struct.adapter*) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @HPZ0_V(i64) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @TX_MOD_QUEUE_REQ_MAP_V(i32) #1

declare dso_local i32 @t4_write_indirect(%struct.adapter*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @is_offload(%struct.adapter*) #1

declare dso_local i32 @TX_MODQ_WEIGHT0_V(i32) #1

declare dso_local i32 @TX_MODQ_WEIGHT1_V(i32) #1

declare dso_local i32 @TX_MODQ_WEIGHT2_V(i32) #1

declare dso_local i32 @TX_MODQ_WEIGHT3_V(i32) #1

declare dso_local i32 @t4_early_init(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
