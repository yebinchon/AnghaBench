; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_tm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_priority_weight_cmd = type { i32, i32 }
%struct.hclge_pg_to_pri_link_cmd = type { i32, i32 }
%struct.hclge_qs_to_pri_link_cmd = type { i32, i32, i32 }
%struct.hclge_nq_to_qs_link_cmd = type { i32, i32 }
%struct.hclge_pri_shapping_cmd = type { i32, i32 }
%struct.hclge_pg_weight_cmd = type { i32, i32 }
%struct.hclge_qs_weight_cmd = type { i32, i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_TM_PG_TO_PRI_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"dump tm\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"PG_TO_PRI gp_id: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"PG_TO_PRI map: 0x%x\0A\00", align 1
@HCLGE_OPC_TM_QS_TO_PRI_LINK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"QS_TO_PRI qs_id: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"QS_TO_PRI priority: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"QS_TO_PRI link_vld: %u\0A\00", align 1
@HCLGE_OPC_TM_NQ_TO_QS_LINK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"NQ_TO_QS nq_id: %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"NQ_TO_QS qset_id: 0x%x\0A\00", align 1
@HCLGE_OPC_TM_PG_WEIGHT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"PG pg_id: %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"PG dwrr: %u\0A\00", align 1
@HCLGE_OPC_TM_QS_WEIGHT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"QS qs_id: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"QS dwrr: %u\0A\00", align 1
@HCLGE_OPC_TM_PRI_WEIGHT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"PRI pri_id: %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"PRI dwrr: %u\0A\00", align 1
@HCLGE_OPC_TM_PRI_C_SHAPPING = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"PRI_C pri_id: %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"PRI_C pri_shapping: 0x%x\0A\00", align 1
@HCLGE_OPC_TM_PRI_P_SHAPPING = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"PRI_P pri_id: %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"PRI_P pri_shapping: 0x%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"dump tm fail(0x%x), ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*)* @hclge_dbg_dump_tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_dbg_dump_tm(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca %struct.hclge_priority_weight_cmd*, align 8
  %4 = alloca %struct.hclge_pg_to_pri_link_cmd*, align 8
  %5 = alloca %struct.hclge_qs_to_pri_link_cmd*, align 8
  %6 = alloca %struct.hclge_nq_to_qs_link_cmd*, align 8
  %7 = alloca %struct.hclge_pri_shapping_cmd*, align 8
  %8 = alloca %struct.hclge_pg_weight_cmd*, align 8
  %9 = alloca %struct.hclge_qs_weight_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hclge_desc, align 8
  %12 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  %13 = load i32, i32* @HCLGE_OPC_TM_PG_TO_PRI_LINK, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %11, i32 %14, i32 1)
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %17 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %16, i32 0, i32 1
  %18 = call i32 @hclge_cmd_send(i32* %17, %struct.hclge_desc* %11, i32 1)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %260

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %11, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.hclge_pg_to_pri_link_cmd*
  store %struct.hclge_pg_to_pri_link_cmd* %25, %struct.hclge_pg_to_pri_link_cmd** %4, align 8
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %27 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 (i32*, i8*, ...) @dev_info(i32* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %32 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.hclge_pg_to_pri_link_cmd*, %struct.hclge_pg_to_pri_link_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.hclge_pg_to_pri_link_cmd, %struct.hclge_pg_to_pri_link_cmd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32*, i8*, ...) @dev_info(i32* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %40 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.hclge_pg_to_pri_link_cmd*, %struct.hclge_pg_to_pri_link_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.hclge_pg_to_pri_link_cmd, %struct.hclge_pg_to_pri_link_cmd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32*, i8*, ...) @dev_info(i32* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @HCLGE_OPC_TM_QS_TO_PRI_LINK, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %11, i32 %48, i32 1)
  %50 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %51 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %50, i32 0, i32 1
  %52 = call i32 @hclge_cmd_send(i32* %51, %struct.hclge_desc* %11, i32 1)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %22
  br label %260

