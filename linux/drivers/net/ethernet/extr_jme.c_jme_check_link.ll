; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_check_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_check_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.jme_adapter = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@JME_SPDRSV_TIMEOUT = common dso_local global i32 0, align 4
@JME_PHY_LINK = common dso_local global i32 0, align 4
@PHY_LINK_UP = common dso_local global i32 0, align 4
@PHY_LINK_AUTONEG_COMPLETE = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@PHY_LINK_DUPLEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Forced: \00", align 1
@PHY_LINK_SPEEDDPU_RESOLVED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Waiting speed resolve timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ANed: \00", align 1
@PHY_LINK_SPEED_MASK = common dso_local global i32 0, align 4
@GHC_SPEED_10M = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"10 Mbps, \00", align 1
@GHC_SPEED_100M = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"100 Mbps, \00", align 1
@GHC_SPEED_1000M = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"1000 Mbps, \00", align 1
@JME_TXMCS = common dso_local global i32 0, align 4
@TXMCS_DEFAULT = common dso_local global i32 0, align 4
@JME_TXTRHD = common dso_local global i32 0, align 4
@TXTRHD_FULLDUPLEX = common dso_local global i32 0, align 4
@GHC_DPX = common dso_local global i32 0, align 4
@TXMCS_BACKOFF = common dso_local global i32 0, align 4
@TXMCS_CARRIERSENSE = common dso_local global i32 0, align 4
@TXMCS_COLLISION = common dso_local global i32 0, align 4
@TXTRHD_HALFDUPLEX = common dso_local global i32 0, align 4
@JME_GHC = common dso_local global i32 0, align 4
@GPREG1_HALFMODEPATCH = common dso_local global i32 0, align 4
@GPREG1_RSSPATCH = common dso_local global i32 0, align 4
@JME_GPREG1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"Full-Duplex, \00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Half-Duplex, \00", align 1
@PHY_LINK_MDI_STAT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"MDI-X\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"MDI\00", align 1
@link = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"Link is up at %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Link is down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @jme_check_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_check_link(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jme_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.jme_adapter* %12, %struct.jme_adapter** %5, align 8
  %13 = load i32, i32* @JME_SPDRSV_TIMEOUT, align 4
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %14, align 16
  %15 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %21 = call i32 @jme_linkstat_from_phy(%struct.jme_adapter* %20)
  store i32 %21, i32* %6, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %24 = load i32, i32* @JME_PHY_LINK, align 4
  %25 = call i32 @jread32(%struct.jme_adapter* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PHY_LINK_UP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %285

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @PHY_LINK_AUTONEG_COMPLETE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %81, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @PHY_LINK_UP, align 4
  store i32 %37, i32* %6, align 4
  %38 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %39 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %42 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MII_BMCR, align 4
  %46 = call i32 @jme_mdio_read(i32 %40, i32 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @BMCR_SPEED1000, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %36
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @BMCR_SPEED100, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %64

57:                                               ; preds = %51, %36
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @BMCR_SPEED100, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 129, i32 128
  br label %64

64:                                               ; preds = %57, %56
  %65 = phi i32 [ 130, %56 ], [ %63, %57 ]
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @BMCR_FULLDPLX, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @PHY_LINK_DUPLEX, align 4
  br label %75

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 0, %74 ]
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %80 = call i32 @strcat(i8* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %115

81:                                               ; preds = %31
  br label %82

82:                                               ; preds = %106, %81
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @PHY_LINK_SPEEDDPU_RESOLVED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br label %91

91:                                               ; preds = %87, %82
  %92 = phi i1 [ false, %82 ], [ %90, %87 ]
  br i1 %92, label %93, label %107

93:                                               ; preds = %91
  %94 = call i32 @udelay(i32 1)
  %95 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %96 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %101 = call i32 @jme_linkstat_from_phy(%struct.jme_adapter* %100)
  store i32 %101, i32* %6, align 4
  br label %106

102:                                              ; preds = %93
  %103 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %104 = load i32, i32* @JME_PHY_LINK, align 4
  %105 = call i32 @jread32(%struct.jme_adapter* %103, i32 %104)
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %102, %99
  br label %82

107:                                              ; preds = %91
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %107
  %113 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %114 = call i32 @strcat(i8* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %75
  %116 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %117 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store i32 1, i32* %10, align 4
  br label %301

122:                                              ; preds = %115
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %301

126:                                              ; preds = %122
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %129 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @PHY_LINK_SPEED_MASK, align 4
  %132 = and i32 %130, %131
  switch i32 %132, label %157 [
    i32 128, label %133
    i32 129, label %141
    i32 130, label %149
  ]

133:                                              ; preds = %126
  %134 = load i32, i32* @GHC_SPEED_10M, align 4
  %135 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %136 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %140 = call i32 @strcat(i8* %139, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %158

141:                                              ; preds = %126
  %142 = load i32, i32* @GHC_SPEED_100M, align 4
  %143 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %144 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %148 = call i32 @strcat(i8* %147, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %158

149:                                              ; preds = %126
  %150 = load i32, i32* @GHC_SPEED_1000M, align 4
  %151 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %152 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %156 = call i32 @strcat(i8* %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %158

157:                                              ; preds = %126
  br label %158

158:                                              ; preds = %157, %149, %141, %133
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @PHY_LINK_DUPLEX, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %158
  %164 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %165 = load i32, i32* @JME_TXMCS, align 4
  %166 = load i32, i32* @TXMCS_DEFAULT, align 4
  %167 = call i32 @jwrite32(%struct.jme_adapter* %164, i32 %165, i32 %166)
  %168 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %169 = load i32, i32* @JME_TXTRHD, align 4
  %170 = load i32, i32* @TXTRHD_FULLDUPLEX, align 4
  %171 = call i32 @jwrite32(%struct.jme_adapter* %168, i32 %169, i32 %170)
  %172 = load i32, i32* @GHC_DPX, align 4
  %173 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %174 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 4
  br label %192

177:                                              ; preds = %158
  %178 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %179 = load i32, i32* @JME_TXMCS, align 4
  %180 = load i32, i32* @TXMCS_DEFAULT, align 4
  %181 = load i32, i32* @TXMCS_BACKOFF, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @TXMCS_CARRIERSENSE, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @TXMCS_COLLISION, align 4
  %186 = or i32 %184, %185
  %187 = call i32 @jwrite32(%struct.jme_adapter* %178, i32 %179, i32 %186)
  %188 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %189 = load i32, i32* @JME_TXTRHD, align 4
  %190 = load i32, i32* @TXTRHD_HALFDUPLEX, align 4
  %191 = call i32 @jwrite32(%struct.jme_adapter* %188, i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %177, %163
  %193 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %194 = load i32, i32* @JME_GHC, align 4
  %195 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %196 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @jwrite32(%struct.jme_adapter* %193, i32 %194, i32 %197)
  %199 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %200 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %199, i32 0, i32 5
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %205 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = call i64 @is_buggy250(i32 %203, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %253

209:                                              ; preds = %192
  %210 = load i32, i32* @GPREG1_HALFMODEPATCH, align 4
  %211 = load i32, i32* @GPREG1_RSSPATCH, align 4
  %212 = or i32 %210, %211
  %213 = xor i32 %212, -1
  %214 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %215 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = and i32 %216, %213
  store i32 %217, i32* %215, align 8
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* @PHY_LINK_DUPLEX, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %209
  %223 = load i32, i32* @GPREG1_HALFMODEPATCH, align 4
  %224 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %225 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 8
  br label %228

228:                                              ; preds = %222, %209
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* @PHY_LINK_SPEED_MASK, align 4
  %231 = and i32 %229, %230
  switch i32 %231, label %251 [
    i32 128, label %232
    i32 129, label %240
    i32 130, label %248
  ]

232:                                              ; preds = %228
  %233 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %234 = call i32 @jme_set_phyfifo_8level(%struct.jme_adapter* %233)
  %235 = load i32, i32* @GPREG1_RSSPATCH, align 4
  %236 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %237 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 8
  br label %252

240:                                              ; preds = %228
  %241 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %242 = call i32 @jme_set_phyfifo_5level(%struct.jme_adapter* %241)
  %243 = load i32, i32* @GPREG1_RSSPATCH, align 4
  %244 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %245 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 8
  br label %252

248:                                              ; preds = %228
  %249 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %250 = call i32 @jme_set_phyfifo_8level(%struct.jme_adapter* %249)
  br label %252

251:                                              ; preds = %228
  br label %252

252:                                              ; preds = %251, %248, %240, %232
  br label %253

253:                                              ; preds = %252, %192
  %254 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %255 = load i32, i32* @JME_GPREG1, align 4
  %256 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %257 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @jwrite32(%struct.jme_adapter* %254, i32 %255, i32 %258)
  %260 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %261 = load i32, i32* %6, align 4
  %262 = load i32, i32* @PHY_LINK_DUPLEX, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  %265 = zext i1 %264 to i64
  %266 = select i1 %264, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)
  %267 = call i32 @strcat(i8* %260, i8* %266)
  %268 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %269 = load i32, i32* %6, align 4
  %270 = load i32, i32* @PHY_LINK_MDI_STAT, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  %273 = zext i1 %272 to i64
  %274 = select i1 %272, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  %275 = call i32 @strcat(i8* %268, i8* %274)
  %276 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %277 = load i32, i32* @link, align 4
  %278 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %279 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %282 = call i32 (%struct.jme_adapter*, i32, i32, i8*, ...) @netif_info(%struct.jme_adapter* %276, i32 %277, i32 %280, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* %281)
  %283 = load %struct.net_device*, %struct.net_device** %3, align 8
  %284 = call i32 @netif_carrier_on(%struct.net_device* %283)
  br label %300

285:                                              ; preds = %26
  %286 = load i32, i32* %4, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %285
  br label %301

289:                                              ; preds = %285
  %290 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %291 = load i32, i32* @link, align 4
  %292 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %293 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = call i32 (%struct.jme_adapter*, i32, i32, i8*, ...) @netif_info(%struct.jme_adapter* %290, i32 %291, i32 %294, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %296 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %297 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %296, i32 0, i32 0
  store i32 0, i32* %297, align 8
  %298 = load %struct.net_device*, %struct.net_device** %3, align 8
  %299 = call i32 @netif_carrier_off(%struct.net_device* %298)
  br label %300

300:                                              ; preds = %289, %253
  br label %301

301:                                              ; preds = %300, %288, %125, %121
  %302 = load i32, i32* %10, align 4
  ret i32 %302
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @jme_linkstat_from_phy(%struct.jme_adapter*) #1

declare dso_local i32 @jread32(%struct.jme_adapter*, i32) #1

declare dso_local i32 @jme_mdio_read(i32, i32, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

declare dso_local i64 @is_buggy250(i32, i32) #1

declare dso_local i32 @jme_set_phyfifo_8level(%struct.jme_adapter*) #1

declare dso_local i32 @jme_set_phyfifo_5level(%struct.jme_adapter*) #1

declare dso_local i32 @netif_info(%struct.jme_adapter*, i32, i32, i8*, ...) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
