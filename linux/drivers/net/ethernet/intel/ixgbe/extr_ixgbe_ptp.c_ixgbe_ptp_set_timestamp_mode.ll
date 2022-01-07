; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_set_timestamp_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_set_timestamp_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hwtstamp_config = type { i32, i32, i64 }

@IXGBE_TSYNCTXCTL_ENABLED = common dso_local global i32 0, align 4
@IXGBE_TSYNCRXCTL_ENABLED = common dso_local global i32 0, align 4
@PTP_EV_PORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@IXGBE_FLAG_RX_HWTSTAMP_ENABLED = common dso_local global i32 0, align 4
@IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER = common dso_local global i32 0, align 4
@IXGBE_TSYNCRXCTL_TYPE_L4_V1 = common dso_local global i32 0, align 4
@IXGBE_RXMTRL_V1_SYNC_MSG = common dso_local global i32 0, align 4
@IXGBE_RXMTRL_V1_DELAY_REQ_MSG = common dso_local global i32 0, align 4
@IXGBE_TSYNCRXCTL_TYPE_EVENT_V2 = common dso_local global i32 0, align 4
@IXGBE_TSYNCRXCTL_TYPE_ALL = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i32 0, align 4
@IXGBE_TSYNCRXCTL_TSIP_UT_EN = common dso_local global i32 0, align 4
@IXGBE_ETQF_FILTER_1588 = common dso_local global i32 0, align 4
@IXGBE_ETQF_FILTER_EN = common dso_local global i32 0, align 4
@IXGBE_ETQF_1588 = common dso_local global i32 0, align 4
@ETH_P_1588 = common dso_local global i32 0, align 4
@IXGBE_TSYNCTXCTL = common dso_local global i32 0, align 4
@IXGBE_TSYNCRXCTL = common dso_local global i32 0, align 4
@IXGBE_TSYNCRXCTL_TYPE_MASK = common dso_local global i32 0, align 4
@IXGBE_RXMTRL = common dso_local global i32 0, align 4
@IXGBE_RXSTMPH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, %struct.hwtstamp_config*)* @ixgbe_ptp_set_timestamp_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_ptp_set_timestamp_mode(%struct.ixgbe_adapter* %0, %struct.hwtstamp_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca %struct.hwtstamp_config*, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store %struct.hwtstamp_config* %1, %struct.hwtstamp_config** %5, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 1
  store %struct.ixgbe_hw* %13, %struct.ixgbe_hw** %6, align 8
  %14 = load i32, i32* @IXGBE_TSYNCTXCTL_ENABLED, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @IXGBE_TSYNCRXCTL_ENABLED, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @PTP_EV_PORT, align 4
  %17 = shl i32 %16, 16
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %19 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %234

25:                                               ; preds = %2
  %26 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %27 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %31 [
    i32 132, label %29
    i32 131, label %30
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
  br label %234

34:                                               ; preds = %30
  %35 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %36 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %106 [
    i32 146, label %38
    i32 142, label %47
    i32 144, label %61
    i32 140, label %75
    i32 138, label %75
    i32 135, label %75
    i32 133, label %75
    i32 137, label %75
    i32 134, label %75
    i32 141, label %75
    i32 139, label %75
    i32 136, label %75
    i32 143, label %88
    i32 145, label %88
    i32 147, label %88
  ]

38:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %39 = load i32, i32* @IXGBE_FLAG_RX_HWTSTAMP_ENABLED, align 4
  %40 = load i32, i32* @IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %119

47:                                               ; preds = %34
  %48 = load i32, i32* @IXGBE_TSYNCRXCTL_TYPE_L4_V1, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* @IXGBE_RXMTRL_V1_SYNC_MSG, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @IXGBE_FLAG_RX_HWTSTAMP_ENABLED, align 4
  %55 = load i32, i32* @IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %58 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %119

61:                                               ; preds = %34
  %62 = load i32, i32* @IXGBE_TSYNCRXCTL_TYPE_L4_V1, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* @IXGBE_RXMTRL_V1_DELAY_REQ_MSG, align 4
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* @IXGBE_FLAG_RX_HWTSTAMP_ENABLED, align 4
  %69 = load i32, i32* @IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %72 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %119

75:                                               ; preds = %34, %34, %34, %34, %34, %34, %34, %34, %34
  %76 = load i32, i32* @IXGBE_TSYNCRXCTL_TYPE_EVENT_V2, align 4
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  store i32 1, i32* %10, align 4
  %79 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %80 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %79, i32 0, i32 1
  store i32 140, i32* %80, align 4
  %81 = load i32, i32* @IXGBE_FLAG_RX_HWTSTAMP_ENABLED, align 4
  %82 = load i32, i32* @IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %85 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %119

88:                                               ; preds = %34, %34, %34
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %90 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp sge i32 %92, 130
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load i32, i32* @IXGBE_TSYNCRXCTL_TYPE_ALL, align 4
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %8, align 4
  %98 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %99 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %98, i32 0, i32 1
  store i32 147, i32* %99, align 4
  %100 = load i32, i32* @IXGBE_FLAG_RX_HWTSTAMP_ENABLED, align 4
  %101 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %102 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %119

105:                                              ; preds = %88
  br label %106

106:                                              ; preds = %34, %105
  %107 = load i32, i32* @IXGBE_FLAG_RX_HWTSTAMP_ENABLED, align 4
  %108 = load i32, i32* @IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER, align 4
  %109 = or i32 %107, %108
  %110 = xor i32 %109, -1
  %111 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %112 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %116 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %115, i32 0, i32 1
  store i32 146, i32* %116, align 4
  %117 = load i32, i32* @ERANGE, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %234

119:                                              ; preds = %94, %75, %61, %47, %38
  %120 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %121 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @ixgbe_mac_82598EB, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %143

126:                                              ; preds = %119
  %127 = load i32, i32* @IXGBE_FLAG_RX_HWTSTAMP_ENABLED, align 4
  %128 = load i32, i32* @IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER, align 4
  %129 = or i32 %127, %128
  %130 = xor i32 %129, -1
  %131 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %132 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %7, align 4
  %137 = or i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %126
  %140 = load i32, i32* @ERANGE, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %234

142:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %234

143:                                              ; preds = %119
  %144 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %145 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  switch i32 %147, label %173 [
    i32 130, label %148
    i32 129, label %148
    i32 128, label %148
  ]

148:                                              ; preds = %143, %143, %143
  %149 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %150 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 146
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %174

154:                                              ; preds = %148
  %155 = load i32, i32* @IXGBE_TSYNCRXCTL_ENABLED, align 4
  %156 = load i32, i32* @IXGBE_TSYNCRXCTL_TYPE_ALL, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @IXGBE_TSYNCRXCTL_TSIP_UT_EN, align 4
  %159 = or i32 %157, %158
  store i32 %159, i32* %8, align 4
  %160 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %161 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %160, i32 0, i32 1
  store i32 147, i32* %161, align 4
  %162 = load i32, i32* @IXGBE_FLAG_RX_HWTSTAMP_ENABLED, align 4
  %163 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %164 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = load i32, i32* @IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER, align 4
  %168 = xor i32 %167, -1
  %169 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %170 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, %168
  store i32 %172, i32* %170, align 4
  store i32 1, i32* %10, align 4
  br label %174

173:                                              ; preds = %143
  br label %174

174:                                              ; preds = %173, %154, %153
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %174
  %178 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %179 = load i32, i32* @IXGBE_ETQF_FILTER_1588, align 4
  %180 = call i32 @IXGBE_ETQF(i32 %179)
  %181 = load i32, i32* @IXGBE_ETQF_FILTER_EN, align 4
  %182 = load i32, i32* @IXGBE_ETQF_1588, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @ETH_P_1588, align 4
  %185 = or i32 %183, %184
  %186 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %178, i32 %180, i32 %185)
  br label %192

187:                                              ; preds = %174
  %188 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %189 = load i32, i32* @IXGBE_ETQF_FILTER_1588, align 4
  %190 = call i32 @IXGBE_ETQF(i32 %189)
  %191 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %188, i32 %190, i32 0)
  br label %192

