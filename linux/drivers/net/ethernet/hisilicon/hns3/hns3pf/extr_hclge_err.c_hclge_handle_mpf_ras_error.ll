; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_handle_mpf_ras_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_handle_mpf_ras_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_2__*, %struct.hnae3_ae_dev* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hnae3_ae_dev = type { i32 }
%struct.hclge_desc = type { i32* }

@HCLGE_QUERY_CLEAR_MPF_RAS_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"query all mpf ras int cmd failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"IMP_TCM_ECC_INT_STS\00", align 1
@hclge_imp_tcm_ecc_int = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"CMDQ_MEM_ECC_INT_STS\00", align 1
@hclge_cmdq_nic_mem_ecc_int = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"imp_rd_data_poison_err found\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"TQP_INT_ECC_INT_STS\00", align 1
@hclge_tqp_int_ecc_int = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"MSIX_ECC_INT_STS\00", align 1
@hclge_msix_sram_ecc_int = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"SSU_ECC_MULTI_BIT_INT_0\00", align 1
@hclge_ssu_mem_ecc_err_int = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [74 x i8] c"SSU_ECC_MULTI_BIT_INT_1 ssu_mem32_ecc_mbit_err found [error status=0x%x]\0A\00", align 1
@HNAE3_GLOBAL_RESET = common dso_local global i32 0, align 4
@HCLGE_SSU_COMMON_ERR_INT_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"SSU_COMMON_ERR_INT\00", align 1
@hclge_ssu_com_err_int = common dso_local global i32* null, align 8
@HCLGE_IGU_INT_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"IGU_INT_STS\00", align 1
@hclge_igu_int = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"PPP_MPF_ABNORMAL_INT_ST1\00", align 1
@hclge_ppp_mpf_abnormal_int_st1 = common dso_local global i32* null, align 8
@HCLGE_PPP_MPF_INT_ST3_MASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"PPP_MPF_ABNORMAL_INT_ST3\00", align 1
@hclge_ppp_mpf_abnormal_int_st3 = common dso_local global i32* null, align 8
@.str.12 = private unnamed_addr constant [56 x i8] c"PPU_MPF_ABNORMAL_INT_ST1 rpu_rx_pkt_ecc_mbit_err found\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"PPU_MPF_ABNORMAL_INT_ST2\00", align 1
@hclge_ppu_mpf_abnormal_int_st2 = common dso_local global i32* null, align 8
@HCLGE_PPU_MPF_INT_ST3_MASK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"PPU_MPF_ABNORMAL_INT_ST3\00", align 1
@hclge_ppu_mpf_abnormal_int_st3 = common dso_local global i32* null, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"TM_SCH_RINT\00", align 1
@hclge_tm_sch_rint = common dso_local global i32* null, align 8
@HCLGE_QCN_FIFO_INT_MASK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"QCN_FIFO_RINT\00", align 1
@hclge_qcn_fifo_rint = common dso_local global i32* null, align 8
@HCLGE_QCN_ECC_INT_MASK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [13 x i8] c"QCN_ECC_RINT\00", align 1
@hclge_qcn_ecc_rint = common dso_local global i32* null, align 8
@HCLGE_NCSI_ECC_INT_MASK = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"NCSI_ECC_INT_RPT\00", align 1
@hclge_ncsi_err_int = common dso_local global i32* null, align 8
@.str.19 = private unnamed_addr constant [39 x i8] c"clear all mpf ras int cmd failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, %struct.hclge_desc*, i32)* @hclge_handle_mpf_ras_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_handle_mpf_ras_error(%struct.hclge_dev* %0, %struct.hclge_desc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca %struct.hclge_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hnae3_ae_dev*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store %struct.hclge_desc* %1, %struct.hclge_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %14 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %13, i32 0, i32 2
  %15 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %14, align 8
  store %struct.hnae3_ae_dev* %15, %struct.hnae3_ae_dev** %8, align 8
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %17 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %9, align 8
  %20 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %21 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %20, i64 0
  %22 = load i32, i32* @HCLGE_QUERY_CLEAR_MPF_RAS_INT, align 4
  %23 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %21, i32 %22, i32 1)
  %24 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %25 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %24, i32 0, i32 0
  %26 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %27 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %26, i64 0
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @hclge_cmd_send(i32* %25, %struct.hclge_desc* %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load %struct.device*, %struct.device** %9, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %4, align 4
  br label %368

37:                                               ; preds = %3
  %38 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %39 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %38, i64 0
  %40 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load %struct.device*, %struct.device** %9, align 8
  %49 = load i32*, i32** @hclge_imp_tcm_ecc_int, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %53 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %52, i32 0, i32 0
  %54 = call i32 @hclge_log_error(%struct.device* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %50, i32 %51, i32* %53)
  br label %55

55:                                               ; preds = %47, %37
  %56 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %57 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %56, i64 0
  %58 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le32_to_cpu(i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load %struct.device*, %struct.device** %9, align 8
  %67 = load i32*, i32** @hclge_cmdq_nic_mem_ecc_int, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %71 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %70, i32 0, i32 0
  %72 = call i32 @hclge_log_error(%struct.device* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %68, i32 %69, i32* %71)
  br label %73

73:                                               ; preds = %65, %55
  %74 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %75 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %74, i64 0
  %76 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le32_to_cpu(i32 %79)
  %81 = call i32 @BIT(i32 0)
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = load %struct.device*, %struct.device** %9, align 8
  %86 = call i32 @dev_warn(%struct.device* %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %73
  %88 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %89 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %88, i64 0
  %90 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le32_to_cpu(i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %87
  %98 = load %struct.device*, %struct.device** %9, align 8
  %99 = load i32*, i32** @hclge_tqp_int_ecc_int, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %103 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %102, i32 0, i32 0
  %104 = call i32 @hclge_log_error(%struct.device* %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* %100, i32 %101, i32* %103)
  br label %105

105:                                              ; preds = %97, %87
  %106 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %107 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %106, i64 0
  %108 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le32_to_cpu(i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %105
  %116 = load %struct.device*, %struct.device** %9, align 8
  %117 = load i32*, i32** @hclge_msix_sram_ecc_int, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %121 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %120, i32 0, i32 0
  %122 = call i32 @hclge_log_error(%struct.device* %116, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* %118, i32 %119, i32* %121)
  br label %123

123:                                              ; preds = %115, %105
  %124 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %125 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %124, i64 2
  %126 = bitcast %struct.hclge_desc* %125 to i32*
  store i32* %126, i32** %10, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @le32_to_cpu(i32 %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %123
  %134 = load %struct.device*, %struct.device** %9, align 8
  %135 = load i32*, i32** @hclge_ssu_mem_ecc_err_int, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %139 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %138, i32 0, i32 0
  %140 = call i32 @hclge_log_error(%struct.device* %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32* %136, i32 %137, i32* %139)
  br label %141

141:                                              ; preds = %133, %123
  %142 = load i32*, i32** %10, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @le32_to_cpu(i32 %144)
  %146 = call i32 @BIT(i32 0)
  %147 = and i32 %145, %146
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %141
  %151 = load %struct.device*, %struct.device** %9, align 8
  %152 = load i32, i32* %11, align 4
  %153 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %151, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* @HNAE3_GLOBAL_RESET, align 4
  %155 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %156 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %155, i32 0, i32 0
  %157 = call i32 @set_bit(i32 %154, i32* %156)
  br label %158

158:                                              ; preds = %150, %141
  %159 = load i32*, i32** %10, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 4
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @le32_to_cpu(i32 %161)
  %163 = load i32, i32* @HCLGE_SSU_COMMON_ERR_INT_MASK, align 4
  %164 = and i32 %162, %163
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %158
  %168 = load %struct.device*, %struct.device** %9, align 8
  %169 = load i32*, i32** @hclge_ssu_com_err_int, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %11, align 4
  %172 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %173 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %172, i32 0, i32 0
  %174 = call i32 @hclge_log_error(%struct.device* %168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32* %170, i32 %171, i32* %173)
  br label %175

175:                                              ; preds = %167, %158
  %176 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %177 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %176, i64 3
  %178 = bitcast %struct.hclge_desc* %177 to i32*
  store i32* %178, i32** %10, align 8
  %179 = load i32*, i32** %10, align 8
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @le32_to_cpu(i32 %180)
  %182 = load i32, i32* @HCLGE_IGU_INT_MASK, align 4
  %183 = and i32 %181, %182
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %11, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %175
  %187 = load %struct.device*, %struct.device** %9, align 8
  %188 = load i32*, i32** @hclge_igu_int, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %11, align 4
  %191 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %192 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %191, i32 0, i32 0
  %193 = call i32 @hclge_log_error(%struct.device* %187, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32* %189, i32 %190, i32* %192)
  br label %194

194:                                              ; preds = %186, %175
  %195 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %196 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %195, i64 4
  %197 = bitcast %struct.hclge_desc* %196 to i32*
  store i32* %197, i32** %10, align 8
  %198 = load i32*, i32** %10, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @le32_to_cpu(i32 %200)
  store i32 %201, i32* %11, align 4
  %202 = load i32, i32* %11, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %194
  %205 = load %struct.device*, %struct.device** %9, align 8
  %206 = load i32*, i32** @hclge_ppp_mpf_abnormal_int_st1, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load i32, i32* %11, align 4
  %209 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %210 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %209, i32 0, i32 0
  %211 = call i32 @hclge_log_error(%struct.device* %205, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32* %207, i32 %208, i32* %210)
  br label %212

212:                                              ; preds = %204, %194
  %213 = load i32*, i32** %10, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 3
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @le32_to_cpu(i32 %215)
  %217 = load i32, i32* @HCLGE_PPP_MPF_INT_ST3_MASK, align 4
  %218 = and i32 %216, %217
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %11, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %229

221:                                              ; preds = %212
  %222 = load %struct.device*, %struct.device** %9, align 8
  %223 = load i32*, i32** @hclge_ppp_mpf_abnormal_int_st3, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  %225 = load i32, i32* %11, align 4
  %226 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %227 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %226, i32 0, i32 0
  %228 = call i32 @hclge_log_error(%struct.device* %222, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32* %224, i32 %225, i32* %227)
  br label %229

229:                                              ; preds = %221, %212
  %230 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %231 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %230, i64 5
  %232 = bitcast %struct.hclge_desc* %231 to i32*
  store i32* %232, i32** %10, align 8
  %233 = load i32*, i32** %10, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @le32_to_cpu(i32 %235)
  store i32 %236, i32* %11, align 4
  %237 = load i32, i32* %11, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %229
  %240 = load %struct.device*, %struct.device** %9, align 8
  %241 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %240, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0))
  %242 = load i32, i32* @HNAE3_GLOBAL_RESET, align 4
  %243 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %244 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %243, i32 0, i32 0
  %245 = call i32 @set_bit(i32 %242, i32* %244)
  br label %246

246:                                              ; preds = %239, %229
  %247 = load i32*, i32** %10, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 2
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @le32_to_cpu(i32 %249)
  store i32 %250, i32* %11, align 4
  %251 = load i32, i32* %11, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %246
  %254 = load %struct.device*, %struct.device** %9, align 8
  %255 = load i32*, i32** @hclge_ppu_mpf_abnormal_int_st2, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 0
  %257 = load i32, i32* %11, align 4
  %258 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %259 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %258, i32 0, i32 0
  %260 = call i32 @hclge_log_error(%struct.device* %254, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32* %256, i32 %257, i32* %259)
  br label %261

261:                                              ; preds = %253, %246
  %262 = load i32*, i32** %10, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 3
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @le32_to_cpu(i32 %264)
  %266 = load i32, i32* @HCLGE_PPU_MPF_INT_ST3_MASK, align 4
  %267 = and i32 %265, %266
  store i32 %267, i32* %11, align 4
  %268 = load i32, i32* %11, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %261
  %271 = load %struct.device*, %struct.device** %9, align 8
  %272 = load i32*, i32** @hclge_ppu_mpf_abnormal_int_st3, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  %274 = load i32, i32* %11, align 4
  %275 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %276 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %275, i32 0, i32 0
  %277 = call i32 @hclge_log_error(%struct.device* %271, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32* %273, i32 %274, i32* %276)
  br label %278

278:                                              ; preds = %270, %261
  %279 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %280 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %279, i64 6
  %281 = bitcast %struct.hclge_desc* %280 to i32*
  store i32* %281, i32** %10, align 8
  %282 = load i32*, i32** %10, align 8
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @le32_to_cpu(i32 %283)
  store i32 %284, i32* %11, align 4
  %285 = load i32, i32* %11, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %295

287:                                              ; preds = %278
  %288 = load %struct.device*, %struct.device** %9, align 8
  %289 = load i32*, i32** @hclge_tm_sch_rint, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  %291 = load i32, i32* %11, align 4
  %292 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %293 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %292, i32 0, i32 0
  %294 = call i32 @hclge_log_error(%struct.device* %288, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32* %290, i32 %291, i32* %293)
  br label %295

295:                                              ; preds = %287, %278
  %296 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %297 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %296, i64 7
  %298 = bitcast %struct.hclge_desc* %297 to i32*
  store i32* %298, i32** %10, align 8
  %299 = load i32*, i32** %10, align 8
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @le32_to_cpu(i32 %300)
  %302 = load i32, i32* @HCLGE_QCN_FIFO_INT_MASK, align 4
  %303 = and i32 %301, %302
  store i32 %303, i32* %11, align 4
  %304 = load i32, i32* %11, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %314

306:                                              ; preds = %295
  %307 = load %struct.device*, %struct.device** %9, align 8
  %308 = load i32*, i32** @hclge_qcn_fifo_rint, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 0
  %310 = load i32, i32* %11, align 4
  %311 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %312 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %311, i32 0, i32 0
  %313 = call i32 @hclge_log_error(%struct.device* %307, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32* %309, i32 %310, i32* %312)
  br label %314

314:                                              ; preds = %306, %295
  %315 = load i32*, i32** %10, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 1
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @le32_to_cpu(i32 %317)
  %319 = load i32, i32* @HCLGE_QCN_ECC_INT_MASK, align 4
  %320 = and i32 %318, %319
  store i32 %320, i32* %11, align 4
  %321 = load i32, i32* %11, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %314
  %324 = load %struct.device*, %struct.device** %9, align 8
  %325 = load i32*, i32** @hclge_qcn_ecc_rint, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 0
  %327 = load i32, i32* %11, align 4
  %328 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %329 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %328, i32 0, i32 0
  %330 = call i32 @hclge_log_error(%struct.device* %324, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i32* %326, i32 %327, i32* %329)
  br label %331

331:                                              ; preds = %323, %314
  %332 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %333 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %332, i64 9
  %334 = bitcast %struct.hclge_desc* %333 to i32*
  store i32* %334, i32** %10, align 8
  %335 = load i32*, i32** %10, align 8
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @le32_to_cpu(i32 %336)
  %338 = load i32, i32* @HCLGE_NCSI_ECC_INT_MASK, align 4
  %339 = and i32 %337, %338
  store i32 %339, i32* %11, align 4
  %340 = load i32, i32* %11, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %350

342:                                              ; preds = %331
  %343 = load %struct.device*, %struct.device** %9, align 8
  %344 = load i32*, i32** @hclge_ncsi_err_int, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 0
  %346 = load i32, i32* %11, align 4
  %347 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %8, align 8
  %348 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %347, i32 0, i32 0
  %349 = call i32 @hclge_log_error(%struct.device* %343, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32* %345, i32 %346, i32* %348)
  br label %350

350:                                              ; preds = %342, %331
  %351 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %352 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %351, i64 0
  %353 = call i32 @hclge_cmd_reuse_desc(%struct.hclge_desc* %352, i32 0)
  %354 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %355 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %354, i32 0, i32 0
  %356 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %357 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %356, i64 0
  %358 = load i32, i32* %7, align 4
  %359 = call i32 @hclge_cmd_send(i32* %355, %struct.hclge_desc* %357, i32 %358)
  store i32 %359, i32* %12, align 4
  %360 = load i32, i32* %12, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %350
  %363 = load %struct.device*, %struct.device** %9, align 8
  %364 = load i32, i32* %12, align 4
  %365 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %363, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0), i32 %364)
  br label %366

366:                                              ; preds = %362, %350
  %367 = load i32, i32* %12, align 4
  store i32 %367, i32* %4, align 4
  br label %368

368:                                              ; preds = %366, %32
  %369 = load i32, i32* %4, align 4
  ret i32 %369
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @hclge_log_error(%struct.device*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hclge_cmd_reuse_desc(%struct.hclge_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
