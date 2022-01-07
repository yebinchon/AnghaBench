; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_tm_pg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_tm_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_port_shapping_cmd = type { i32 }
%struct.hclge_bp_to_qs_map_cmd = type { i32, i32, i32 }
%struct.hclge_pg_shapping_cmd = type { i32, i32 }
%struct.hclge_desc = type { i32* }

@HCLGE_OPC_TM_PG_C_SHAPPING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"PG_C pg_id: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"PG_C pg_shapping: 0x%x\0A\00", align 1
@HCLGE_OPC_TM_PG_P_SHAPPING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"PG_P pg_id: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"PG_P pg_shapping: 0x%x\0A\00", align 1
@HCLGE_OPC_TM_PORT_SHAPPING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"PORT port_shapping: 0x%x\0A\00", align 1
@HCLGE_OPC_TM_PG_SCH_MODE_CFG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"PG_SCH pg_id: %u\0A\00", align 1
@HCLGE_OPC_TM_PRI_SCH_MODE_CFG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"PRI_SCH pri_id: %u\0A\00", align 1
@HCLGE_OPC_TM_QS_SCH_MODE_CFG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"QS_SCH qs_id: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Only DCB-supported dev supports tm mapping\0A\00", align 1
@HCLGE_OPC_TM_BP_TO_QSET_MAPPING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"BP_TO_QSET tc_id: %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"BP_TO_QSET qs_group_id: 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"BP_TO_QSET qs_bit_map: 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"dump tm_pg fail(0x%x), ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*)* @hclge_dbg_dump_tm_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_dbg_dump_tm_pg(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca %struct.hclge_port_shapping_cmd*, align 8
  %4 = alloca %struct.hclge_bp_to_qs_map_cmd*, align 8
  %5 = alloca %struct.hclge_pg_shapping_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hclge_desc, align 8
  %8 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  %9 = load i32, i32* @HCLGE_OPC_TM_PG_C_SHAPPING, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %7, i32 %10, i32 1)
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %13 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %12, i32 0, i32 1
  %14 = call i32 @hclge_cmd_send(i32* %13, %struct.hclge_desc* %7, i32 1)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %192

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = bitcast i32* %20 to %struct.hclge_pg_shapping_cmd*
  store %struct.hclge_pg_shapping_cmd* %21, %struct.hclge_pg_shapping_cmd** %5, align 8
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %23 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.hclge_pg_shapping_cmd*, %struct.hclge_pg_shapping_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.hclge_pg_shapping_cmd, %struct.hclge_pg_shapping_cmd* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32*, i8*, ...) @dev_info(i32* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %31 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.hclge_pg_shapping_cmd*, %struct.hclge_pg_shapping_cmd** %5, align 8
  %35 = getelementptr inbounds %struct.hclge_pg_shapping_cmd, %struct.hclge_pg_shapping_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32*, i8*, ...) @dev_info(i32* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @HCLGE_OPC_TM_PG_P_SHAPPING, align 4
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %7, i32 %39, i32 1)
  %41 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %42 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %41, i32 0, i32 1
  %43 = call i32 @hclge_cmd_send(i32* %42, %struct.hclge_desc* %7, i32 1)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %18
  br label %192

47:                                               ; preds = %18
  %48 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = bitcast i32* %49 to %struct.hclge_pg_shapping_cmd*
  store %struct.hclge_pg_shapping_cmd* %50, %struct.hclge_pg_shapping_cmd** %5, align 8
  %51 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %52 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.hclge_pg_shapping_cmd*, %struct.hclge_pg_shapping_cmd** %5, align 8
  %56 = getelementptr inbounds %struct.hclge_pg_shapping_cmd, %struct.hclge_pg_shapping_cmd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32*, i8*, ...) @dev_info(i32* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %60 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load %struct.hclge_pg_shapping_cmd*, %struct.hclge_pg_shapping_cmd** %5, align 8
  %64 = getelementptr inbounds %struct.hclge_pg_shapping_cmd, %struct.hclge_pg_shapping_cmd* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32*, i8*, ...) @dev_info(i32* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @HCLGE_OPC_TM_PORT_SHAPPING, align 4
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %7, i32 %68, i32 1)
  %70 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %71 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %70, i32 0, i32 1
  %72 = call i32 @hclge_cmd_send(i32* %71, %struct.hclge_desc* %7, i32 1)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %47
  br label %192

