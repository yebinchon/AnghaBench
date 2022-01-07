; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_qos_buf_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_qos_buf_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.hclge_tx_buff_alloc_cmd = type { i32* }
%struct.hclge_rx_priv_buff_cmd = type { i32, i32* }
%struct.hclge_rx_priv_wl_buf = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.hclge_rx_com_wl = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.hclge_rx_com_thrd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.hclge_desc = type { i64, i32 }

@HCLGE_OPC_TX_BUFF_ALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"dump qos buf cfg\0A\00", align 1
@HCLGE_MAX_TC_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"tx_packet_buf_tc_%d: 0x%x\0A\00", align 1
@HCLGE_OPC_RX_PRIV_BUFF_ALLOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"rx_packet_buf_tc_%d: 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"rx_share_buf: 0x%x\0A\00", align 1
@HCLGE_OPC_RX_COM_WL_ALLOC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"rx_com_wl: high: 0x%x, low: 0x%x\0A\00", align 1
@HCLGE_OPC_RX_GBL_PKT_CNT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"rx_global_packet_cnt: high: 0x%x, low: 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Only DCB-supported dev supports rx priv wl\0A\00", align 1
@HCLGE_OPC_RX_PRIV_WL_ALLOC = common dso_local global i32 0, align 4
@HCLGE_CMD_FLAG_NEXT = common dso_local global i32 0, align 4
@HCLGE_TC_NUM_ONE_DESC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"rx_priv_wl_tc_%d: high: 0x%x, low: 0x%x\0A\00", align 1
@HCLGE_OPC_RX_COM_THRD_ALLOC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"rx_com_thrd_tc_%d: high: 0x%x, low: 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"dump qos buf cfg fail(0x%x), ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*)* @hclge_dbg_dump_qos_buf_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_dbg_dump_qos_buf_cfg(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca %struct.hclge_tx_buff_alloc_cmd*, align 8
  %4 = alloca %struct.hclge_rx_priv_buff_cmd*, align 8
  %5 = alloca %struct.hclge_rx_priv_wl_buf*, align 8
  %6 = alloca %struct.hclge_rx_com_wl*, align 8
  %7 = alloca %struct.hclge_rx_com_thrd*, align 8
  %8 = alloca %struct.hclge_rx_com_wl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.hclge_desc], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  %13 = load i32, i32* @HCLGE_OPC_TX_BUFF_ALLOC, align 4
  store i32 %13, i32* %9, align 4
  %14 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 0
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %14, i32 %15, i32 1)
  %17 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %18 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 0
  %20 = call i32 @hclge_cmd_send(i32* %18, %struct.hclge_desc* %19, i32 1)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %376

24:                                               ; preds = %1
  %25 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %26 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_info(i32* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %30 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 0
  %31 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 16
  %33 = inttoptr i64 %32 to %struct.hclge_tx_buff_alloc_cmd*
  store %struct.hclge_tx_buff_alloc_cmd* %33, %struct.hclge_tx_buff_alloc_cmd** %3, align 8
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %52, %24
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @HCLGE_MAX_TC_NUM, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %40 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.hclge_tx_buff_alloc_cmd*, %struct.hclge_tx_buff_alloc_cmd** %3, align 8
  %45 = getelementptr inbounds %struct.hclge_tx_buff_alloc_cmd, %struct.hclge_tx_buff_alloc_cmd* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32*, i8*, ...) @dev_info(i32* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %50)
  br label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %34

55:                                               ; preds = %34
  %56 = load i32, i32* @HCLGE_OPC_RX_PRIV_BUFF_ALLOC, align 4
  store i32 %56, i32* %9, align 4
  %57 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 0
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %57, i32 %58, i32 1)
  %60 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %61 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %60, i32 0, i32 1
  %62 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 0
  %63 = call i32 @hclge_cmd_send(i32* %61, %struct.hclge_desc* %62, i32 1)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %376

67:                                               ; preds = %55
  %68 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %69 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = call i32 (i32*, i8*, ...) @dev_info(i32* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %73 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 0
  %74 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 16
  %76 = inttoptr i64 %75 to %struct.hclge_rx_priv_buff_cmd*
  store %struct.hclge_rx_priv_buff_cmd* %76, %struct.hclge_rx_priv_buff_cmd** %4, align 8
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %95, %67
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @HCLGE_MAX_TC_NUM, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %77
  %82 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %83 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.hclge_rx_priv_buff_cmd*, %struct.hclge_rx_priv_buff_cmd** %4, align 8
  %88 = getelementptr inbounds %struct.hclge_rx_priv_buff_cmd, %struct.hclge_rx_priv_buff_cmd* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i32*, i8*, ...) @dev_info(i32* %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32 %93)
  br label %95

