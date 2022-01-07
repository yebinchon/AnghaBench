; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_tm_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_tm_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_bp_to_qs_map_cmd = type { i32, i32, i32 }
%struct.hclge_nq_to_qs_link_cmd = type { i32, i8* }
%struct.hclge_qs_to_pri_link_cmd = type { i32, i8* }
%struct.hclge_tqp_tx_queue_tc_cmd = type { i32, i8* }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_TM_NQ_TO_QS_LINK = common dso_local global i32 0, align 4
@HCLGE_OPC_TM_QS_TO_PRI_LINK = common dso_local global i32 0, align 4
@HCLGE_OPC_TQP_TX_QUEUE_TC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"queue_id | qset_id | pri_id | tc_id\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%04d     | %04d    | %02d     | %02d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Only DCB-supported dev supports tm mapping\0A\00", align 1
@HCLGE_OPC_TM_BP_TO_QSET_MAPPING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"index | tm bp qset maping:\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"%04d  | %08x:%08x:%08x:%08x:%08x:%08x:%08x:%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"dump tqp map fail(0x%x), ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*, i8*)* @hclge_dbg_dump_tm_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_dbg_dump_tm_map(%struct.hclge_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hclge_bp_to_qs_map_cmd*, align 8
  %6 = alloca %struct.hclge_nq_to_qs_link_cmd*, align 8
  %7 = alloca %struct.hclge_qs_to_pri_link_cmd*, align 8
  %8 = alloca %struct.hclge_tqp_tx_queue_tc_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hclge_desc, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [32 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @kstrtouint(i8* %19, i32 0, i32* %11)
  store i32 %20, i32* %17, align 4
  %21 = load i32, i32* %17, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %11, align 4
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i32 [ 0, %23 ], [ %25, %24 ]
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* @HCLGE_OPC_TM_NQ_TO_QS_LINK, align 4
  store i32 %28, i32* %9, align 4
  %29 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %10, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.hclge_nq_to_qs_link_cmd*
  store %struct.hclge_nq_to_qs_link_cmd* %31, %struct.hclge_nq_to_qs_link_cmd** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %10, i32 %32, i32 1)
  %34 = load i32, i32* %11, align 4
  %35 = call i8* @cpu_to_le16(i32 %34)
  %36 = load %struct.hclge_nq_to_qs_link_cmd*, %struct.hclge_nq_to_qs_link_cmd** %6, align 8
  %37 = getelementptr inbounds %struct.hclge_nq_to_qs_link_cmd, %struct.hclge_nq_to_qs_link_cmd* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %39 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %38, i32 0, i32 1
  %40 = call i32 @hclge_cmd_send(i32* %39, %struct.hclge_desc* %10, i32 1)
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  br label %208

44:                                               ; preds = %26
  %45 = load %struct.hclge_nq_to_qs_link_cmd*, %struct.hclge_nq_to_qs_link_cmd** %6, align 8
  %46 = getelementptr inbounds %struct.hclge_nq_to_qs_link_cmd, %struct.hclge_nq_to_qs_link_cmd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, 1023
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* @HCLGE_OPC_TM_QS_TO_PRI_LINK, align 4
  store i32 %49, i32* %9, align 4
  %50 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %10, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.hclge_qs_to_pri_link_cmd*
  store %struct.hclge_qs_to_pri_link_cmd* %52, %struct.hclge_qs_to_pri_link_cmd** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %10, i32 %53, i32 1)
  %55 = load i32, i32* %15, align 4
  %56 = call i8* @cpu_to_le16(i32 %55)
  %57 = load %struct.hclge_qs_to_pri_link_cmd*, %struct.hclge_qs_to_pri_link_cmd** %7, align 8
  %58 = getelementptr inbounds %struct.hclge_qs_to_pri_link_cmd, %struct.hclge_qs_to_pri_link_cmd* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %60 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %59, i32 0, i32 1
  %61 = call i32 @hclge_cmd_send(i32* %60, %struct.hclge_desc* %10, i32 1)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %44
  br label %208

65:                                               ; preds = %44
  %66 = load %struct.hclge_qs_to_pri_link_cmd*, %struct.hclge_qs_to_pri_link_cmd** %7, align 8
  %67 = getelementptr inbounds %struct.hclge_qs_to_pri_link_cmd, %struct.hclge_qs_to_pri_link_cmd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* @HCLGE_OPC_TQP_TX_QUEUE_TC, align 4
  store i32 %69, i32* %9, align 4
  %70 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %10, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.hclge_tqp_tx_queue_tc_cmd*
  store %struct.hclge_tqp_tx_queue_tc_cmd* %72, %struct.hclge_tqp_tx_queue_tc_cmd** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %10, i32 %73, i32 1)
  %75 = load i32, i32* %11, align 4
  %76 = call i8* @cpu_to_le16(i32 %75)
  %77 = load %struct.hclge_tqp_tx_queue_tc_cmd*, %struct.hclge_tqp_tx_queue_tc_cmd** %8, align 8
  %78 = getelementptr inbounds %struct.hclge_tqp_tx_queue_tc_cmd, %struct.hclge_tqp_tx_queue_tc_cmd* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %80 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %79, i32 0, i32 1
  %81 = call i32 @hclge_cmd_send(i32* %80, %struct.hclge_desc* %10, i32 1)
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %65
  br label %208