56:                                               ; preds = %22
  %57 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %11, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.hclge_qs_to_pri_link_cmd*
  store %struct.hclge_qs_to_pri_link_cmd* %59, %struct.hclge_qs_to_pri_link_cmd** %5, align 8
  %60 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %61 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.hclge_qs_to_pri_link_cmd*, %struct.hclge_qs_to_pri_link_cmd** %5, align 8
  %65 = getelementptr inbounds %struct.hclge_qs_to_pri_link_cmd, %struct.hclge_qs_to_pri_link_cmd* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32*, i8*, ...) @dev_info(i32* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %69 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load %struct.hclge_qs_to_pri_link_cmd*, %struct.hclge_qs_to_pri_link_cmd** %5, align 8
  %73 = getelementptr inbounds %struct.hclge_qs_to_pri_link_cmd, %struct.hclge_qs_to_pri_link_cmd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32*, i8*, ...) @dev_info(i32* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %77 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load %struct.hclge_qs_to_pri_link_cmd*, %struct.hclge_qs_to_pri_link_cmd** %5, align 8
  %81 = getelementptr inbounds %struct.hclge_qs_to_pri_link_cmd, %struct.hclge_qs_to_pri_link_cmd* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32*, i8*, ...) @dev_info(i32* %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @HCLGE_OPC_TM_NQ_TO_QS_LINK, align 4
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %11, i32 %85, i32 1)
  %87 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %88 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %87, i32 0, i32 1
  %89 = call i32 @hclge_cmd_send(i32* %88, %struct.hclge_desc* %11, i32 1)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %56
  br label %260

93:                                               ; preds = %56
  %94 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %11, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to %struct.hclge_nq_to_qs_link_cmd*
  store %struct.hclge_nq_to_qs_link_cmd* %96, %struct.hclge_nq_to_qs_link_cmd** %6, align 8
  %97 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %98 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load %struct.hclge_nq_to_qs_link_cmd*, %struct.hclge_nq_to_qs_link_cmd** %6, align 8
  %102 = getelementptr inbounds %struct.hclge_nq_to_qs_link_cmd, %struct.hclge_nq_to_qs_link_cmd* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32*, i8*, ...) @dev_info(i32* %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %103)
  %105 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %106 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load %struct.hclge_nq_to_qs_link_cmd*, %struct.hclge_nq_to_qs_link_cmd** %6, align 8
  %110 = getelementptr inbounds %struct.hclge_nq_to_qs_link_cmd, %struct.hclge_nq_to_qs_link_cmd* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i32*, i8*, ...) @dev_info(i32* %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @HCLGE_OPC_TM_PG_WEIGHT, align 4
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %11, i32 %114, i32 1)
  %116 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %117 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %116, i32 0, i32 1
  %118 = call i32 @hclge_cmd_send(i32* %117, %struct.hclge_desc* %11, i32 1)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %93
  br label %260

122:                                              ; preds = %93
  %123 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %11, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to %struct.hclge_pg_weight_cmd*
  store %struct.hclge_pg_weight_cmd* %125, %struct.hclge_pg_weight_cmd** %8, align 8
  %126 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %127 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load %struct.hclge_pg_weight_cmd*, %struct.hclge_pg_weight_cmd** %8, align 8
  %131 = getelementptr inbounds %struct.hclge_pg_weight_cmd, %struct.hclge_pg_weight_cmd* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i32*, i8*, ...) @dev_info(i32* %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %132)
  %134 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %135 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load %struct.hclge_pg_weight_cmd*, %struct.hclge_pg_weight_cmd** %8, align 8
  %139 = getelementptr inbounds %struct.hclge_pg_weight_cmd, %struct.hclge_pg_weight_cmd* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i32*, i8*, ...) @dev_info(i32* %137, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @HCLGE_OPC_TM_QS_WEIGHT, align 4
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %11, i32 %143, i32 1)
  %145 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %146 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %145, i32 0, i32 1
  %147 = call i32 @hclge_cmd_send(i32* %146, %struct.hclge_desc* %11, i32 1)
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %122
  br label %260

151:                                              ; preds = %122
  %152 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %11, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to %struct.hclge_qs_weight_cmd*
  store %struct.hclge_qs_weight_cmd* %154, %struct.hclge_qs_weight_cmd** %9, align 8
  %155 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %156 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load %struct.hclge_qs_weight_cmd*, %struct.hclge_qs_weight_cmd** %9, align 8
  %160 = getelementptr inbounds %struct.hclge_qs_weight_cmd, %struct.hclge_qs_weight_cmd* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32*, i8*, ...) @dev_info(i32* %158, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %161)
  %163 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %164 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %163, i32 0, i32 0
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load %struct.hclge_qs_weight_cmd*, %struct.hclge_qs_weight_cmd** %9, align 8
  %168 = getelementptr inbounds %struct.hclge_qs_weight_cmd, %struct.hclge_qs_weight_cmd* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i32*, i8*, ...) @dev_info(i32* %166, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* @HCLGE_OPC_TM_PRI_WEIGHT, align 4
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %11, i32 %172, i32 1)
  %174 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %175 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %174, i32 0, i32 1
  %176 = call i32 @hclge_cmd_send(i32* %175, %struct.hclge_desc* %11, i32 1)
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %151
  br label %260