95:                                               ; preds = %81
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %77

98:                                               ; preds = %77
  %99 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %100 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %99, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load %struct.hclge_rx_priv_buff_cmd*, %struct.hclge_rx_priv_buff_cmd** %4, align 8
  %104 = getelementptr inbounds %struct.hclge_rx_priv_buff_cmd, %struct.hclge_rx_priv_buff_cmd* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i32*, i8*, ...) @dev_info(i32* %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @HCLGE_OPC_RX_COM_WL_ALLOC, align 4
  store i32 %107, i32* %9, align 4
  %108 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 0
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %108, i32 %109, i32 1)
  %111 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %112 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %111, i32 0, i32 1
  %113 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 0
  %114 = call i32 @hclge_cmd_send(i32* %112, %struct.hclge_desc* %113, i32 1)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %98
  br label %376

118:                                              ; preds = %98
  %119 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 0
  %120 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 16
  %122 = inttoptr i64 %121 to %struct.hclge_rx_com_wl*
  store %struct.hclge_rx_com_wl* %122, %struct.hclge_rx_com_wl** %8, align 8
  %123 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %124 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = call i32 (i32*, i8*, ...) @dev_info(i32* %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %128 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %129 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %128, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load %struct.hclge_rx_com_wl*, %struct.hclge_rx_com_wl** %8, align 8
  %133 = getelementptr inbounds %struct.hclge_rx_com_wl, %struct.hclge_rx_com_wl* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.hclge_rx_com_wl*, %struct.hclge_rx_com_wl** %8, align 8
  %137 = getelementptr inbounds %struct.hclge_rx_com_wl, %struct.hclge_rx_com_wl* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32*, i8*, ...) @dev_info(i32* %131, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %135, i32 %139)
  %141 = load i32, i32* @HCLGE_OPC_RX_GBL_PKT_CNT, align 4
  store i32 %141, i32* %9, align 4
  %142 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 0
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %142, i32 %143, i32 1)
  %145 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %146 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %145, i32 0, i32 1
  %147 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 0
  %148 = call i32 @hclge_cmd_send(i32* %146, %struct.hclge_desc* %147, i32 1)
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %118
  br label %376