192:                                              ; preds = %187, %177
  %193 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %194 = load i32, i32* @IXGBE_TSYNCTXCTL, align 4
  %195 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %193, i32 %194)
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* @IXGBE_TSYNCTXCTL_ENABLED, align 4
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %11, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %11, align 4
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* %11, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %11, align 4
  %203 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %204 = load i32, i32* @IXGBE_TSYNCTXCTL, align 4
  %205 = load i32, i32* %11, align 4
  %206 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %203, i32 %204, i32 %205)
  %207 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %208 = load i32, i32* @IXGBE_TSYNCRXCTL, align 4
  %209 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %207, i32 %208)
  store i32 %209, i32* %11, align 4
  %210 = load i32, i32* @IXGBE_TSYNCRXCTL_ENABLED, align 4
  %211 = load i32, i32* @IXGBE_TSYNCRXCTL_TYPE_MASK, align 4
  %212 = or i32 %210, %211
  %213 = xor i32 %212, -1
  %214 = load i32, i32* %11, align 4
  %215 = and i32 %214, %213
  store i32 %215, i32* %11, align 4
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* %11, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %11, align 4
  %219 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %220 = load i32, i32* @IXGBE_TSYNCRXCTL, align 4
  %221 = load i32, i32* %11, align 4
  %222 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %219, i32 %220, i32 %221)
  %223 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %224 = load i32, i32* @IXGBE_RXMTRL, align 4
  %225 = load i32, i32* %9, align 4
  %226 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %223, i32 %224, i32 %225)
  %227 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %228 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %227)
  %229 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %230 = call i32 @ixgbe_ptp_clear_tx_timestamp(%struct.ixgbe_adapter* %229)
  %231 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %232 = load i32, i32* @IXGBE_RXSTMPH, align 4
  %233 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %231, i32 %232)
  store i32 0, i32* %3, align 4
  br label %234

234:                                              ; preds = %192, %142, %139, %106, %31, %22
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_ETQF(i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_ptp_clear_tx_timestamp(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
