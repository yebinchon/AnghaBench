; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_reset.c_ath5k_hw_nic_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_reset.c_ath5k_hw_nic_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i64, i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.ieee80211_channel = type { i64, i64 }

@ATH_AHB = common dso_local global i64 0, align 8
@AR5K_PM_AWAKE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to wakeup the MAC Chip\0A\00", align 1
@AR5K_RESET_CTL_PCI = common dso_local global i32 0, align 4
@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_RESET_CTL_PCU = common dso_local global i32 0, align 4
@AR5K_RESET_CTL_MAC = common dso_local global i32 0, align 4
@AR5K_RESET_CTL_DMA = common dso_local global i32 0, align 4
@AR5K_RESET_CTL_PHY = common dso_local global i32 0, align 4
@AR5K_RESET_CTL_BASEBAND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to reset the MAC Chip\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to resume the MAC Chip\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to warm reset the MAC Chip\0A\00", align 1
@AR5K_RF5112 = common dso_local global i64 0, align 8
@AR5K_PHY_MODE_RAD_RF5112 = common dso_local global i32 0, align 4
@AR5K_PHY_PLL_RF5112 = common dso_local global i32 0, align 4
@AR5K_PHY_MODE_RAD_RF5111 = common dso_local global i32 0, align 4
@AR5K_PHY_PLL_RF5111 = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@AR5K_PHY_MODE_FREQ_2GHZ = common dso_local global i32 0, align 4
@AR5K_PHY_PLL_44MHZ = common dso_local global i32 0, align 4
@AR5K_MODE_11B = common dso_local global i64 0, align 8
@AR5K_PHY_MODE_MOD_CCK = common dso_local global i32 0, align 4
@AR5K_AR5211 = common dso_local global i64 0, align 8
@AR5K_PHY_MODE_MOD_OFDM = common dso_local global i32 0, align 4
@AR5K_PHY_MODE_MOD_DYN = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@AR5K_PHY_MODE_FREQ_5GHZ = common dso_local global i32 0, align 4
@AR5K_RF5413 = common dso_local global i64 0, align 8
@AR5K_PHY_PLL_40MHZ_5413 = common dso_local global i32 0, align 4
@AR5K_PHY_PLL_40MHZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"invalid radio frequency mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AR5K_BWMODE_40MHZ = common dso_local global i64 0, align 8
@AR5K_PHY_TURBO_MODE = common dso_local global i32 0, align 4
@AR5K_RF2425 = common dso_local global i64 0, align 8
@AR5K_PHY_TURBO_SHORT = common dso_local global i32 0, align 4
@AR5K_BWMODE_DEFAULT = common dso_local global i64 0, align 8
@AR5K_BWMODE_10MHZ = common dso_local global i64 0, align 8
@AR5K_PHY_MODE_HALF_RATE = common dso_local global i32 0, align 4
@AR5K_PHY_MODE_QUARTER_RATE = common dso_local global i32 0, align 4
@AR5K_AR5212 = common dso_local global i64 0, align 8
@AR5K_PHY_PLL_HALF_RATE = common dso_local global i32 0, align 4
@AR5K_PHY_PLL_QUARTER_RATE = common dso_local global i32 0, align 4
@AR5K_PHY_TURBO = common dso_local global i32 0, align 4
@AR5K_PHY_PLL = common dso_local global i32 0, align 4
@AR5K_PHY_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_nic_wakeup(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %12, i32 0, i32 3
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %16 = call i64 @ath5k_get_bus_type(%struct.ath5k_hw* %15)
  %17 = load i64, i64* @ATH_AHB, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %21 = icmp ne %struct.ieee80211_channel* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19, %2
  %23 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %24 = load i32, i32* @AR5K_PM_AWAKE, align 4
  %25 = call i32 @ath5k_hw_set_power_mode(%struct.ath5k_hw* %23, i32 %24, i32 1, i32 0)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %30 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %3, align 4
  br label %318

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %19
  %34 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %35 = icmp ne %struct.pci_dev* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %38 = call i64 @pci_is_pcie(%struct.pci_dev* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %43

41:                                               ; preds = %36, %33
  %42 = load i32, i32* @AR5K_RESET_CTL_PCI, align 4
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i32 [ 0, %40 ], [ %42, %41 ]
  store i32 %44, i32* %10, align 4
  %45 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %46 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AR5K_AR5210, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %43
  %51 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %52 = load i32, i32* @AR5K_RESET_CTL_PCU, align 4
  %53 = load i32, i32* @AR5K_RESET_CTL_MAC, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @AR5K_RESET_CTL_DMA, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @AR5K_RESET_CTL_PHY, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @AR5K_RESET_CTL_PCI, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @ath5k_hw_nic_reset(%struct.ath5k_hw* %51, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = call i32 @usleep_range(i32 2000, i32 2500)
  br label %83

63:                                               ; preds = %43
  %64 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %65 = call i64 @ath5k_get_bus_type(%struct.ath5k_hw* %64)
  %66 = load i64, i64* @ATH_AHB, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %70 = load i32, i32* @AR5K_RESET_CTL_PCU, align 4
  %71 = load i32, i32* @AR5K_RESET_CTL_BASEBAND, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @ath5k_hw_wisoc_reset(%struct.ath5k_hw* %69, i32 %72)
  store i32 %73, i32* %11, align 4
  br label %82

74:                                               ; preds = %63
  %75 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %76 = load i32, i32* @AR5K_RESET_CTL_PCU, align 4
  %77 = load i32, i32* @AR5K_RESET_CTL_BASEBAND, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %10, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @ath5k_hw_nic_reset(%struct.ath5k_hw* %75, i32 %80)
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %74, %68
  br label %83

83:                                               ; preds = %82, %50
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %88 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %318

91:                                               ; preds = %83
  %92 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %93 = load i32, i32* @AR5K_PM_AWAKE, align 4
  %94 = call i32 @ath5k_hw_set_power_mode(%struct.ath5k_hw* %92, i32 %93, i32 1, i32 0)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %99 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %3, align 4
  br label %318

101:                                              ; preds = %91
  %102 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %103 = call i64 @ath5k_get_bus_type(%struct.ath5k_hw* %102)
  %104 = load i64, i64* @ATH_AHB, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %108 = call i32 @ath5k_hw_wisoc_reset(%struct.ath5k_hw* %107, i32 0)
  store i32 %108, i32* %11, align 4
  br label %112

109:                                              ; preds = %101
  %110 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %111 = call i32 @ath5k_hw_nic_reset(%struct.ath5k_hw* %110, i32 0)
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %117 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %116, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i32, i32* @EIO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %318

120:                                              ; preds = %112
  %121 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %122 = icmp ne %struct.ieee80211_channel* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %318

124:                                              ; preds = %120
  %125 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %126 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @AR5K_AR5210, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %278

130:                                              ; preds = %124
  %131 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %132 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @AR5K_RF5112, align 8
  %135 = icmp sge i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load i32, i32* @AR5K_PHY_MODE_RAD_RF5112, align 4
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* @AR5K_PHY_PLL_RF5112, align 4
  store i32 %138, i32* %9, align 4
  br label %142

139:                                              ; preds = %130
  %140 = load i32, i32* @AR5K_PHY_MODE_RAD_RF5111, align 4
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* @AR5K_PHY_PLL_RF5111, align 4
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %139, %136
  %143 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %144 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %180

148:                                              ; preds = %142
  %149 = load i32, i32* @AR5K_PHY_MODE_FREQ_2GHZ, align 4
  %150 = load i32, i32* %8, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* @AR5K_PHY_PLL_44MHZ, align 4
  %153 = load i32, i32* %9, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %9, align 4
  %155 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %156 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @AR5K_MODE_11B, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %148
  %161 = load i32, i32* @AR5K_PHY_MODE_MOD_CCK, align 4
  %162 = load i32, i32* %8, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %8, align 4
  br label %179

164:                                              ; preds = %148
  %165 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %166 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @AR5K_AR5211, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load i32, i32* @AR5K_PHY_MODE_MOD_OFDM, align 4
  %172 = load i32, i32* %8, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %8, align 4
  br label %178

174:                                              ; preds = %164
  %175 = load i32, i32* @AR5K_PHY_MODE_MOD_DYN, align 4
  %176 = load i32, i32* %8, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %8, align 4
  br label %178

178:                                              ; preds = %174, %170
  br label %179

179:                                              ; preds = %178, %160
  br label %210

180:                                              ; preds = %142
  %181 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %182 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %204

186:                                              ; preds = %180
  %187 = load i32, i32* @AR5K_PHY_MODE_FREQ_5GHZ, align 4
  %188 = load i32, i32* @AR5K_PHY_MODE_MOD_OFDM, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* %8, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %8, align 4
  %192 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %193 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @AR5K_RF5413, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %186
  %198 = load i32, i32* @AR5K_PHY_PLL_40MHZ_5413, align 4
  store i32 %198, i32* %9, align 4
  br label %203

199:                                              ; preds = %186
  %200 = load i32, i32* @AR5K_PHY_PLL_40MHZ, align 4
  %201 = load i32, i32* %9, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %9, align 4
  br label %203

203:                                              ; preds = %199, %197
  br label %209

204:                                              ; preds = %180
  %205 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %206 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %205, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %3, align 4
  br label %318

209:                                              ; preds = %203
  br label %210

210:                                              ; preds = %209, %179
  %211 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %212 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @AR5K_BWMODE_40MHZ, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %228

216:                                              ; preds = %210
  %217 = load i32, i32* @AR5K_PHY_TURBO_MODE, align 4
  store i32 %217, i32* %7, align 4
  %218 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %219 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @AR5K_RF2425, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %216
  %224 = load i32, i32* @AR5K_PHY_TURBO_SHORT, align 4
  %225 = load i32, i32* %7, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %7, align 4
  br label %227

227:                                              ; preds = %223, %216
  br label %277

228:                                              ; preds = %210
  %229 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %230 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @AR5K_BWMODE_DEFAULT, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %234, label %276

234:                                              ; preds = %228
  %235 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %236 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @AR5K_RF5413, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %254

240:                                              ; preds = %234
  %241 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %242 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @AR5K_BWMODE_10MHZ, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %240
  %247 = load i32, i32* @AR5K_PHY_MODE_HALF_RATE, align 4
  br label %250

248:                                              ; preds = %240
  %249 = load i32, i32* @AR5K_PHY_MODE_QUARTER_RATE, align 4
  br label %250

250:                                              ; preds = %248, %246
  %251 = phi i32 [ %247, %246 ], [ %249, %248 ]
  %252 = load i32, i32* %8, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %8, align 4
  br label %275

254:                                              ; preds = %234
  %255 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %256 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @AR5K_AR5212, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %274

260:                                              ; preds = %254
  %261 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %262 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @AR5K_BWMODE_10MHZ, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %260
  %267 = load i32, i32* @AR5K_PHY_PLL_HALF_RATE, align 4
  br label %270

268:                                              ; preds = %260
  %269 = load i32, i32* @AR5K_PHY_PLL_QUARTER_RATE, align 4
  br label %270

270:                                              ; preds = %268, %266
  %271 = phi i32 [ %267, %266 ], [ %269, %268 ]
  %272 = load i32, i32* %9, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %9, align 4
  br label %274

274:                                              ; preds = %270, %254
  br label %275

275:                                              ; preds = %274, %250
  br label %276

276:                                              ; preds = %275, %228
  br label %277

277:                                              ; preds = %276, %227
  br label %290

278:                                              ; preds = %124
  %279 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %280 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @AR5K_BWMODE_40MHZ, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %289

284:                                              ; preds = %278
  %285 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %286 = load i32, i32* @AR5K_PHY_TURBO_MODE, align 4
  %287 = load i32, i32* @AR5K_PHY_TURBO, align 4
  %288 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %285, i32 %286, i32 %287)
  br label %289

289:                                              ; preds = %284, %278
  br label %290

290:                                              ; preds = %289, %277
  %291 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %292 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @AR5K_AR5210, align 8
  %295 = icmp ne i64 %293, %294
  br i1 %295, label %296, label %317

296:                                              ; preds = %290
  %297 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %298 = load i32, i32* @AR5K_PHY_PLL, align 4
  %299 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %297, i32 %298)
  %300 = load i32, i32* %9, align 4
  %301 = icmp ne i32 %299, %300
  br i1 %301, label %302, label %308

302:                                              ; preds = %296
  %303 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %304 = load i32, i32* %9, align 4
  %305 = load i32, i32* @AR5K_PHY_PLL, align 4
  %306 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %303, i32 %304, i32 %305)
  %307 = call i32 @usleep_range(i32 300, i32 350)
  br label %308

308:                                              ; preds = %302, %296
  %309 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %310 = load i32, i32* %8, align 4
  %311 = load i32, i32* @AR5K_PHY_MODE, align 4
  %312 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %309, i32 %310, i32 %311)
  %313 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %314 = load i32, i32* %7, align 4
  %315 = load i32, i32* @AR5K_PHY_TURBO, align 4
  %316 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %313, i32 %314, i32 %315)
  br label %317

317:                                              ; preds = %308, %290
  store i32 0, i32* %3, align 4
  br label %318

318:                                              ; preds = %317, %204, %123, %115, %97, %86, %28
  %319 = load i32, i32* %3, align 4
  ret i32 %319
}

declare dso_local i64 @ath5k_get_bus_type(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_set_power_mode(%struct.ath5k_hw*, i32, i32, i32) #1

declare dso_local i32 @ATH5K_ERR(%struct.ath5k_hw*, i8*) #1

declare dso_local i64 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @ath5k_hw_nic_reset(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ath5k_hw_wisoc_reset(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
