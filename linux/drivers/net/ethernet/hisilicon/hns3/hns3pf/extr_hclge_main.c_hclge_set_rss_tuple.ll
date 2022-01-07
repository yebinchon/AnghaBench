; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_rss_tuple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_rss_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32 }
%struct.hclge_vport = type { %struct.TYPE_4__, %struct.hclge_dev* }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.hclge_dev = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hclge_rss_input_tuple_cmd = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.hclge_desc = type { i64 }

@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HCLGE_OPC_RSS_INPUT_TUPLE = common dso_local global i32 0, align 4
@HCLGE_RSS_INPUT_TUPLE_OTHER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Set rss tuple fail, status = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)* @hclge_set_rss_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_rss_tuple(%struct.hnae3_handle* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.hclge_vport*, align 8
  %7 = alloca %struct.hclge_dev*, align 8
  %8 = alloca %struct.hclge_rss_input_tuple_cmd*, align 8
  %9 = alloca %struct.hclge_desc, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %12 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %13 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %12)
  store %struct.hclge_vport* %13, %struct.hclge_vport** %6, align 8
  %14 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %15 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %14, i32 0, i32 1
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %15, align 8
  store %struct.hclge_dev* %16, %struct.hclge_dev** %7, align 8
  %17 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RXH_IP_SRC, align 4
  %21 = load i32, i32* @RXH_IP_DST, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @RXH_L4_B_0_1, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @RXH_L4_B_2_3, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %19, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %209

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %9, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.hclge_rss_input_tuple_cmd*
  store %struct.hclge_rss_input_tuple_cmd* %36, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %37 = load i32, i32* @HCLGE_OPC_RSS_INPUT_TUPLE, align 4
  %38 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %9, i32 %37, i32 0)
  %39 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %40 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 7
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %44 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %46 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 6
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %50 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %49, i32 0, i32 6
  store i8* %48, i8** %50, align 8
  %51 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %52 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 5
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %56 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %58 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %62 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %64 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %68 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %70 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %74 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %76 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %80 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %82 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %86 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %88 = call i8* @hclge_get_rss_hash_bits(%struct.ethtool_rxnfc* %87)
  store i8* %88, i8** %10, align 8
  %89 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %90 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %141 [
    i32 131, label %92
    i32 130, label %96
    i32 129, label %100
    i32 128, label %104
    i32 133, label %108
    i32 132, label %112
    i32 135, label %133
    i32 134, label %137
  ]

92:                                               ; preds = %33
  %93 = load i8*, i8** %10, align 8
  %94 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %95 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %94, i32 0, i32 7
  store i8* %93, i8** %95, align 8
  br label %144

96:                                               ; preds = %33
  %97 = load i8*, i8** %10, align 8
  %98 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %99 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  br label %144

100:                                              ; preds = %33
  %101 = load i8*, i8** %10, align 8
  %102 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %103 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %102, i32 0, i32 6
  store i8* %101, i8** %103, align 8
  br label %144

104:                                              ; preds = %33
  %105 = load i8*, i8** %10, align 8
  %106 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %107 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  br label %144

108:                                              ; preds = %33
  %109 = load i8*, i8** %10, align 8
  %110 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %111 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %110, i32 0, i32 5
  store i8* %109, i8** %111, align 8
  br label %144

112:                                              ; preds = %33
  %113 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %114 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @RXH_L4_B_0_1, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %112
  %120 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %121 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @RXH_L4_B_2_3, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119, %112
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %209

129:                                              ; preds = %119
  %130 = load i8*, i8** %10, align 8
  %131 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %132 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  br label %144

133:                                              ; preds = %33
  %134 = load i8*, i8** @HCLGE_RSS_INPUT_TUPLE_OTHER, align 8
  %135 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %136 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %135, i32 0, i32 4
  store i8* %134, i8** %136, align 8
  br label %144

137:                                              ; preds = %33
  %138 = load i8*, i8** @HCLGE_RSS_INPUT_TUPLE_OTHER, align 8
  %139 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %140 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %139, i32 0, i32 0
  store i8* %138, i8** %140, align 8
  br label %144

141:                                              ; preds = %33
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %3, align 4
  br label %209

144:                                              ; preds = %137, %133, %129, %108, %104, %100, %96, %92
  %145 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %146 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %145, i32 0, i32 1
  %147 = call i32 @hclge_cmd_send(i32* %146, %struct.hclge_desc* %9, i32 1)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %144
  %151 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %152 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %151, i32 0, i32 0
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @dev_err(i32* %154, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %11, align 4
  store i32 %157, i32* %3, align 4
  br label %209

158:                                              ; preds = %144
  %159 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %160 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %159, i32 0, i32 7
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %163 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 7
  store i8* %161, i8** %164, align 8
  %165 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %166 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %165, i32 0, i32 6
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %169 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 6
  store i8* %167, i8** %170, align 8
  %171 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %172 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %171, i32 0, i32 5
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %175 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 5
  store i8* %173, i8** %176, align 8
  %177 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %178 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %177, i32 0, i32 4
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %181 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 4
  store i8* %179, i8** %182, align 8
  %183 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %184 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %183, i32 0, i32 3
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %187 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 3
  store i8* %185, i8** %188, align 8
  %189 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %190 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %189, i32 0, i32 2
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %193 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  store i8* %191, i8** %194, align 8
  %195 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %196 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  %198 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %199 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  store i8* %197, i8** %200, align 8
  %201 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %8, align 8
  %202 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %205 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  store i8* %203, i8** %206, align 8
  %207 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %208 = call i32 @hclge_get_rss_type(%struct.hclge_vport* %207)
  store i32 0, i32* %3, align 4
  br label %209

209:                                              ; preds = %158, %150, %141, %126, %30
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i8* @hclge_get_rss_hash_bits(%struct.ethtool_rxnfc*) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclge_get_rss_type(%struct.hclge_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