152:                                              ; preds = %118
  %153 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 0
  %154 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 16
  %156 = inttoptr i64 %155 to %struct.hclge_rx_com_wl*
  store %struct.hclge_rx_com_wl* %156, %struct.hclge_rx_com_wl** %6, align 8
  %157 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %158 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %157, i32 0, i32 0
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load %struct.hclge_rx_com_wl*, %struct.hclge_rx_com_wl** %6, align 8
  %162 = getelementptr inbounds %struct.hclge_rx_com_wl, %struct.hclge_rx_com_wl* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.hclge_rx_com_wl*, %struct.hclge_rx_com_wl** %6, align 8
  %166 = getelementptr inbounds %struct.hclge_rx_com_wl, %struct.hclge_rx_com_wl* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i32*, i8*, ...) @dev_info(i32* %160, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %164, i32 %168)
  %170 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %171 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %170, i32 0, i32 0
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = call i32 (i32*, i8*, ...) @dev_info(i32* %173, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %175 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %176 = call i32 @hnae3_dev_dcb_supported(%struct.hclge_dev* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %152
  %179 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %180 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %179, i32 0, i32 0
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = call i32 (i32*, i8*, ...) @dev_info(i32* %182, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %384

184:                                              ; preds = %152
  %185 = load i32, i32* @HCLGE_OPC_RX_PRIV_WL_ALLOC, align 4
  store i32 %185, i32* %9, align 4
  %186 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 0
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %186, i32 %187, i32 1)
  %189 = load i32, i32* @HCLGE_CMD_FLAG_NEXT, align 4
  %190 = call i32 @cpu_to_le16(i32 %189)
  %191 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 0
  %192 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  %195 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 1
  %196 = load i32, i32* %9, align 4
  %197 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %195, i32 %196, i32 1)
  %198 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %199 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %198, i32 0, i32 1
  %200 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 0
  %201 = call i32 @hclge_cmd_send(i32* %199, %struct.hclge_desc* %200, i32 2)
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %12, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %184
  br label %376

205:                                              ; preds = %184
  %206 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 0
  %207 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 16
  %209 = inttoptr i64 %208 to %struct.hclge_rx_priv_wl_buf*
  store %struct.hclge_rx_priv_wl_buf* %209, %struct.hclge_rx_priv_wl_buf** %5, align 8
  store i32 0, i32* %11, align 4
  br label %210

210:                                              ; preds = %237, %205
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* @HCLGE_TC_NUM_ONE_DESC, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %240

214:                                              ; preds = %210
  %215 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %216 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %215, i32 0, i32 0
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  %219 = load i32, i32* %11, align 4
  %220 = load %struct.hclge_rx_priv_wl_buf*, %struct.hclge_rx_priv_wl_buf** %5, align 8
  %221 = getelementptr inbounds %struct.hclge_rx_priv_wl_buf, %struct.hclge_rx_priv_wl_buf* %220, i32 0, i32 0
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = load i32, i32* %11, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.hclge_rx_priv_wl_buf*, %struct.hclge_rx_priv_wl_buf** %5, align 8
  %229 = getelementptr inbounds %struct.hclge_rx_priv_wl_buf, %struct.hclge_rx_priv_wl_buf* %228, i32 0, i32 0
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %229, align 8
  %231 = load i32, i32* %11, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 (i32*, i8*, ...) @dev_info(i32* %218, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %219, i32 %227, i32 %235)
  br label %237

237:                                              ; preds = %214
  %238 = load i32, i32* %11, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %11, align 4
  br label %210

240:                                              ; preds = %210
  %241 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 1
  %242 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 16
  %244 = inttoptr i64 %243 to %struct.hclge_rx_priv_wl_buf*
  store %struct.hclge_rx_priv_wl_buf* %244, %struct.hclge_rx_priv_wl_buf** %5, align 8
  store i32 0, i32* %11, align 4
  br label %245

245:                                              ; preds = %274, %240
  %246 = load i32, i32* %11, align 4
  %247 = load i32, i32* @HCLGE_TC_NUM_ONE_DESC, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %277

249:                                              ; preds = %245
  %250 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %251 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %250, i32 0, i32 0
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* @HCLGE_TC_NUM_ONE_DESC, align 4
  %256 = add nsw i32 %254, %255
  %257 = load %struct.hclge_rx_priv_wl_buf*, %struct.hclge_rx_priv_wl_buf** %5, align 8
  %258 = getelementptr inbounds %struct.hclge_rx_priv_wl_buf, %struct.hclge_rx_priv_wl_buf* %257, i32 0, i32 0
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %258, align 8
  %260 = load i32, i32* %11, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.hclge_rx_priv_wl_buf*, %struct.hclge_rx_priv_wl_buf** %5, align 8
  %266 = getelementptr inbounds %struct.hclge_rx_priv_wl_buf, %struct.hclge_rx_priv_wl_buf* %265, i32 0, i32 0
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %266, align 8
  %268 = load i32, i32* %11, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i32 (i32*, i8*, ...) @dev_info(i32* %253, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %256, i32 %264, i32 %272)
  br label %274

274:                                              ; preds = %249
  %275 = load i32, i32* %11, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %11, align 4
  br label %245

277:                                              ; preds = %245
  %278 = load i32, i32* @HCLGE_OPC_RX_COM_THRD_ALLOC, align 4
  store i32 %278, i32* %9, align 4
  %279 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 0
  %280 = load i32, i32* %9, align 4
  %281 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %279, i32 %280, i32 1)
  %282 = load i32, i32* @HCLGE_CMD_FLAG_NEXT, align 4
  %283 = call i32 @cpu_to_le16(i32 %282)
  %284 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 0
  %285 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = or i32 %286, %283
  store i32 %287, i32* %285, align 8
  %288 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 1
  %289 = load i32, i32* %9, align 4
  %290 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %288, i32 %289, i32 1)
  %291 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %292 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %291, i32 0, i32 1
  %293 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 0
  %294 = call i32 @hclge_cmd_send(i32* %292, %struct.hclge_desc* %293, i32 2)
  store i32 %294, i32* %12, align 4
  %295 = load i32, i32* %12, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %277
  br label %376

