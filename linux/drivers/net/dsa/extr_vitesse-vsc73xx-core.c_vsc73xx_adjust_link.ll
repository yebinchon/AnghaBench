; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.vsc73xx* }
%struct.vsc73xx = type { i32 }
%struct.phy_device = type { i64, i64, i64, i32 }

@CPU_PORT = common dso_local global i32 0, align 4
@VSC73XX_BLOCK_MAC = common dso_local global i32 0, align 4
@VSC73XX_ADVPORTM = common dso_local global i32 0, align 4
@VSC73XX_ADVPORTM_EXT_PORT = common dso_local global i32 0, align 4
@VSC73XX_ADVPORTM_ENA_GTX = common dso_local global i32 0, align 4
@VSC73XX_ADVPORTM_DDR_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"port %d: went down\0A\00", align 1
@VSC73XX_MAC_CFG = common dso_local global i32 0, align 4
@VSC73XX_MAC_CFG_RX_EN = common dso_local global i32 0, align 4
@VSC73XX_BLOCK_ARBITER = common dso_local global i32 0, align 4
@VSC73XX_ARBDISC = common dso_local global i32 0, align 4
@VSC73XX_ARBEMPTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"timeout waiting for block arbiter\0A\00", align 1
@VSC73XX_MAC_CFG_RESET = common dso_local global i32 0, align 4
@VSC73XX_SBACKWDROP = common dso_local global i32 0, align 4
@VSC73XX_BLOCK_ANALYZER = common dso_local global i32 0, align 4
@VSC73XX_RECVMASK = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"port %d: 1000 Mbit mode full duplex\0A\00", align 1
@PHY_INTERFACE_MODE_RGMII = common dso_local global i64 0, align 8
@VSC73XX_MAC_CFG_1000M_F_RGMII = common dso_local global i32 0, align 4
@VSC73XX_MAC_CFG_1000M_F_PHY = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@VSC73XX_MAC_CFG_100_10M_F_PHY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"port %d: 100 Mbit full duplex mode\0A\00", align 1
@VSC73XX_MAC_CFG_100_10M_H_PHY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"port %d: 100 Mbit half duplex mode\0A\00", align 1
@SPEED_10 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"port %d: 10 Mbit full duplex mode\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"port %d: 10 Mbit half duplex mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"could not adjust link: unknown speed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, %struct.phy_device*)* @vsc73xx_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsc73xx_adjust_link(%struct.dsa_switch* %0, i32 %1, %struct.phy_device* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca %struct.vsc73xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.phy_device* %2, %struct.phy_device** %6, align 8
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %11 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %10, i32 0, i32 0
  %12 = load %struct.vsc73xx*, %struct.vsc73xx** %11, align 8
  store %struct.vsc73xx* %12, %struct.vsc73xx** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @CPU_PORT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %18 = load i32, i32* @CPU_PORT, align 4
  %19 = call i32 @vsc73xx_init_port(%struct.vsc73xx* %17, i32 %18)
  %20 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %21 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %22 = load i32, i32* @CPU_PORT, align 4
  %23 = load i32, i32* @VSC73XX_ADVPORTM, align 4
  %24 = load i32, i32* @VSC73XX_ADVPORTM_EXT_PORT, align 4
  %25 = load i32, i32* @VSC73XX_ADVPORTM_ENA_GTX, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @VSC73XX_ADVPORTM_DDR_MODE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @vsc73xx_write(%struct.vsc73xx* %20, i32 %21, i32 %22, i32 %23, i32 %28)
  br label %30

30:                                               ; preds = %16, %3
  %31 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %32 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %108, label %35