76:                                               ; preds = %47
  %77 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = bitcast i32* %78 to %struct.hclge_port_shapping_cmd*
  store %struct.hclge_port_shapping_cmd* %79, %struct.hclge_port_shapping_cmd** %3, align 8
  %80 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %81 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load %struct.hclge_port_shapping_cmd*, %struct.hclge_port_shapping_cmd** %3, align 8
  %85 = getelementptr inbounds %struct.hclge_port_shapping_cmd, %struct.hclge_port_shapping_cmd* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32*, i8*, ...) @dev_info(i32* %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @HCLGE_OPC_TM_PG_SCH_MODE_CFG, align 4
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %7, i32 %89, i32 1)
  %91 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %92 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %91, i32 0, i32 1
  %93 = call i32 @hclge_cmd_send(i32* %92, %struct.hclge_desc* %7, i32 1)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %76
  br label %192

97:                                               ; preds = %76
  %98 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %99 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32*, i8*, ...) @dev_info(i32* %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @HCLGE_OPC_TM_PRI_SCH_MODE_CFG, align 4
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %7, i32 %108, i32 1)
  %110 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %111 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %110, i32 0, i32 1
  %112 = call i32 @hclge_cmd_send(i32* %111, %struct.hclge_desc* %7, i32 1)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %97
  br label %192

116:                                              ; preds = %97
  %117 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %118 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32*, i8*, ...) @dev_info(i32* %120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @HCLGE_OPC_TM_QS_SCH_MODE_CFG, align 4
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %7, i32 %127, i32 1)
  %129 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %130 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %129, i32 0, i32 1
  %131 = call i32 @hclge_cmd_send(i32* %130, %struct.hclge_desc* %7, i32 1)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %116
  br label %192

135:                                              ; preds = %116
  %136 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %137 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i32*, i8*, ...) @dev_info(i32* %139, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %143)
  %145 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %146 = call i32 @hnae3_dev_dcb_supported(%struct.hclge_dev* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %135
  %149 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %150 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %149, i32 0, i32 0
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = call i32 (i32*, i8*, ...) @dev_info(i32* %152, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  br label %200

154:                                              ; preds = %135
  %155 = load i32, i32* @HCLGE_OPC_TM_BP_TO_QSET_MAPPING, align 4
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %7, i32 %156, i32 1)
  %158 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %159 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %158, i32 0, i32 1
  %160 = call i32 @hclge_cmd_send(i32* %159, %struct.hclge_desc* %7, i32 1)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %154
  br label %192

164:                                              ; preds = %154
  %165 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = bitcast i32* %166 to %struct.hclge_bp_to_qs_map_cmd*
  store %struct.hclge_bp_to_qs_map_cmd* %167, %struct.hclge_bp_to_qs_map_cmd** %4, align 8
  %168 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %169 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %168, i32 0, i32 0
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load %struct.hclge_bp_to_qs_map_cmd*, %struct.hclge_bp_to_qs_map_cmd** %4, align 8
  %173 = getelementptr inbounds %struct.hclge_bp_to_qs_map_cmd, %struct.hclge_bp_to_qs_map_cmd* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i32*, i8*, ...) @dev_info(i32* %171, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %174)
  %176 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %177 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %176, i32 0, i32 0
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load %struct.hclge_bp_to_qs_map_cmd*, %struct.hclge_bp_to_qs_map_cmd** %4, align 8
  %181 = getelementptr inbounds %struct.hclge_bp_to_qs_map_cmd, %struct.hclge_bp_to_qs_map_cmd* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i32*, i8*, ...) @dev_info(i32* %179, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %182)
  %184 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %185 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %184, i32 0, i32 0
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load %struct.hclge_bp_to_qs_map_cmd*, %struct.hclge_bp_to_qs_map_cmd** %4, align 8
  %189 = getelementptr inbounds %struct.hclge_bp_to_qs_map_cmd, %struct.hclge_bp_to_qs_map_cmd* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i32*, i8*, ...) @dev_info(i32* %187, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %190)
  br label %200

192:                                              ; preds = %163, %134, %115, %96, %75, %46, %17
  %193 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %194 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %193, i32 0, i32 0
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %8, align 4
  %199 = call i32 @dev_err(i32* %196, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %192, %164, %148
  ret void
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

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
