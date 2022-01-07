; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_mii.c_mii_ethtool_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_mii.c_mii_ethtool_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_if_info = type { i32 (%struct.net_device*, i32, i32)*, i32, i64, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32, i32 }

@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_MII = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@PORT_MII = common dso_local global i32 0, align 4
@ETH_MDIO_SUPPORTS_C22 = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@ADVERTISED_MII = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@MII_STAT1000 = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@BMSR_ANEGCOMPLETE = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i8* null, align 8
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i8* null, align 8
@SPEED_10 = common dso_local global i8* null, align 8
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mii_ethtool_get_link_ksettings(%struct.mii_if_info* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.mii_if_info*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mii_if_info* %0, %struct.mii_if_info** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %14 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %15 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %14, i32 0, i32 4
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %18 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SUPPORTED_TP, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SUPPORTED_MII, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %31 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %36 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %34, %2
  %41 = load i32, i32* @PORT_MII, align 4
  %42 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %43 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 5
  store i32 %41, i32* %44, align 4
  %45 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %46 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @ETH_MDIO_SUPPORTS_C22, align 4
  %52 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %53 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @ADVERTISED_TP, align 4
  %56 = load i32, i32* @ADVERTISED_MII, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %12, align 4
  %58 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %59 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %58, i32 0, i32 0
  %60 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %59, align 8
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %63 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @MII_BMCR, align 4
  %66 = call i32 %60(%struct.net_device* %61, i32 %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %68 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %67, i32 0, i32 0
  %69 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %68, align 8
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %72 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @MII_BMSR, align 4
  %75 = call i32 %69(%struct.net_device* %70, i32 %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %77 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %40
  %81 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %82 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %81, i32 0, i32 0
  %83 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %82, align 8
  %84 = load %struct.net_device*, %struct.net_device** %5, align 8
  %85 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %86 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @MII_CTRL1000, align 4
  %89 = call i32 %83(%struct.net_device* %84, i32 %87, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %91 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %90, i32 0, i32 0
  %92 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %91, align 8
  %93 = load %struct.net_device*, %struct.net_device** %5, align 8
  %94 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %95 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @MII_STAT1000, align 4
  %98 = call i32 %92(%struct.net_device* %93, i32 %96, i32 %97)
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %80, %40
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @BMCR_ANENABLE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %204

104:                                              ; preds = %99
  %105 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %106 = load i32, i32* %12, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* @AUTONEG_ENABLE, align 4
  %109 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %110 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  store i32 %108, i32* %111, align 8
  %112 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %113 = load i32, i32* @MII_ADVERTISE, align 4
  %114 = call i32 @mii_get_an(%struct.mii_if_info* %112, i32 %113)
  %115 = load i32, i32* %12, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %12, align 4
  %117 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %118 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %104
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @mii_ctrl1000_to_ethtool_adv_t(i32 %122)
  %124 = load i32, i32* %12, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %12, align 4
  br label %126

126:                                              ; preds = %121, %104
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @BMSR_ANEGCOMPLETE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %133 = load i32, i32* @MII_LPA, align 4
  %134 = call i32 @mii_get_an(%struct.mii_if_info* %132, i32 %133)
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @mii_stat1000_to_ethtool_lpa_t(i32 %135)
  %137 = load i32, i32* %13, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %13, align 4
  br label %140

139:                                              ; preds = %126
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %139, %131
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %13, align 4
  %143 = and i32 %141, %142
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %146 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %147 = or i32 %145, %146
  %148 = and i32 %144, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %140
  %151 = load i8*, i8** @SPEED_1000, align 8
  %152 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %153 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  store i8* %151, i8** %154, align 8
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %163 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 8
  br label %203

165:                                              ; preds = %140
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %168 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %169 = or i32 %167, %168
  %170 = and i32 %166, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %165
  %173 = load i8*, i8** @SPEED_100, align 8
  %174 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %175 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  store i8* %173, i8** %176, align 8
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  %182 = xor i1 %181, true
  %183 = zext i1 %182 to i32
  %184 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %185 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 8
  br label %202

187:                                              ; preds = %165
  %188 = load i8*, i8** @SPEED_10, align 8
  %189 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %190 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 1
  store i8* %188, i8** %191, align 8
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  %196 = xor i1 %195, true
  %197 = xor i1 %196, true
  %198 = zext i1 %197 to i32
  %199 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %200 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  store i32 %198, i32* %201, align 8
  br label %202

202:                                              ; preds = %187, %172
  br label %203

203:                                              ; preds = %202, %150
  br label %249

204:                                              ; preds = %99
  %205 = load i32, i32* @AUTONEG_DISABLE, align 4
  %206 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %207 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 2
  store i32 %205, i32* %208, align 8
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* @BMCR_SPEED1000, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %204
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* @BMCR_SPEED100, align 4
  %216 = and i32 %214, %215
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = load i8*, i8** @SPEED_1000, align 8
  br label %231

220:                                              ; preds = %213, %204
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* @BMCR_SPEED100, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %220
  %226 = load i8*, i8** @SPEED_100, align 8
  br label %229

227:                                              ; preds = %220
  %228 = load i8*, i8** @SPEED_10, align 8
  br label %229

229:                                              ; preds = %227, %225
  %230 = phi i8* [ %226, %225 ], [ %228, %227 ]
  br label %231

231:                                              ; preds = %229, %218
  %232 = phi i8* [ %219, %218 ], [ %230, %229 ]
  %233 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %234 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 1
  store i8* %232, i8** %235, align 8
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* @BMCR_FULLDPLX, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %231
  %241 = load i32, i32* @DUPLEX_FULL, align 4
  br label %244

242:                                              ; preds = %231
  %243 = load i32, i32* @DUPLEX_HALF, align 4
  br label %244

244:                                              ; preds = %242, %240
  %245 = phi i32 [ %241, %240 ], [ %243, %242 ]
  %246 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %247 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 0
  store i32 %245, i32* %248, align 8
  store i32 0, i32* %13, align 4
  br label %249

249:                                              ; preds = %244, %203
  %250 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %251 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %255 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 8
  %256 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %257 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %11, align 4
  %261 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %259, i32 %260)
  %262 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %263 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %12, align 4
  %267 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %265, i32 %266)
  %268 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %269 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* %13, align 4
  %273 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %271, i32 %272)
  ret void
}

declare dso_local i32 @mii_get_an(%struct.mii_if_info*, i32) #1

declare dso_local i32 @mii_ctrl1000_to_ethtool_adv_t(i32) #1

declare dso_local i32 @mii_stat1000_to_ethtool_lpa_t(i32) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