85:                                               ; preds = %65
  %86 = load %struct.hclge_tqp_tx_queue_tc_cmd*, %struct.hclge_tqp_tx_queue_tc_cmd** %8, align 8
  %87 = getelementptr inbounds %struct.hclge_tqp_tx_queue_tc_cmd, %struct.hclge_tqp_tx_queue_tc_cmd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, 7
  store i32 %89, i32* %14, align 4
  %90 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %91 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = call i32 (i32*, i8*, ...) @dev_info(i32* %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %95 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %96 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i32 (i32*, i8*, ...) @dev_info(i32* %98, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %105 = call i32 @hnae3_dev_dcb_supported(%struct.hclge_dev* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %85
  %108 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %109 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = call i32 (i32*, i8*, ...) @dev_info(i32* %111, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %216

113:                                              ; preds = %85
  %114 = load i32, i32* @HCLGE_OPC_TM_BP_TO_QSET_MAPPING, align 4
  store i32 %114, i32* %9, align 4
  %115 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %10, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to %struct.hclge_bp_to_qs_map_cmd*
  store %struct.hclge_bp_to_qs_map_cmd* %117, %struct.hclge_bp_to_qs_map_cmd** %5, align 8
  store i32 0, i32* %12, align 4
  br label %118

118:                                              ; preds = %143, %113
  %119 = load i32, i32* %12, align 4
  %120 = icmp slt i32 %119, 32
  br i1 %120, label %121, label %146

121:                                              ; preds = %118
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %10, i32 %122, i32 1)
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.hclge_bp_to_qs_map_cmd*, %struct.hclge_bp_to_qs_map_cmd** %5, align 8
  %126 = getelementptr inbounds %struct.hclge_bp_to_qs_map_cmd, %struct.hclge_bp_to_qs_map_cmd* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.hclge_bp_to_qs_map_cmd*, %struct.hclge_bp_to_qs_map_cmd** %5, align 8
  %129 = getelementptr inbounds %struct.hclge_bp_to_qs_map_cmd, %struct.hclge_bp_to_qs_map_cmd* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %131 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %130, i32 0, i32 1
  %132 = call i32 @hclge_cmd_send(i32* %131, %struct.hclge_desc* %10, i32 1)
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %17, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %121
  br label %208

136:                                              ; preds = %121
  %137 = load %struct.hclge_bp_to_qs_map_cmd*, %struct.hclge_bp_to_qs_map_cmd** %5, align 8
  %138 = getelementptr inbounds %struct.hclge_bp_to_qs_map_cmd, %struct.hclge_bp_to_qs_map_cmd* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %141
  store i32 %139, i32* %142, align 4
  br label %143

143:                                              ; preds = %136
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %118

146:                                              ; preds = %118
  %147 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %148 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = call i32 (i32*, i8*, ...) @dev_info(i32* %150, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %18, align 4
  store i32 0, i32* %12, align 4
  br label %152

152:                                              ; preds = %204, %146
  %153 = load i32, i32* %12, align 4
  %154 = icmp slt i32 %153, 4
  br i1 %154, label %155, label %207

155:                                              ; preds = %152
  %156 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %157 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %156, i32 0, i32 0
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %12, align 4
  %161 = mul nsw i32 %160, 256
  %162 = load i32, i32* %18, align 4
  %163 = add nsw i32 %162, 7
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %18, align 4
  %168 = add nsw i32 %167, 6
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %18, align 4
  %173 = add nsw i32 %172, 5
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %18, align 4
  %178 = add nsw i32 %177, 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %18, align 4
  %183 = add nsw i32 %182, 3
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %18, align 4
  %188 = add nsw i32 %187, 2
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %18, align 4
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %18, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i32*, i8*, ...) @dev_info(i32* %159, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %161, i32 %166, i32 %171, i32 %176, i32 %181, i32 %186, i32 %191, i32 %196, i32 %200)
  %202 = load i32, i32* %18, align 4
  %203 = add nsw i32 %202, 8
  store i32 %203, i32* %18, align 4
  br label %204

204:                                              ; preds = %155
  %205 = load i32, i32* %12, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %12, align 4
  br label %152

207:                                              ; preds = %152
  br label %216

208:                                              ; preds = %135, %84, %64, %43
  %209 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %210 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %209, i32 0, i32 0
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* %17, align 4
  %215 = call i32 @dev_err(i32* %212, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %213, i32 %214)
  br label %216

216:                                              ; preds = %208, %207, %107
  ret void
}

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @hnae3_dev_dcb_supported(%struct.hclge_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
