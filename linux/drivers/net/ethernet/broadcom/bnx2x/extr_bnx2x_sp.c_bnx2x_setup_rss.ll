; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_setup_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_setup_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_config_rss_params = type { i32, i32, i64, i32, %struct.bnx2x_rss_config_obj* }
%struct.bnx2x_rss_config_obj = type { i32, i32, %struct.bnx2x_raw_obj }
%struct.bnx2x_raw_obj = type { i32, i32, i32, i64 }
%struct.eth_rss_update_ramrod_data = type { i32, i32, i32, i32, i64, i32, i32 }

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Configuring RSS\0A\00", align 1
@BNX2X_SWCID_MASK = common dso_local global i32 0, align 4
@BNX2X_SWCID_SHIFT = common dso_local global i32 0, align 4
@BNX2X_RSS_MODE_DISABLED = common dso_local global i32 0, align 4
@ETH_RSS_MODE_DISABLED = common dso_local global i32 0, align 4
@BNX2X_RSS_MODE_REGULAR = common dso_local global i32 0, align 4
@ETH_RSS_MODE_REGULAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"rss_mode=%d\0A\00", align 1
@BNX2X_RSS_IPV4 = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV4_CAPABILITY = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV4_TCP = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV4_TCP_CAPABILITY = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV4_UDP = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV4_UDP_CAPABILITY = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV6 = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV6_CAPABILITY = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV6_TCP = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV6_TCP_CAPABILITY = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV6_UDP = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV6_UDP_CAPABILITY = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV4_VXLAN = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV4_VXLAN_CAPABILITY = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV6_VXLAN = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV6_VXLAN_CAPABILITY = common dso_local global i32 0, align 4
@BNX2X_RSS_TUNN_INNER_HDRS = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_TUNN_INNER_HDRS_CAPABILITY = common dso_local global i32 0, align 4
@BNX2X_RSS_SET_SRCH = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_UPDATE_RSS_KEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"rss_engine_id=%d\0A\00", align 1
@T_ETH_INDIRECTION_TABLE_SIZE = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_ETH_RSS_UPDATE = common dso_local global i32 0, align 4
@ETH_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_config_rss_params*)* @bnx2x_setup_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_setup_rss(%struct.bnx2x* %0, %struct.bnx2x_config_rss_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_config_rss_params*, align 8
  %6 = alloca %struct.bnx2x_rss_config_obj*, align 8
  %7 = alloca %struct.bnx2x_raw_obj*, align 8
  %8 = alloca %struct.eth_rss_update_ramrod_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_config_rss_params* %1, %struct.bnx2x_config_rss_params** %5, align 8
  %15 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %16 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %15, i32 0, i32 4
  %17 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %16, align 8
  store %struct.bnx2x_rss_config_obj* %17, %struct.bnx2x_rss_config_obj** %6, align 8
  %18 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %6, align 8
  %19 = getelementptr inbounds %struct.bnx2x_rss_config_obj, %struct.bnx2x_rss_config_obj* %18, i32 0, i32 2
  store %struct.bnx2x_raw_obj* %19, %struct.bnx2x_raw_obj** %7, align 8
  %20 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %7, align 8
  %21 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.eth_rss_update_ramrod_data*
  store %struct.eth_rss_update_ramrod_data* %23, %struct.eth_rss_update_ramrod_data** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %24 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %25 = call i32 @memset(%struct.eth_rss_update_ramrod_data* %24, i32 0, i32 32)
  %26 = load i32, i32* @BNX2X_MSG_SP, align 4
  %27 = call i32 (i32, i8*, ...) @DP(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %7, align 8
  %29 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BNX2X_SWCID_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %7, align 8
  %34 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BNX2X_SWCID_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = or i32 %32, %37
  %39 = call i32 @cpu_to_le32(i32 %38)
  %40 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %41 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @BNX2X_RSS_MODE_DISABLED, align 4
  %43 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %44 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %43, i32 0, i32 3
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %2
  %48 = load i32, i32* @ETH_RSS_MODE_DISABLED, align 4
  store i32 %48, i32* %10, align 4
  br label %58

49:                                               ; preds = %2
  %50 = load i32, i32* @BNX2X_RSS_MODE_REGULAR, align 4
  %51 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %52 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %51, i32 0, i32 3
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @ETH_RSS_MODE_REGULAR, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %55, %49
  br label %58

58:                                               ; preds = %57, %47
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %61 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @BNX2X_MSG_SP, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (i32, i8*, ...) @DP(i32 %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @BNX2X_RSS_IPV4, align 4
  %66 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %67 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %66, i32 0, i32 3
  %68 = call i64 @test_bit(i32 %65, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %58
  %71 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV4_CAPABILITY, align 4
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %70, %58
  %75 = load i32, i32* @BNX2X_RSS_IPV4_TCP, align 4
  %76 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %77 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %76, i32 0, i32 3
  %78 = call i64 @test_bit(i32 %75, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV4_TCP_CAPABILITY, align 4
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %80, %74
  %85 = load i32, i32* @BNX2X_RSS_IPV4_UDP, align 4
  %86 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %87 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %86, i32 0, i32 3
  %88 = call i64 @test_bit(i32 %85, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV4_UDP_CAPABILITY, align 4
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %90, %84
  %95 = load i32, i32* @BNX2X_RSS_IPV6, align 4
  %96 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %97 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %96, i32 0, i32 3
  %98 = call i64 @test_bit(i32 %95, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV6_CAPABILITY, align 4
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %100, %94
  %105 = load i32, i32* @BNX2X_RSS_IPV6_TCP, align 4
  %106 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %107 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %106, i32 0, i32 3
  %108 = call i64 @test_bit(i32 %105, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV6_TCP_CAPABILITY, align 4
  %112 = load i32, i32* %9, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %110, %104
  %115 = load i32, i32* @BNX2X_RSS_IPV6_UDP, align 4
  %116 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %117 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %116, i32 0, i32 3
  %118 = call i64 @test_bit(i32 %115, i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV6_UDP_CAPABILITY, align 4
  %122 = load i32, i32* %9, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %120, %114
  %125 = load i32, i32* @BNX2X_RSS_IPV4_VXLAN, align 4
  %126 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %127 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %126, i32 0, i32 3
  %128 = call i64 @test_bit(i32 %125, i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV4_VXLAN_CAPABILITY, align 4
  %132 = load i32, i32* %9, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %130, %124
  %135 = load i32, i32* @BNX2X_RSS_IPV6_VXLAN, align 4
  %136 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %137 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %136, i32 0, i32 3
  %138 = call i64 @test_bit(i32 %135, i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV6_VXLAN_CAPABILITY, align 4
  %142 = load i32, i32* %9, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %140, %134
  %145 = load i32, i32* @BNX2X_RSS_TUNN_INNER_HDRS, align 4
  %146 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %147 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %146, i32 0, i32 3
  %148 = call i64 @test_bit(i32 %145, i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_TUNN_INNER_HDRS_CAPABILITY, align 4
  %152 = load i32, i32* %9, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %150, %144
  %155 = load i32, i32* @BNX2X_RSS_SET_SRCH, align 4
  %156 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %157 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %156, i32 0, i32 3
  %158 = call i64 @test_bit(i32 %155, i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %187

160:                                              ; preds = %154
  %161 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %162 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to i32*
  %165 = getelementptr inbounds i32, i32* %164, i64 8
  store i32* %165, i32** %12, align 8
  %166 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %167 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to i32*
  store i32* %169, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %170

170:                                              ; preds = %180, %160
  %171 = load i32, i32* %14, align 4
  %172 = sext i32 %171 to i64
  %173 = icmp ult i64 %172, 8
  br i1 %173, label %174, label %183

174:                                              ; preds = %170
  %175 = load i32*, i32** %13, align 8
  %176 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %176, i32** %13, align 8
  %177 = load i32, i32* %175, align 4
  %178 = load i32*, i32** %12, align 8
  %179 = getelementptr inbounds i32, i32* %178, i32 -1
  store i32* %179, i32** %12, align 8
  store i32 %177, i32* %179, align 4
  br label %180

180:                                              ; preds = %174
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %14, align 4
  br label %170

183:                                              ; preds = %170
  %184 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_UPDATE_RSS_KEY, align 4
  %185 = load i32, i32* %9, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %9, align 4
  br label %187

187:                                              ; preds = %183, %154
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @cpu_to_le16(i32 %188)
  %190 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %191 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 4
  %192 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %193 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %196 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 8
  %197 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %6, align 8
  %198 = getelementptr inbounds %struct.bnx2x_rss_config_obj, %struct.bnx2x_rss_config_obj* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %201 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load i32, i32* @BNX2X_MSG_SP, align 4
  %203 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %204 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i32, i8*, ...) @DP(i32 %202, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %205)
  %207 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %208 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %211 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @T_ETH_INDIRECTION_TABLE_SIZE, align 4
  %214 = call i32 @memcpy(i32 %209, i32 %212, i32 %213)
  %215 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %6, align 8
  %216 = getelementptr inbounds %struct.bnx2x_rss_config_obj, %struct.bnx2x_rss_config_obj* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %219 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @T_ETH_INDIRECTION_TABLE_SIZE, align 4
  %222 = call i32 @memcpy(i32 %217, i32 %220, i32 %221)
  %223 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %224 = call i64 @netif_msg_ifup(%struct.bnx2x* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %187
  %227 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %228 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %229 = call i32 @bnx2x_debug_print_ind_table(%struct.bnx2x* %227, %struct.bnx2x_config_rss_params* %228)
  br label %230

230:                                              ; preds = %226, %187
  %231 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %232 = load i32, i32* @RAMROD_CMD_ID_ETH_RSS_UPDATE, align 4
  %233 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %7, align 8
  %234 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %7, align 8
  %237 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @U64_HI(i32 %238)
  %240 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %7, align 8
  %241 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @U64_LO(i32 %242)
  %244 = load i32, i32* @ETH_CONNECTION_TYPE, align 4
  %245 = call i32 @bnx2x_sp_post(%struct.bnx2x* %231, i32 %232, i32 %235, i32 %239, i32 %243, i32 %244)
  store i32 %245, i32* %11, align 4
  %246 = load i32, i32* %11, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %230
  %249 = load i32, i32* %11, align 4
  store i32 %249, i32* %3, align 4
  br label %251

250:                                              ; preds = %230
  store i32 1, i32* %3, align 4
  br label %251

251:                                              ; preds = %250, %248
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local i32 @memset(%struct.eth_rss_update_ramrod_data*, i32, i32) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @netif_msg_ifup(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_debug_print_ind_table(%struct.bnx2x*, %struct.bnx2x_config_rss_params*) #1

declare dso_local i32 @bnx2x_sp_post(%struct.bnx2x*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
