; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_set_timestamp_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_set_timestamp_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hwtstamp_config = type { i32, i32, i64 }

@E1000_TSYNCTXCTL_ENABLED = common dso_local global i32 0, align 4
@E1000_TSYNCRXCTL_ENABLED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@E1000_TSYNCRXCTL_TYPE_L4_V1 = common dso_local global i32 0, align 4
@E1000_TSYNCRXCFG_PTP_V1_SYNC_MESSAGE = common dso_local global i32 0, align 4
@E1000_TSYNCRXCFG_PTP_V1_DELAY_REQ_MESSAGE = common dso_local global i32 0, align 4
@E1000_TSYNCRXCTL_TYPE_EVENT_V2 = common dso_local global i32 0, align 4
@e1000_82576 = common dso_local global i64 0, align 8
@E1000_TSYNCRXCTL_TYPE_ALL = common dso_local global i32 0, align 4
@e1000_82575 = common dso_local global i64 0, align 8
@e1000_82580 = common dso_local global i64 0, align 8
@e1000_i210 = common dso_local global i64 0, align 8
@e1000_i211 = common dso_local global i64 0, align 8
@E1000_RXPBS = common dso_local global i32 0, align 4
@E1000_RXPBS_CFG_TS_EN = common dso_local global i32 0, align 4
@E1000_TSYNCTXCTL = common dso_local global i32 0, align 4
@E1000_TSYNCRXCTL = common dso_local global i32 0, align 4
@E1000_TSYNCRXCTL_TYPE_MASK = common dso_local global i32 0, align 4
@E1000_TSYNCRXCFG = common dso_local global i32 0, align 4
@IGB_ETQF_FILTER_1588 = common dso_local global i32 0, align 4
@E1000_ETQF_FILTER_ENABLE = common dso_local global i32 0, align 4
@E1000_ETQF_1588 = common dso_local global i32 0, align 4
@ETH_P_1588 = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@E1000_FTQF_VF_BP = common dso_local global i32 0, align 4
@E1000_FTQF_1588_TIME_STAMP = common dso_local global i32 0, align 4
@E1000_FTQF_MASK = common dso_local global i32 0, align 4
@E1000_FTQF_MASK_PROTO_BP = common dso_local global i32 0, align 4
@PTP_EV_PORT = common dso_local global i32 0, align 4
@E1000_IMIREXT_SIZE_BP = common dso_local global i32 0, align 4
@E1000_IMIREXT_CTRL_BP = common dso_local global i32 0, align 4
@E1000_FTQF_MASK_SOURCE_PORT_BP = common dso_local global i32 0, align 4
@E1000_TXSTMPL = common dso_local global i32 0, align 4
@E1000_TXSTMPH = common dso_local global i32 0, align 4
@E1000_RXSTMPL = common dso_local global i32 0, align 4
@E1000_RXSTMPH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*, %struct.hwtstamp_config*)* @igb_ptp_set_timestamp_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_ptp_set_timestamp_mode(%struct.igb_adapter* %0, %struct.hwtstamp_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.igb_adapter*, align 8
  %5 = alloca %struct.hwtstamp_config*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %4, align 8
  store %struct.hwtstamp_config* %1, %struct.hwtstamp_config** %5, align 8
  %14 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %14, i32 0, i32 0
  store %struct.e1000_hw* %15, %struct.e1000_hw** %6, align 8
  %16 = load i32, i32* @E1000_TSYNCTXCTL_ENABLED, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @E1000_TSYNCRXCTL_ENABLED, align 4
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %19 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %232

25:                                               ; preds = %2
  %26 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %27 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %31 [
    i32 129, label %29
    i32 128, label %30
  ]

29:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %25, %29
  br label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @ERANGE, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %232

34:                                               ; preds = %30
  %35 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %36 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %69 [
    i32 143, label %38
    i32 139, label %39
    i32 141, label %44
    i32 137, label %49
    i32 135, label %49
    i32 132, label %49
    i32 130, label %49
    i32 134, label %49
    i32 131, label %49
    i32 138, label %49
    i32 136, label %49
    i32 133, label %49
    i32 140, label %55
    i32 142, label %55
    i32 144, label %55
  ]

38:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %74

39:                                               ; preds = %34
  %40 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_L4_V1, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @E1000_TSYNCRXCFG_PTP_V1_SYNC_MESSAGE, align 4
  store i32 %43, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %74

44:                                               ; preds = %34
  %45 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_L4_V1, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @E1000_TSYNCRXCFG_PTP_V1_DELAY_REQ_MESSAGE, align 4
  store i32 %48, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %74

49:                                               ; preds = %34, %34, %34, %34, %34, %34, %34, %34, %34
  %50 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_EVENT_V2, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %54 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %53, i32 0, i32 1
  store i32 137, i32* %54, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %74

55:                                               ; preds = %34, %34, %34
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %57 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @e1000_82576, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_ALL, align 4
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %67 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %66, i32 0, i32 1
  store i32 144, i32* %67, align 4
  br label %74

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %34, %68
  %70 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %71 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %70, i32 0, i32 1
  store i32 143, i32* %71, align 4
  %72 = load i32, i32* @ERANGE, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %232

74:                                               ; preds = %62, %49, %44, %39, %38
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %76 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @e1000_82575, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %232

89:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %232

90:                                               ; preds = %74
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %92 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @e1000_82580, align 8
  %96 = icmp sge i64 %94, %95
  br i1 %96, label %97, label %130

97:                                               ; preds = %90
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %130

100:                                              ; preds = %97
  %101 = load i32, i32* @E1000_TSYNCRXCTL_ENABLED, align 4
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_ALL, align 4
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %8, align 4
  %105 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %106 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %105, i32 0, i32 1
  store i32 144, i32* %106, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %10, align 4
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %108 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @e1000_i210, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %120, label %113

113:                                              ; preds = %100
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %115 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @e1000_i211, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %113, %100
  %121 = load i32, i32* @E1000_RXPBS, align 4
  %122 = call i32 @rd32(i32 %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* @E1000_RXPBS_CFG_TS_EN, align 4
  %124 = load i32, i32* %12, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* @E1000_RXPBS, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @wr32(i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %120, %113
  br label %130

130:                                              ; preds = %129, %97, %90
  %131 = load i32, i32* @E1000_TSYNCTXCTL, align 4
  %132 = call i32 @rd32(i32 %131)
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* @E1000_TSYNCTXCTL_ENABLED, align 4
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %12, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %12, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* @E1000_TSYNCTXCTL, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @wr32(i32 %140, i32 %141)
  %143 = load i32, i32* @E1000_TSYNCRXCTL, align 4
  %144 = call i32 @rd32(i32 %143)
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* @E1000_TSYNCRXCTL_ENABLED, align 4
  %146 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_MASK, align 4
  %147 = or i32 %145, %146
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %12, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %12, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* @E1000_TSYNCRXCTL, align 4
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @wr32(i32 %154, i32 %155)
  %157 = load i32, i32* @E1000_TSYNCRXCFG, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @wr32(i32 %157, i32 %158)
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %130
  %163 = load i32, i32* @IGB_ETQF_FILTER_1588, align 4
  %164 = call i32 @E1000_ETQF(i32 %163)
  %165 = load i32, i32* @E1000_ETQF_FILTER_ENABLE, align 4
  %166 = load i32, i32* @E1000_ETQF_1588, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @ETH_P_1588, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @wr32(i32 %164, i32 %169)
  br label %175

171:                                              ; preds = %130
  %172 = load i32, i32* @IGB_ETQF_FILTER_1588, align 4
  %173 = call i32 @E1000_ETQF(i32 %172)
  %174 = call i32 @wr32(i32 %173, i32 0)
  br label %175

175:                                              ; preds = %171, %162
  %176 = load i32, i32* %10, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %218

178:                                              ; preds = %175
  %179 = load i32, i32* @IPPROTO_UDP, align 4
  %180 = load i32, i32* @E1000_FTQF_VF_BP, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @E1000_FTQF_1588_TIME_STAMP, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @E1000_FTQF_MASK, align 4
  %185 = or i32 %183, %184
  store i32 %185, i32* %13, align 4
  %186 = load i32, i32* @E1000_FTQF_MASK_PROTO_BP, align 4
  %187 = xor i32 %186, -1
  %188 = load i32, i32* %13, align 4
  %189 = and i32 %188, %187
  store i32 %189, i32* %13, align 4
  %190 = call i32 @E1000_IMIR(i32 3)
  %191 = load i32, i32* @PTP_EV_PORT, align 4
  %192 = call i32 @htons(i32 %191)
  %193 = call i32 @wr32(i32 %190, i32 %192)
  %194 = call i32 @E1000_IMIREXT(i32 3)
  %195 = load i32, i32* @E1000_IMIREXT_SIZE_BP, align 4
  %196 = load i32, i32* @E1000_IMIREXT_CTRL_BP, align 4
  %197 = or i32 %195, %196
  %198 = call i32 @wr32(i32 %194, i32 %197)
  %199 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %200 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @e1000_82576, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %214

205:                                              ; preds = %178
  %206 = call i32 @E1000_SPQF(i32 3)
  %207 = load i32, i32* @PTP_EV_PORT, align 4
  %208 = call i32 @htons(i32 %207)
  %209 = call i32 @wr32(i32 %206, i32 %208)
  %210 = load i32, i32* @E1000_FTQF_MASK_SOURCE_PORT_BP, align 4
  %211 = xor i32 %210, -1
  %212 = load i32, i32* %13, align 4
  %213 = and i32 %212, %211
  store i32 %213, i32* %13, align 4
  br label %214

214:                                              ; preds = %205, %178
  %215 = call i32 @E1000_FTQF(i32 3)
  %216 = load i32, i32* %13, align 4
  %217 = call i32 @wr32(i32 %215, i32 %216)
  br label %222

218:                                              ; preds = %175
  %219 = call i32 @E1000_FTQF(i32 3)
  %220 = load i32, i32* @E1000_FTQF_MASK, align 4
  %221 = call i32 @wr32(i32 %219, i32 %220)
  br label %222

222:                                              ; preds = %218, %214
  %223 = call i32 (...) @wrfl()
  %224 = load i32, i32* @E1000_TXSTMPL, align 4
  %225 = call i32 @rd32(i32 %224)
  store i32 %225, i32* %12, align 4
  %226 = load i32, i32* @E1000_TXSTMPH, align 4
  %227 = call i32 @rd32(i32 %226)
  store i32 %227, i32* %12, align 4
  %228 = load i32, i32* @E1000_RXSTMPL, align 4
  %229 = call i32 @rd32(i32 %228)
  store i32 %229, i32* %12, align 4
  %230 = load i32, i32* @E1000_RXSTMPH, align 4
  %231 = call i32 @rd32(i32 %230)
  store i32 %231, i32* %12, align 4
  store i32 0, i32* %3, align 4
  br label %232

232:                                              ; preds = %222, %89, %86, %69, %31, %22
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @E1000_ETQF(i32) #1

declare dso_local i32 @E1000_IMIR(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @E1000_IMIREXT(i32) #1

declare dso_local i32 @E1000_SPQF(i32) #1

declare dso_local i32 @E1000_FTQF(i32) #1

declare dso_local i32 @wrfl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
