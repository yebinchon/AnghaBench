; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_dcb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_dcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hclge_dbg_bitmap_cmd = type { i32, i32, i32, i32 }
%struct.hclge_desc = type { i32* }

@.str = private unnamed_addr constant [18 x i8] c"%i %i %i %i %i %i\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"dump dcb: bad command parameter, cnt=%d\0A\00", align 1
@HCLGE_OPC_QSET_DFX_STS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"roce_qset_mask: 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"nic_qs_mask: 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"qs_shaping_pass: 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"qs_bp_sts: 0x%x\0A\00", align 1
@HCLGE_OPC_PRI_DFX_STS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"pri_mask: 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"pri_cshaping_pass: 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"pri_pshaping_pass: 0x%x\0A\00", align 1
@HCLGE_OPC_PG_DFX_STS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"pg_mask: 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"pg_cshaping_pass: 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"pg_pshaping_pass: 0x%x\0A\00", align 1
@HCLGE_OPC_PORT_DFX_STS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"port_mask: 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"port_shaping_pass: 0x%x\0A\00", align 1
@HCLGE_OPC_SCH_NQ_CNT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"sch_nq_cnt: 0x%x\0A\00", align 1
@HCLGE_OPC_SCH_RQ_CNT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [18 x i8] c"sch_rq_cnt: 0x%x\0A\00", align 1
@HCLGE_OPC_TM_INTERNAL_STS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"pri_bp: 0x%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"fifo_dfx_info: 0x%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"sch_roce_fifo_afull_gap: 0x%x\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"tx_private_waterline: 0x%x\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"tm_bypass_en: 0x%x\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"SSU_TM_BYPASS_EN: 0x%x\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"SSU_RESERVE_CFG: 0x%x\0A\00", align 1
@HCLGE_OPC_TM_INTERNAL_CNT = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [19 x i8] c"SCH_NIC_NUM: 0x%x\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"SCH_ROCE_NUM: 0x%x\0A\00", align 1
@HCLGE_OPC_TM_INTERNAL_STS_1 = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [18 x i8] c"TC_MAP_SEL: 0x%x\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"IGU_PFC_PRI_EN: 0x%x\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"MAC_PFC_PRI_EN: 0x%x\0A\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"IGU_PRI_MAP_TC_CFG: 0x%x\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"IGU_TX_PRI_MAP_TC_CFG: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*, i8*)* @hclge_dbg_dump_dcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_dbg_dump_dcb(%struct.hclge_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hclge_dbg_bitmap_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x %struct.hclge_desc], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %17 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %5, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %10, i32* %8, i32* %12, i32* %7, i32* %11, i32* %9)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 6
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %26 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %304

