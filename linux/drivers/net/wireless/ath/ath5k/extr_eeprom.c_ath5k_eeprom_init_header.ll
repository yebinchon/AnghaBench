; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_init_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_init_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i64, i32**, i32**, i32, i32, i32, i64 }

@AR5K_EEPROM_INFO_MAX = common dso_local global i32 0, align 4
@AR5K_EEPROM_MAGIC = common dso_local global i32 0, align 4
@ee_magic = common dso_local global i32 0, align 4
@AR5K_EEPROM_PROTECT = common dso_local global i32 0, align 4
@ee_protect = common dso_local global i32 0, align 4
@AR5K_EEPROM_REG_DOMAIN = common dso_local global i32 0, align 4
@ee_regdomain = common dso_local global i32 0, align 4
@AR5K_EEPROM_VERSION = common dso_local global i32 0, align 4
@ee_version = common dso_local global i32 0, align 4
@AR5K_EEPROM_HDR = common dso_local global i32 0, align 4
@ee_header = common dso_local global i32 0, align 4
@AR5K_EEPROM_VERSION_3_0 = common dso_local global i64 0, align 8
@AR5K_EEPROM_SIZE_UPPER = common dso_local global i32 0, align 4
@AR5K_EEPROM_SIZE_UPPER_MASK = common dso_local global i32 0, align 4
@AR5K_EEPROM_SIZE_ENDLOC_SHIFT = common dso_local global i32 0, align 4
@AR5K_EEPROM_SIZE_LOWER = common dso_local global i32 0, align 4
@AR5K_EEPROM_INFO_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Invalid max custom EEPROM size: %d (0x%04x) max expected: %d (0x%04x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AR5K_EEPROM_INFO_CKSUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Invalid EEPROM checksum: 0x%04x eep_max: 0x%04x (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"default size\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"custom size\00", align 1
@ee_ant_gain = common dso_local global i32 0, align 4
@AR5K_EEPROM_VERSION_4_0 = common dso_local global i64 0, align 8
@AR5K_EEPROM_MISC0 = common dso_local global i32 0, align 4
@ee_misc0 = common dso_local global i32 0, align 4
@AR5K_EEPROM_MISC1 = common dso_local global i32 0, align 4
@ee_misc1 = common dso_local global i32 0, align 4
@AR5K_EEPROM_MISC2 = common dso_local global i32 0, align 4
@ee_misc2 = common dso_local global i32 0, align 4
@AR5K_EEPROM_VERSION_4_3 = common dso_local global i64 0, align 8
@AR5K_EEPROM_MISC3 = common dso_local global i32 0, align 4
@ee_misc3 = common dso_local global i32 0, align 4
@AR5K_EEPROM_VERSION_5_0 = common dso_local global i64 0, align 8
@AR5K_EEPROM_MISC4 = common dso_local global i32 0, align 4
@ee_misc4 = common dso_local global i32 0, align 4
@AR5K_EEPROM_MISC5 = common dso_local global i32 0, align 4
@ee_misc5 = common dso_local global i32 0, align 4
@AR5K_EEPROM_MISC6 = common dso_local global i32 0, align 4
@ee_misc6 = common dso_local global i32 0, align 4
@AR5K_EEPROM_VERSION_3_3 = common dso_local global i64 0, align 8
@AR5K_EEPROM_OBDB0_2GHZ = common dso_local global i32 0, align 4
@AR5K_EEPROM_MODE_11B = common dso_local global i64 0, align 8
@AR5K_EEPROM_OBDB1_2GHZ = common dso_local global i32 0, align 4
@AR5K_EEPROM_MODE_11G = common dso_local global i64 0, align 8
@AR5K_EEPROM_IS_HB63 = common dso_local global i32 0, align 4
@AR5K_SREV_AR2425 = common dso_local global i32 0, align 4
@AR5K_EEPROM_RFKILL = common dso_local global i32 0, align 4
@AR5K_EEPROM_RFKILL_GPIO_SEL = common dso_local global i32 0, align 4
@AR5K_EEPROM_RFKILL_POLARITY = common dso_local global i32 0, align 4
@AR5K_EEPROM_PCIE_OFFSET = common dso_local global i32 0, align 4
@AR5K_EEPROM_PCIE_SERDES_SECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*)* @ath5k_eeprom_init_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_eeprom_init_header(%struct.ath5k_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.ath5k_eeprom_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  %9 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %11, %struct.ath5k_eeprom_info** %4, align 8
  %12 = load i32, i32* @AR5K_EEPROM_INFO_MAX, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @AR5K_EEPROM_MAGIC, align 4
  %14 = load i32, i32* @ee_magic, align 4
  %15 = call i32 @AR5K_EEPROM_READ_HDR(i32 %13, i32 %14)
  %16 = load i32, i32* @AR5K_EEPROM_PROTECT, align 4
  %17 = load i32, i32* @ee_protect, align 4
  %18 = call i32 @AR5K_EEPROM_READ_HDR(i32 %16, i32 %17)
  %19 = load i32, i32* @AR5K_EEPROM_REG_DOMAIN, align 4
  %20 = load i32, i32* @ee_regdomain, align 4
  %21 = call i32 @AR5K_EEPROM_READ_HDR(i32 %19, i32 %20)
  %22 = load i32, i32* @AR5K_EEPROM_VERSION, align 4
  %23 = load i32, i32* @ee_version, align 4
  %24 = call i32 @AR5K_EEPROM_READ_HDR(i32 %22, i32 %23)
  %25 = load i32, i32* @AR5K_EEPROM_HDR, align 4
  %26 = load i32, i32* @ee_header, align 4
  %27 = call i32 @AR5K_EEPROM_READ_HDR(i32 %25, i32 %26)
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %29 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AR5K_EEPROM_VERSION_3_0, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %247

34:                                               ; preds = %1
  %35 = load i32, i32* @AR5K_EEPROM_SIZE_UPPER, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @AR5K_EEPROM_READ(i32 %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %70

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @AR5K_EEPROM_SIZE_UPPER_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @AR5K_EEPROM_SIZE_ENDLOC_SHIFT, align 4
  %45 = shl i32 %43, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @AR5K_EEPROM_SIZE_LOWER, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @AR5K_EEPROM_READ(i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @AR5K_EEPROM_INFO_BASE, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @AR5K_EEPROM_INFO_MAX, align 4
  %56 = mul nsw i32 3, %55
  %57 = icmp sgt i32 %54, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %40
  %59 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @AR5K_EEPROM_INFO_MAX, align 4
  %63 = mul nsw i32 3, %62
  %64 = load i32, i32* @AR5K_EEPROM_INFO_MAX, align 4
  %65 = mul nsw i32 3, %64
  %66 = call i32 (%struct.ath5k_hw*, i8*, i32, i32, ...) @ATH5K_ERR(%struct.ath5k_hw* %59, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, i32 %63, i32 %65)
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %247

69:                                               ; preds = %40
  br label %70

70:                                               ; preds = %69, %34
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %83, %70
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @AR5K_EEPROM_INFO(i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @AR5K_EEPROM_READ(i32 %77, i32 %78)
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = xor i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %75
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %71

86:                                               ; preds = %71
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @AR5K_EEPROM_INFO_CKSUM, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %86
  %91 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @AR5K_EEPROM_INFO_MAX, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %99 = call i32 (%struct.ath5k_hw*, i8*, i32, i32, ...) @ATH5K_ERR(%struct.ath5k_hw* %91, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %93, i8* %98)
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %247

102:                                              ; preds = %86
  %103 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %104 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @AR5K_EEPROM_ANT_GAIN(i64 %105)
  %107 = load i32, i32* @ee_ant_gain, align 4
  %108 = call i32 @AR5K_EEPROM_READ_HDR(i32 %106, i32 %107)
  %109 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %110 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @AR5K_EEPROM_VERSION_4_0, align 8
  %113 = icmp sge i64 %111, %112
  br i1 %113, label %114, label %150

114:                                              ; preds = %102
  %115 = load i32, i32* @AR5K_EEPROM_MISC0, align 4
  %116 = load i32, i32* @ee_misc0, align 4
  %117 = call i32 @AR5K_EEPROM_READ_HDR(i32 %115, i32 %116)
  %118 = load i32, i32* @AR5K_EEPROM_MISC1, align 4
  %119 = load i32, i32* @ee_misc1, align 4
  %120 = call i32 @AR5K_EEPROM_READ_HDR(i32 %118, i32 %119)
  %121 = load i32, i32* @AR5K_EEPROM_MISC2, align 4
  %122 = load i32, i32* @ee_misc2, align 4
  %123 = call i32 @AR5K_EEPROM_READ_HDR(i32 %121, i32 %122)
  %124 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %4, align 8
  %125 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @AR5K_EEPROM_VERSION_4_3, align 8
  %128 = icmp sge i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %114
  %130 = load i32, i32* @AR5K_EEPROM_MISC3, align 4
  %131 = load i32, i32* @ee_misc3, align 4
  %132 = call i32 @AR5K_EEPROM_READ_HDR(i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %114
  %134 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %4, align 8
  %135 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @AR5K_EEPROM_VERSION_5_0, align 8
  %138 = icmp sge i64 %136, %137
  br i1 %138, label %139, label %149

139:                                              ; preds = %133
  %140 = load i32, i32* @AR5K_EEPROM_MISC4, align 4
  %141 = load i32, i32* @ee_misc4, align 4
  %142 = call i32 @AR5K_EEPROM_READ_HDR(i32 %140, i32 %141)
  %143 = load i32, i32* @AR5K_EEPROM_MISC5, align 4
  %144 = load i32, i32* @ee_misc5, align 4
  %145 = call i32 @AR5K_EEPROM_READ_HDR(i32 %143, i32 %144)
  %146 = load i32, i32* @AR5K_EEPROM_MISC6, align 4
  %147 = load i32, i32* @ee_misc6, align 4
  %148 = call i32 @AR5K_EEPROM_READ_HDR(i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %139, %133
  br label %150

150:                                              ; preds = %149, %102
  %151 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %152 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @AR5K_EEPROM_VERSION_3_3, align 8
  %155 = icmp slt i64 %153, %154
  br i1 %155, label %156, label %201

156:                                              ; preds = %150
  %157 = load i32, i32* @AR5K_EEPROM_OBDB0_2GHZ, align 4
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @AR5K_EEPROM_READ(i32 %157, i32 %158)
  %160 = load i32, i32* %5, align 4
  %161 = and i32 %160, 7
  %162 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %4, align 8
  %163 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %162, i32 0, i32 1
  %164 = load i32**, i32*** %163, align 8
  %165 = load i64, i64* @AR5K_EEPROM_MODE_11B, align 8
  %166 = getelementptr inbounds i32*, i32** %164, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  store i32 %161, i32* %168, align 4
  %169 = load i32, i32* %5, align 4
  %170 = ashr i32 %169, 3
  %171 = and i32 %170, 7
  %172 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %4, align 8
  %173 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %172, i32 0, i32 2
  %174 = load i32**, i32*** %173, align 8
  %175 = load i64, i64* @AR5K_EEPROM_MODE_11B, align 8
  %176 = getelementptr inbounds i32*, i32** %174, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  store i32 %171, i32* %178, align 4
  %179 = load i32, i32* @AR5K_EEPROM_OBDB1_2GHZ, align 4
  %180 = load i32, i32* %5, align 4
  %181 = call i32 @AR5K_EEPROM_READ(i32 %179, i32 %180)
  %182 = load i32, i32* %5, align 4
  %183 = and i32 %182, 7
  %184 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %4, align 8
  %185 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %184, i32 0, i32 1
  %186 = load i32**, i32*** %185, align 8
  %187 = load i64, i64* @AR5K_EEPROM_MODE_11G, align 8
  %188 = getelementptr inbounds i32*, i32** %186, i64 %187
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  store i32 %183, i32* %190, align 4
  %191 = load i32, i32* %5, align 4
  %192 = ashr i32 %191, 3
  %193 = and i32 %192, 7
  %194 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %4, align 8
  %195 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %194, i32 0, i32 2
  %196 = load i32**, i32*** %195, align 8
  %197 = load i64, i64* @AR5K_EEPROM_MODE_11G, align 8
  %198 = getelementptr inbounds i32*, i32** %196, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  store i32 %193, i32* %200, align 4
  br label %201

201:                                              ; preds = %156, %150
  %202 = load i32, i32* @AR5K_EEPROM_IS_HB63, align 4
  %203 = load i32, i32* %5, align 4
  %204 = call i32 @AR5K_EEPROM_READ(i32 %202, i32 %203)
  %205 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %206 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @AR5K_SREV_AR2425, align 4
  %209 = ashr i32 %208, 4
  %210 = icmp eq i32 %207, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %201
  %212 = load i32, i32* %5, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %4, align 8
  %216 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %215, i32 0, i32 3
  store i32 1, i32* %216, align 8
  br label %220

217:                                              ; preds = %211, %201
  %218 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %4, align 8
  %219 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %218, i32 0, i32 3
  store i32 0, i32* %219, align 8
  br label %220

220:                                              ; preds = %217, %214
  %221 = load i32, i32* @AR5K_EEPROM_RFKILL, align 4
  %222 = load i32, i32* %5, align 4
  %223 = call i32 @AR5K_EEPROM_READ(i32 %221, i32 %222)
  %224 = load i32, i32* %5, align 4
  %225 = load i32, i32* @AR5K_EEPROM_RFKILL_GPIO_SEL, align 4
  %226 = call i64 @AR5K_REG_MS(i32 %224, i32 %225)
  %227 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %4, align 8
  %228 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %227, i32 0, i32 6
  store i64 %226, i64* %228, align 8
  %229 = load i32, i32* %5, align 4
  %230 = load i32, i32* @AR5K_EEPROM_RFKILL_POLARITY, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i32 1, i32 0
  %235 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %4, align 8
  %236 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %235, i32 0, i32 4
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* @AR5K_EEPROM_PCIE_OFFSET, align 4
  %238 = load i32, i32* %5, align 4
  %239 = call i32 @AR5K_EEPROM_READ(i32 %237, i32 %238)
  %240 = load i32, i32* %5, align 4
  %241 = load i32, i32* @AR5K_EEPROM_PCIE_SERDES_SECTION, align 4
  %242 = icmp eq i32 %240, %241
  %243 = zext i1 %242 to i64
  %244 = select i1 %242, i32 1, i32 0
  %245 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %4, align 8
  %246 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %245, i32 0, i32 5
  store i32 %244, i32* %246, align 8
  store i32 0, i32* %2, align 4
  br label %247

247:                                              ; preds = %220, %90, %58, %33
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local i32 @AR5K_EEPROM_READ_HDR(i32, i32) #1

declare dso_local i32 @AR5K_EEPROM_READ(i32, i32) #1

declare dso_local i32 @ATH5K_ERR(%struct.ath5k_hw*, i8*, i32, i32, ...) #1

declare dso_local i32 @AR5K_EEPROM_INFO(i32) #1

declare dso_local i32 @AR5K_EEPROM_ANT_GAIN(i64) #1

declare dso_local i64 @AR5K_REG_MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