35:                                               ; preds = %30
  store i32 10, i32* %9, align 4
  %36 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %37 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %42 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @VSC73XX_MAC_CFG, align 4
  %45 = load i32, i32* @VSC73XX_MAC_CFG_RX_EN, align 4
  %46 = call i32 @vsc73xx_update_bits(%struct.vsc73xx* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 0)
  %47 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %48 = load i32, i32* @VSC73XX_BLOCK_ARBITER, align 4
  %49 = load i32, i32* @VSC73XX_ARBDISC, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @BIT(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = call i32 @vsc73xx_update_bits(%struct.vsc73xx* %47, i32 %48, i32 0, i32 %49, i32 %51, i32 %53)
  %55 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %56 = load i32, i32* @VSC73XX_BLOCK_ARBITER, align 4
  %57 = load i32, i32* @VSC73XX_ARBEMPTY, align 4
  %58 = call i32 @vsc73xx_read(%struct.vsc73xx* %55, i32 %56, i32 0, i32 %57, i32* %8)
  br label %59

59:                                               ; preds = %80, %35
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @BIT(i32 %61)
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br i1 %65, label %66, label %81

66:                                               ; preds = %59
  %67 = call i32 @msleep(i32 1)
  %68 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %69 = load i32, i32* @VSC73XX_BLOCK_ARBITER, align 4
  %70 = load i32, i32* @VSC73XX_ARBEMPTY, align 4
  %71 = call i32 @vsc73xx_read(%struct.vsc73xx* %68, i32 %69, i32 0, i32 %70, i32* %8)
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %9, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %77 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %81

80:                                               ; preds = %66
  br label %59

81:                                               ; preds = %75, %59
  %82 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %83 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @VSC73XX_MAC_CFG, align 4
  %86 = load i32, i32* @VSC73XX_MAC_CFG_RESET, align 4
  %87 = call i32 @vsc73xx_write(%struct.vsc73xx* %82, i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %89 = load i32, i32* @VSC73XX_BLOCK_ARBITER, align 4
  %90 = load i32, i32* @VSC73XX_ARBDISC, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @BIT(i32 %91)
  %93 = call i32 @vsc73xx_update_bits(%struct.vsc73xx* %88, i32 %89, i32 0, i32 %90, i32 %92, i32 0)
  %94 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %95 = load i32, i32* @VSC73XX_BLOCK_ARBITER, align 4
  %96 = load i32, i32* @VSC73XX_SBACKWDROP, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @BIT(i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @BIT(i32 %99)
  %101 = call i32 @vsc73xx_update_bits(%struct.vsc73xx* %94, i32 %95, i32 0, i32 %96, i32 %98, i32 %100)
  %102 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %103 = load i32, i32* @VSC73XX_BLOCK_ANALYZER, align 4
  %104 = load i32, i32* @VSC73XX_RECVMASK, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @BIT(i32 %105)
  %107 = call i32 @vsc73xx_update_bits(%struct.vsc73xx* %102, i32 %103, i32 0, i32 %104, i32 %106, i32 0)
  br label %215

108:                                              ; preds = %30
  %109 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %110 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @SPEED_1000, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %135

114:                                              ; preds = %108
  %115 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %116 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @dev_dbg(i32 %117, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %121 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @PHY_INTERFACE_MODE_RGMII, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %114
  %126 = load i32, i32* @VSC73XX_MAC_CFG_1000M_F_RGMII, align 4
  store i32 %126, i32* %8, align 4
  br label %129

127:                                              ; preds = %114
  %128 = load i32, i32* @VSC73XX_MAC_CFG_1000M_F_PHY, align 4
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @vsc73xx_adjust_enable_port(%struct.vsc73xx* %130, i32 %131, %struct.phy_device* %132, i32 %133)
  br label %206

135:                                              ; preds = %108
  %136 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %137 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @SPEED_100, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %167

141:                                              ; preds = %135
  %142 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %143 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @DUPLEX_FULL, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %141
  %148 = load i32, i32* @VSC73XX_MAC_CFG_100_10M_F_PHY, align 4
  store i32 %148, i32* %8, align 4
  %149 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %150 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @dev_dbg(i32 %151, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %152)
  br label %161

154:                                              ; preds = %141
  %155 = load i32, i32* @VSC73XX_MAC_CFG_100_10M_H_PHY, align 4
  store i32 %155, i32* %8, align 4
  %156 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %157 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @dev_dbg(i32 %158, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %154, %147
  %162 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %163 = load i32, i32* %5, align 4
  %164 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @vsc73xx_adjust_enable_port(%struct.vsc73xx* %162, i32 %163, %struct.phy_device* %164, i32 %165)
  br label %205

167:                                              ; preds = %135
  %168 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %169 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @SPEED_10, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %199

173:                                              ; preds = %167
  %174 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %175 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @DUPLEX_FULL, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %173
  %180 = load i32, i32* @VSC73XX_MAC_CFG_100_10M_F_PHY, align 4
  store i32 %180, i32* %8, align 4
  %181 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %182 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @dev_dbg(i32 %183, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %184)
  br label %193

186:                                              ; preds = %173
  %187 = load i32, i32* @VSC73XX_MAC_CFG_100_10M_H_PHY, align 4
  store i32 %187, i32* %8, align 4
  %188 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %189 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %5, align 4
  %192 = call i32 @dev_dbg(i32 %190, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %191)
  br label %193

193:                                              ; preds = %186, %179
  %194 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %195 = load i32, i32* %5, align 4
  %196 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %197 = load i32, i32* %8, align 4
  %198 = call i32 @vsc73xx_adjust_enable_port(%struct.vsc73xx* %194, i32 %195, %struct.phy_device* %196, i32 %197)
  br label %204

199:                                              ; preds = %167
  %200 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %201 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @dev_err(i32 %202, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %204

204:                                              ; preds = %199, %193
  br label %205

205:                                              ; preds = %204, %161
  br label %206

206:                                              ; preds = %205, %129
  %207 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %208 = load i32, i32* @VSC73XX_BLOCK_ANALYZER, align 4
  %209 = load i32, i32* @VSC73XX_RECVMASK, align 4
  %210 = load i32, i32* %5, align 4
  %211 = call i32 @BIT(i32 %210)
  %212 = load i32, i32* %5, align 4
  %213 = call i32 @BIT(i32 %212)
  %214 = call i32 @vsc73xx_update_bits(%struct.vsc73xx* %207, i32 %208, i32 0, i32 %209, i32 %211, i32 %213)
  br label %215

215:                                              ; preds = %206, %81
  ret void
}

declare dso_local i32 @vsc73xx_init_port(%struct.vsc73xx*, i32) #1

declare dso_local i32 @vsc73xx_write(%struct.vsc73xx*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @vsc73xx_update_bits(%struct.vsc73xx*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @vsc73xx_read(%struct.vsc73xx*, i32, i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @vsc73xx_adjust_enable_port(%struct.vsc73xx*, i32, %struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