31:                                               ; preds = %2
  %32 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %33 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @HCLGE_OPC_QSET_DFX_STS, align 4
  %36 = call i32 @hclge_dbg_cmd_send(%struct.hclge_dev* %32, %struct.hclge_desc* %33, i32 %34, i32 1, i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %304

40:                                               ; preds = %31
  %41 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %42 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 16
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = bitcast i32* %44 to %struct.hclge_dbg_bitmap_cmd*
  store %struct.hclge_dbg_bitmap_cmd* %45, %struct.hclge_dbg_bitmap_cmd** %6, align 8
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = load %struct.hclge_dbg_bitmap_cmd*, %struct.hclge_dbg_bitmap_cmd** %6, align 8
  %48 = getelementptr inbounds %struct.hclge_dbg_bitmap_cmd, %struct.hclge_dbg_bitmap_cmd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_info(%struct.device* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = load %struct.hclge_dbg_bitmap_cmd*, %struct.hclge_dbg_bitmap_cmd** %6, align 8
  %53 = getelementptr inbounds %struct.hclge_dbg_bitmap_cmd, %struct.hclge_dbg_bitmap_cmd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_info(%struct.device* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load %struct.hclge_dbg_bitmap_cmd*, %struct.hclge_dbg_bitmap_cmd** %6, align 8
  %58 = getelementptr inbounds %struct.hclge_dbg_bitmap_cmd, %struct.hclge_dbg_bitmap_cmd* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_info(%struct.device* %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = load %struct.hclge_dbg_bitmap_cmd*, %struct.hclge_dbg_bitmap_cmd** %6, align 8
  %63 = getelementptr inbounds %struct.hclge_dbg_bitmap_cmd, %struct.hclge_dbg_bitmap_cmd* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_info(%struct.device* %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  %66 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %67 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @HCLGE_OPC_PRI_DFX_STS, align 4
  %70 = call i32 @hclge_dbg_cmd_send(%struct.hclge_dev* %66, %struct.hclge_desc* %67, i32 %68, i32 1, i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %40
  br label %304

74:                                               ; preds = %40
  %75 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %76 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 16
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = bitcast i32* %78 to %struct.hclge_dbg_bitmap_cmd*
  store %struct.hclge_dbg_bitmap_cmd* %79, %struct.hclge_dbg_bitmap_cmd** %6, align 8
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = load %struct.hclge_dbg_bitmap_cmd*, %struct.hclge_dbg_bitmap_cmd** %6, align 8
  %82 = getelementptr inbounds %struct.hclge_dbg_bitmap_cmd, %struct.hclge_dbg_bitmap_cmd* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dev_info(%struct.device* %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %83)
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = load %struct.hclge_dbg_bitmap_cmd*, %struct.hclge_dbg_bitmap_cmd** %6, align 8
  %87 = getelementptr inbounds %struct.hclge_dbg_bitmap_cmd, %struct.hclge_dbg_bitmap_cmd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dev_info(%struct.device* %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %88)
  %90 = load %struct.device*, %struct.device** %5, align 8
  %91 = load %struct.hclge_dbg_bitmap_cmd*, %struct.hclge_dbg_bitmap_cmd** %6, align 8
  %92 = getelementptr inbounds %struct.hclge_dbg_bitmap_cmd, %struct.hclge_dbg_bitmap_cmd* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dev_info(%struct.device* %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %93)
  %95 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %96 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @HCLGE_OPC_PG_DFX_STS, align 4
  %99 = call i32 @hclge_dbg_cmd_send(%struct.hclge_dev* %95, %struct.hclge_desc* %96, i32 %97, i32 1, i32 %98)
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %74
  br label %304

103:                                              ; preds = %74
  %104 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %105 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 16
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = bitcast i32* %107 to %struct.hclge_dbg_bitmap_cmd*
  store %struct.hclge_dbg_bitmap_cmd* %108, %struct.hclge_dbg_bitmap_cmd** %6, align 8
  %109 = load %struct.device*, %struct.device** %5, align 8
  %110 = load %struct.hclge_dbg_bitmap_cmd*, %struct.hclge_dbg_bitmap_cmd** %6, align 8
  %111 = getelementptr inbounds %struct.hclge_dbg_bitmap_cmd, %struct.hclge_dbg_bitmap_cmd* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dev_info(%struct.device* %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %112)
  %114 = load %struct.device*, %struct.device** %5, align 8
  %115 = load %struct.hclge_dbg_bitmap_cmd*, %struct.hclge_dbg_bitmap_cmd** %6, align 8
  %116 = getelementptr inbounds %struct.hclge_dbg_bitmap_cmd, %struct.hclge_dbg_bitmap_cmd* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dev_info(%struct.device* %114, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %117)
  %119 = load %struct.device*, %struct.device** %5, align 8
  %120 = load %struct.hclge_dbg_bitmap_cmd*, %struct.hclge_dbg_bitmap_cmd** %6, align 8
  %121 = getelementptr inbounds %struct.hclge_dbg_bitmap_cmd, %struct.hclge_dbg_bitmap_cmd* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @dev_info(%struct.device* %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %122)
  %124 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %125 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @HCLGE_OPC_PORT_DFX_STS, align 4
  %128 = call i32 @hclge_dbg_cmd_send(%struct.hclge_dev* %124, %struct.hclge_desc* %125, i32 %126, i32 1, i32 %127)
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %103
  br label %304

132:                                              ; preds = %103
  %133 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %134 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 16
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = bitcast i32* %136 to %struct.hclge_dbg_bitmap_cmd*
  store %struct.hclge_dbg_bitmap_cmd* %137, %struct.hclge_dbg_bitmap_cmd** %6, align 8
  %138 = load %struct.device*, %struct.device** %5, align 8
  %139 = load %struct.hclge_dbg_bitmap_cmd*, %struct.hclge_dbg_bitmap_cmd** %6, align 8
  %140 = getelementptr inbounds %struct.hclge_dbg_bitmap_cmd, %struct.hclge_dbg_bitmap_cmd* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @dev_info(%struct.device* %138, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %141)
  %143 = load %struct.device*, %struct.device** %5, align 8
  %144 = load %struct.hclge_dbg_bitmap_cmd*, %struct.hclge_dbg_bitmap_cmd** %6, align 8
  %145 = getelementptr inbounds %struct.hclge_dbg_bitmap_cmd, %struct.hclge_dbg_bitmap_cmd* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @dev_info(%struct.device* %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %146)
  %148 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %149 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @HCLGE_OPC_SCH_NQ_CNT, align 4
  %152 = call i32 @hclge_dbg_cmd_send(%struct.hclge_dev* %148, %struct.hclge_desc* %149, i32 %150, i32 1, i32 %151)
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %132
  br label %304

156:                                              ; preds = %132
  %157 = load %struct.device*, %struct.device** %5, align 8
  %158 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %159 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 16
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @dev_info(%struct.device* %157, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %162)
  %164 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %165 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* @HCLGE_OPC_SCH_RQ_CNT, align 4
  %168 = call i32 @hclge_dbg_cmd_send(%struct.hclge_dev* %164, %struct.hclge_desc* %165, i32 %166, i32 1, i32 %167)
  store i32 %168, i32* %15, align 4
  %169 = load i32, i32* %15, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %156
  br label %304

172:                                              ; preds = %156
  %173 = load %struct.device*, %struct.device** %5, align 8
  %174 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %175 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 16
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @dev_info(%struct.device* %173, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 %178)
  %180 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %181 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %182 = load i32, i32* @HCLGE_OPC_TM_INTERNAL_STS, align 4
  %183 = call i32 @hclge_dbg_cmd_send(%struct.hclge_dev* %180, %struct.hclge_desc* %181, i32 0, i32 2, i32 %182)
  store i32 %183, i32* %15, align 4
  %184 = load i32, i32* %15, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %172
  br label %304

187:                                              ; preds = %172
  %188 = load %struct.device*, %struct.device** %5, align 8
  %189 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %190 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 16
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @dev_info(%struct.device* %188, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 %193)
  %195 = load %struct.device*, %struct.device** %5, align 8
  %196 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %197 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 16
  %199 = getelementptr inbounds i32, i32* %198, i64 2
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @dev_info(%struct.device* %195, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 %200)
  %202 = load %struct.device*, %struct.device** %5, align 8
  %203 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %204 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 16
  %206 = getelementptr inbounds i32, i32* %205, i64 3
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @dev_info(%struct.device* %202, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 %207)
  %209 = load %struct.device*, %struct.device** %5, align 8
  %210 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %211 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 16
  %213 = getelementptr inbounds i32, i32* %212, i64 4
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @dev_info(%struct.device* %209, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 %214)
  %216 = load %struct.device*, %struct.device** %5, align 8
  %217 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %218 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 16
  %220 = getelementptr inbounds i32, i32* %219, i64 5
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @dev_info(%struct.device* %216, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 %221)
  %223 = load %struct.device*, %struct.device** %5, align 8
  %224 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 1
  %225 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @dev_info(%struct.device* %223, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), i32 %228)
  %230 = load %struct.device*, %struct.device** %5, align 8
  %231 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 1
  %232 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @dev_info(%struct.device* %230, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 %235)
  %237 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %238 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* @HCLGE_OPC_TM_INTERNAL_CNT, align 4
  %241 = call i32 @hclge_dbg_cmd_send(%struct.hclge_dev* %237, %struct.hclge_desc* %238, i32 %239, i32 1, i32 %240)
  store i32 %241, i32* %15, align 4
  %242 = load i32, i32* %15, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %187
  br label %304

245:                                              ; preds = %187
  %246 = load %struct.device*, %struct.device** %5, align 8
  %247 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %248 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 16
  %250 = getelementptr inbounds i32, i32* %249, i64 1
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @dev_info(%struct.device* %246, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i32 %251)
  %253 = load %struct.device*, %struct.device** %5, align 8
  %254 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %255 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 16
  %257 = getelementptr inbounds i32, i32* %256, i64 2
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @dev_info(%struct.device* %253, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i32 %258)
  %260 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %261 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %262 = load i32, i32* %10, align 4
  %263 = load i32, i32* @HCLGE_OPC_TM_INTERNAL_STS_1, align 4
  %264 = call i32 @hclge_dbg_cmd_send(%struct.hclge_dev* %260, %struct.hclge_desc* %261, i32 %262, i32 1, i32 %263)
  store i32 %264, i32* %15, align 4
  %265 = load i32, i32* %15, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %245
  br label %304

268:                                              ; preds = %245
  %269 = load %struct.device*, %struct.device** %5, align 8
  %270 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %271 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 16
  %273 = getelementptr inbounds i32, i32* %272, i64 1
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @dev_info(%struct.device* %269, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i32 %274)
  %276 = load %struct.device*, %struct.device** %5, align 8
  %277 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %278 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 16
  %280 = getelementptr inbounds i32, i32* %279, i64 2
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @dev_info(%struct.device* %276, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0), i32 %281)
  %283 = load %struct.device*, %struct.device** %5, align 8
  %284 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %285 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 16
  %287 = getelementptr inbounds i32, i32* %286, i64 3
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @dev_info(%struct.device* %283, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i32 %288)
  %290 = load %struct.device*, %struct.device** %5, align 8
  %291 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %292 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 16
  %294 = getelementptr inbounds i32, i32* %293, i64 4
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @dev_info(%struct.device* %290, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i32 %295)
  %297 = load %struct.device*, %struct.device** %5, align 8
  %298 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %13, i64 0, i64 0
  %299 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 16
  %301 = getelementptr inbounds i32, i32* %300, i64 5
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @dev_info(%struct.device* %297, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0), i32 %302)
  br label %304

304:                                              ; preds = %268, %267, %244, %186, %171, %155, %131, %102, %73, %39, %24
  ret void
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @hclge_dbg_cmd_send(%struct.hclge_dev*, %struct.hclge_desc*, i32, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