180:                                              ; preds = %151
  %181 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %11, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = inttoptr i64 %182 to %struct.hclge_priority_weight_cmd*
  store %struct.hclge_priority_weight_cmd* %183, %struct.hclge_priority_weight_cmd** %3, align 8
  %184 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %185 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %184, i32 0, i32 0
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load %struct.hclge_priority_weight_cmd*, %struct.hclge_priority_weight_cmd** %3, align 8
  %189 = getelementptr inbounds %struct.hclge_priority_weight_cmd, %struct.hclge_priority_weight_cmd* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i32*, i8*, ...) @dev_info(i32* %187, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %190)
  %192 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %193 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %192, i32 0, i32 0
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load %struct.hclge_priority_weight_cmd*, %struct.hclge_priority_weight_cmd** %3, align 8
  %197 = getelementptr inbounds %struct.hclge_priority_weight_cmd, %struct.hclge_priority_weight_cmd* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i32*, i8*, ...) @dev_info(i32* %195, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %198)
  %200 = load i32, i32* @HCLGE_OPC_TM_PRI_C_SHAPPING, align 4
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* %10, align 4
  %202 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %11, i32 %201, i32 1)
  %203 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %204 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %203, i32 0, i32 1
  %205 = call i32 @hclge_cmd_send(i32* %204, %struct.hclge_desc* %11, i32 1)
  store i32 %205, i32* %12, align 4
  %206 = load i32, i32* %12, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %180
  br label %260

209:                                              ; preds = %180
  %210 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %11, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = inttoptr i64 %211 to %struct.hclge_pri_shapping_cmd*
  store %struct.hclge_pri_shapping_cmd* %212, %struct.hclge_pri_shapping_cmd** %7, align 8
  %213 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %214 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %213, i32 0, i32 0
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  %217 = load %struct.hclge_pri_shapping_cmd*, %struct.hclge_pri_shapping_cmd** %7, align 8
  %218 = getelementptr inbounds %struct.hclge_pri_shapping_cmd, %struct.hclge_pri_shapping_cmd* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i32*, i8*, ...) @dev_info(i32* %216, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %219)
  %221 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %222 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %221, i32 0, i32 0
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  %225 = load %struct.hclge_pri_shapping_cmd*, %struct.hclge_pri_shapping_cmd** %7, align 8
  %226 = getelementptr inbounds %struct.hclge_pri_shapping_cmd, %struct.hclge_pri_shapping_cmd* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 (i32*, i8*, ...) @dev_info(i32* %224, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* @HCLGE_OPC_TM_PRI_P_SHAPPING, align 4
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %11, i32 %230, i32 1)
  %232 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %233 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %232, i32 0, i32 1
  %234 = call i32 @hclge_cmd_send(i32* %233, %struct.hclge_desc* %11, i32 1)
  store i32 %234, i32* %12, align 4
  %235 = load i32, i32* %12, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %209
  br label %260

238:                                              ; preds = %209
  %239 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %11, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = inttoptr i64 %240 to %struct.hclge_pri_shapping_cmd*
  store %struct.hclge_pri_shapping_cmd* %241, %struct.hclge_pri_shapping_cmd** %7, align 8
  %242 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %243 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %242, i32 0, i32 0
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 0
  %246 = load %struct.hclge_pri_shapping_cmd*, %struct.hclge_pri_shapping_cmd** %7, align 8
  %247 = getelementptr inbounds %struct.hclge_pri_shapping_cmd, %struct.hclge_pri_shapping_cmd* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 (i32*, i8*, ...) @dev_info(i32* %245, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 %248)
  %250 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %251 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %250, i32 0, i32 0
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 0
  %254 = load %struct.hclge_pri_shapping_cmd*, %struct.hclge_pri_shapping_cmd** %7, align 8
  %255 = getelementptr inbounds %struct.hclge_pri_shapping_cmd, %struct.hclge_pri_shapping_cmd* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 (i32*, i8*, ...) @dev_info(i32* %253, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i32 %256)
  %258 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %259 = call i32 @hclge_dbg_dump_tm_pg(%struct.hclge_dev* %258)
  br label %268

260:                                              ; preds = %237, %208, %179, %150, %121, %92, %55, %21
  %261 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %262 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %261, i32 0, i32 0
  %263 = load %struct.TYPE_2__*, %struct.TYPE_2__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 0
  %265 = load i32, i32* %10, align 4
  %266 = load i32, i32* %12, align 4
  %267 = call i32 @dev_err(i32* %264, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i32 %265, i32 %266)
  br label %268

268:                                              ; preds = %260, %238
  ret void
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @hclge_dbg_dump_tm_pg(%struct.hclge_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