298:                                              ; preds = %277
  %299 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %300 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %299, i32 0, i32 0
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 0
  %303 = call i32 (i32*, i8*, ...) @dev_info(i32* %302, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %304 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 0
  %305 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 16
  %307 = inttoptr i64 %306 to %struct.hclge_rx_com_thrd*
  store %struct.hclge_rx_com_thrd* %307, %struct.hclge_rx_com_thrd** %7, align 8
  store i32 0, i32* %11, align 4
  br label %308

308:                                              ; preds = %335, %298
  %309 = load i32, i32* %11, align 4
  %310 = load i32, i32* @HCLGE_TC_NUM_ONE_DESC, align 4
  %311 = icmp slt i32 %309, %310
  br i1 %311, label %312, label %338

312:                                              ; preds = %308
  %313 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %314 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %313, i32 0, i32 0
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 0
  %317 = load i32, i32* %11, align 4
  %318 = load %struct.hclge_rx_com_thrd*, %struct.hclge_rx_com_thrd** %7, align 8
  %319 = getelementptr inbounds %struct.hclge_rx_com_thrd, %struct.hclge_rx_com_thrd* %318, i32 0, i32 0
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** %319, align 8
  %321 = load i32, i32* %11, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.hclge_rx_com_thrd*, %struct.hclge_rx_com_thrd** %7, align 8
  %327 = getelementptr inbounds %struct.hclge_rx_com_thrd, %struct.hclge_rx_com_thrd* %326, i32 0, i32 0
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %327, align 8
  %329 = load i32, i32* %11, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = call i32 (i32*, i8*, ...) @dev_info(i32* %316, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %317, i32 %325, i32 %333)
  br label %335

335:                                              ; preds = %312
  %336 = load i32, i32* %11, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %11, align 4
  br label %308

338:                                              ; preds = %308
  %339 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %10, i64 0, i64 1
  %340 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 16
  %342 = inttoptr i64 %341 to %struct.hclge_rx_com_thrd*
  store %struct.hclge_rx_com_thrd* %342, %struct.hclge_rx_com_thrd** %7, align 8
  store i32 0, i32* %11, align 4
  br label %343

343:                                              ; preds = %372, %338
  %344 = load i32, i32* %11, align 4
  %345 = load i32, i32* @HCLGE_TC_NUM_ONE_DESC, align 4
  %346 = icmp slt i32 %344, %345
  br i1 %346, label %347, label %375

347:                                              ; preds = %343
  %348 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %349 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %348, i32 0, i32 0
  %350 = load %struct.TYPE_7__*, %struct.TYPE_7__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 0
  %352 = load i32, i32* %11, align 4
  %353 = load i32, i32* @HCLGE_TC_NUM_ONE_DESC, align 4
  %354 = add nsw i32 %352, %353
  %355 = load %struct.hclge_rx_com_thrd*, %struct.hclge_rx_com_thrd** %7, align 8
  %356 = getelementptr inbounds %struct.hclge_rx_com_thrd, %struct.hclge_rx_com_thrd* %355, i32 0, i32 0
  %357 = load %struct.TYPE_5__*, %struct.TYPE_5__** %356, align 8
  %358 = load i32, i32* %11, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.hclge_rx_com_thrd*, %struct.hclge_rx_com_thrd** %7, align 8
  %364 = getelementptr inbounds %struct.hclge_rx_com_thrd, %struct.hclge_rx_com_thrd* %363, i32 0, i32 0
  %365 = load %struct.TYPE_5__*, %struct.TYPE_5__** %364, align 8
  %366 = load i32, i32* %11, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = call i32 (i32*, i8*, ...) @dev_info(i32* %351, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %354, i32 %362, i32 %370)
  br label %372

372:                                              ; preds = %347
  %373 = load i32, i32* %11, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %11, align 4
  br label %343

375:                                              ; preds = %343
  br label %384

376:                                              ; preds = %297, %204, %151, %117, %66, %23
  %377 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %378 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %377, i32 0, i32 0
  %379 = load %struct.TYPE_7__*, %struct.TYPE_7__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %379, i32 0, i32 0
  %381 = load i32, i32* %9, align 4
  %382 = load i32, i32* %12, align 4
  %383 = call i32 @dev_err(i32* %380, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i32 %381, i32 %382)
  br label %384

384:                                              ; preds = %376, %375, %178
  ret void
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @hnae3_dev_dcb_supported(%struct.hclge_dev*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
