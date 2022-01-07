; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_set_rss_tuple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_set_rss_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32 }
%struct.hclgevf_dev = type { %struct.TYPE_5__*, i32, %struct.hclgevf_rss_cfg }
%struct.TYPE_5__ = type { i32 }
%struct.hclgevf_rss_cfg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.hclgevf_rss_input_tuple_cmd = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.hclgevf_desc = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HCLGEVF_OPC_RSS_INPUT_TUPLE = common dso_local global i32 0, align 4
@HCLGEVF_RSS_INPUT_TUPLE_OTHER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Set rss tuple fail, status = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)* @hclgevf_set_rss_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_set_rss_tuple(%struct.hnae3_handle* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.hclgevf_dev*, align 8
  %7 = alloca %struct.hclgevf_rss_cfg*, align 8
  %8 = alloca %struct.hclgevf_rss_input_tuple_cmd*, align 8
  %9 = alloca %struct.hclgevf_desc, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %12 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %13 = call %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle* %12)
  store %struct.hclgevf_dev* %13, %struct.hclgevf_dev** %6, align 8
  %14 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %15 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %14, i32 0, i32 2
  store %struct.hclgevf_rss_cfg* %15, %struct.hclgevf_rss_cfg** %7, align 8
  %16 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %17 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 32
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %216

25:                                               ; preds = %2
  %26 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RXH_IP_SRC, align 4
  %30 = load i32, i32* @RXH_IP_DST, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @RXH_L4_B_0_1, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @RXH_L4_B_2_3, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %28, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %216

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %9, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.hclgevf_rss_input_tuple_cmd*
  store %struct.hclgevf_rss_input_tuple_cmd* %45, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %46 = load i32, i32* @HCLGEVF_OPC_RSS_INPUT_TUPLE, align 4
  %47 = call i32 @hclgevf_cmd_setup_basic_desc(%struct.hclgevf_desc* %9, i32 %46, i32 0)
  %48 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %49 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 7
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %53 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %52, i32 0, i32 7
  store i8* %51, i8** %53, align 8
  %54 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %55 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 6
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %59 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %58, i32 0, i32 6
  store i8* %57, i8** %59, align 8
  %60 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %61 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 5
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %65 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  %66 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %67 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %71 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %73 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %77 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %79 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %83 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %85 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %89 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %91 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %95 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %97 = call i8* @hclgevf_get_rss_hash_bits(%struct.ethtool_rxnfc* %96)
  store i8* %97, i8** %10, align 8
  %98 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %99 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  switch i32 %100, label %150 [
    i32 131, label %101
    i32 130, label %105
    i32 129, label %109
    i32 128, label %113
    i32 133, label %117
    i32 132, label %121
    i32 135, label %142
    i32 134, label %146
  ]

101:                                              ; preds = %42
  %102 = load i8*, i8** %10, align 8
  %103 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %104 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %103, i32 0, i32 7
  store i8* %102, i8** %104, align 8
  br label %153

105:                                              ; preds = %42
  %106 = load i8*, i8** %10, align 8
  %107 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %108 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  br label %153

109:                                              ; preds = %42
  %110 = load i8*, i8** %10, align 8
  %111 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %112 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %111, i32 0, i32 6
  store i8* %110, i8** %112, align 8
  br label %153

113:                                              ; preds = %42
  %114 = load i8*, i8** %10, align 8
  %115 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %116 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  br label %153

117:                                              ; preds = %42
  %118 = load i8*, i8** %10, align 8
  %119 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %120 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %119, i32 0, i32 5
  store i8* %118, i8** %120, align 8
  br label %153

121:                                              ; preds = %42
  %122 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %123 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @RXH_L4_B_0_1, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %121
  %129 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %130 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @RXH_L4_B_2_3, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %128, %121
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %216

138:                                              ; preds = %128
  %139 = load i8*, i8** %10, align 8
  %140 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %141 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  br label %153

142:                                              ; preds = %42
  %143 = load i8*, i8** @HCLGEVF_RSS_INPUT_TUPLE_OTHER, align 8
  %144 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %145 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %144, i32 0, i32 4
  store i8* %143, i8** %145, align 8
  br label %153

146:                                              ; preds = %42
  %147 = load i8*, i8** @HCLGEVF_RSS_INPUT_TUPLE_OTHER, align 8
  %148 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %149 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  br label %153

150:                                              ; preds = %42
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %216

153:                                              ; preds = %146, %142, %138, %117, %113, %109, %105, %101
  %154 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %155 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %154, i32 0, i32 1
  %156 = call i32 @hclgevf_cmd_send(i32* %155, %struct.hclgevf_desc* %9, i32 1)
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %153
  %160 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %161 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %160, i32 0, i32 0
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @dev_err(i32* %163, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %11, align 4
  store i32 %166, i32* %3, align 4
  br label %216

167:                                              ; preds = %153
  %168 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %169 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %168, i32 0, i32 7
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %172 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 7
  store i8* %170, i8** %173, align 8
  %174 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %175 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %174, i32 0, i32 6
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %178 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 6
  store i8* %176, i8** %179, align 8
  %180 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %181 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %180, i32 0, i32 5
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %184 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 5
  store i8* %182, i8** %185, align 8
  %186 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %187 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %186, i32 0, i32 4
  %188 = load i8*, i8** %187, align 8
  %189 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %190 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 4
  store i8* %188, i8** %191, align 8
  %192 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %193 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %192, i32 0, i32 3
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %196 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 3
  store i8* %194, i8** %197, align 8
  %198 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %199 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %198, i32 0, i32 2
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %202 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 2
  store i8* %200, i8** %203, align 8
  %204 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %205 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %204, i32 0, i32 1
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %208 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  store i8* %206, i8** %209, align 8
  %210 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %8, align 8
  %211 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %214 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  store i8* %212, i8** %215, align 8
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %167, %159, %150, %135, %39, %22
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle*) #1

declare dso_local i32 @hclgevf_cmd_setup_basic_desc(%struct.hclgevf_desc*, i32, i32) #1

declare dso_local i8* @hclgevf_get_rss_hash_bits(%struct.ethtool_rxnfc*) #1

declare dso_local i32 @hclgevf_cmd_send(i32*, %struct.hclgevf_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
