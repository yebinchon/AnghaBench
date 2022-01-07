; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_swphy_poll_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_swphy_poll_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_enet_priv = type { i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__*, %struct.bcm63xx_enetsw_port* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.bcm63xx_enetsw_port = type { i32, i32, i64, i32 }
%struct.timer_list = type { i32 }

@swphy_poll = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"link DOWN on %s\0A\00", align 1
@ENETSW_PORTOV_ENABLE_MASK = common dso_local global i32 0, align 4
@ENETSW_PTCTRL_RXDIS_MASK = common dso_local global i32 0, align 4
@ENETSW_PTCTRL_TXDIS_MASK = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@ADVERTISE_FULL = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@BMSR_ESTATEN = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@MII_STAT1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@ADVERTISE_1000HALF = common dso_local global i32 0, align 4
@LPA_1000FULL = common dso_local global i32 0, align 4
@LPA_1000HALF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"link UP on %s, %dMbps, %s-duplex\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@ENETSW_PORTOV_LINKUP_MASK = common dso_local global i32 0, align 4
@ENETSW_IMPOV_1000_MASK = common dso_local global i32 0, align 4
@ENETSW_IMPOV_100_MASK = common dso_local global i32 0, align 4
@ENETSW_IMPOV_FDX_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@priv = common dso_local global %struct.bcm_enet_priv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @swphy_poll_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swphy_poll_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.bcm_enet_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm63xx_enetsw_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %16 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %17 = ptrtoint %struct.bcm_enet_priv* %16 to i32
  %18 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %19 = load i32, i32* @swphy_poll, align 4
  %20 = call %struct.bcm_enet_priv* @from_timer(i32 %17, %struct.timer_list* %18, i32 %19)
  store %struct.bcm_enet_priv* %20, %struct.bcm_enet_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %234, %1
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %24 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %237

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @bcm_enet_port_is_rgmii(i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %31 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %30, i32 0, i32 4
  %32 = load %struct.bcm63xx_enetsw_port*, %struct.bcm63xx_enetsw_port** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.bcm63xx_enetsw_port, %struct.bcm63xx_enetsw_port* %32, i64 %34
  store %struct.bcm63xx_enetsw_port* %35, %struct.bcm63xx_enetsw_port** %5, align 8
  %36 = load %struct.bcm63xx_enetsw_port*, %struct.bcm63xx_enetsw_port** %5, align 8
  %37 = getelementptr inbounds %struct.bcm63xx_enetsw_port, %struct.bcm63xx_enetsw_port* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %27
  br label %234

41:                                               ; preds = %27
  %42 = load %struct.bcm63xx_enetsw_port*, %struct.bcm63xx_enetsw_port** %5, align 8
  %43 = getelementptr inbounds %struct.bcm63xx_enetsw_port, %struct.bcm63xx_enetsw_port* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %234

47:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %59, %47
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.bcm63xx_enetsw_port*, %struct.bcm63xx_enetsw_port** %5, align 8
  %55 = getelementptr inbounds %struct.bcm63xx_enetsw_port, %struct.bcm63xx_enetsw_port* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MII_BMSR, align 4
  %58 = call i32 @bcmenet_sw_mdio_read(%struct.bcm_enet_priv* %52, i32 %53, i32 %56, i32 %57)
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %48

62:                                               ; preds = %48
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 65535
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %234

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @BMSR_LSTATUS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 1, i32 0
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %75 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = xor i32 %73, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %66
  br label %234

84:                                               ; preds = %66
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %87 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %115, label %94

94:                                               ; preds = %84
  %95 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %96 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %95, i32 0, i32 3
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load %struct.bcm63xx_enetsw_port*, %struct.bcm63xx_enetsw_port** %5, align 8
  %100 = getelementptr inbounds %struct.bcm63xx_enetsw_port, %struct.bcm63xx_enetsw_port* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %104 = load i32, i32* @ENETSW_PORTOV_ENABLE_MASK, align 4
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @ENETSW_PORTOV_REG(i32 %105)
  %107 = call i32 @enetsw_writeb(%struct.bcm_enet_priv* %103, i32 %104, i32 %106)
  %108 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %109 = load i32, i32* @ENETSW_PTCTRL_RXDIS_MASK, align 4
  %110 = load i32, i32* @ENETSW_PTCTRL_TXDIS_MASK, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @ENETSW_PTCTRL_REG(i32 %112)
  %114 = call i32 @enetsw_writeb(%struct.bcm_enet_priv* %108, i32 %111, i32 %113)
  br label %234

115:                                              ; preds = %84
  %116 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %117 = load i32, i32* %14, align 4
  %118 = load %struct.bcm63xx_enetsw_port*, %struct.bcm63xx_enetsw_port** %5, align 8
  %119 = getelementptr inbounds %struct.bcm63xx_enetsw_port, %struct.bcm63xx_enetsw_port* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @MII_ADVERTISE, align 4
  %122 = call i32 @bcmenet_sw_mdio_read(%struct.bcm_enet_priv* %116, i32 %117, i32 %120, i32 %121)
  store i32 %122, i32* %9, align 4
  %123 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.bcm63xx_enetsw_port*, %struct.bcm63xx_enetsw_port** %5, align 8
  %126 = getelementptr inbounds %struct.bcm63xx_enetsw_port, %struct.bcm63xx_enetsw_port* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @MII_LPA, align 4
  %129 = call i32 @bcmenet_sw_mdio_read(%struct.bcm_enet_priv* %123, i32 %124, i32 %127, i32 %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %9, align 4
  %132 = and i32 %130, %131
  %133 = call i32 @mii_nway_result(i32 %132)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @ADVERTISE_FULL, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 1, i32 0
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* @ADVERTISE_100FULL, align 4
  %142 = load i32, i32* @ADVERTISE_100HALF, align 4
  %143 = or i32 %141, %142
  %144 = and i32 %140, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %115
  store i32 100, i32* %11, align 4
  br label %148

147:                                              ; preds = %115
  store i32 10, i32* %11, align 4
  br label %148

148:                                              ; preds = %147, %146
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @BMSR_ESTATEN, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %186

153:                                              ; preds = %148
  %154 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %155 = load i32, i32* %14, align 4
  %156 = load %struct.bcm63xx_enetsw_port*, %struct.bcm63xx_enetsw_port** %5, align 8
  %157 = getelementptr inbounds %struct.bcm63xx_enetsw_port, %struct.bcm63xx_enetsw_port* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @MII_CTRL1000, align 4
  %160 = call i32 @bcmenet_sw_mdio_read(%struct.bcm_enet_priv* %154, i32 %155, i32 %158, i32 %159)
  store i32 %160, i32* %9, align 4
  %161 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %162 = load i32, i32* %14, align 4
  %163 = load %struct.bcm63xx_enetsw_port*, %struct.bcm63xx_enetsw_port** %5, align 8
  %164 = getelementptr inbounds %struct.bcm63xx_enetsw_port, %struct.bcm63xx_enetsw_port* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @MII_STAT1000, align 4
  %167 = call i32 @bcmenet_sw_mdio_read(%struct.bcm_enet_priv* %161, i32 %162, i32 %165, i32 %166)
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %170 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %171 = or i32 %169, %170
  %172 = and i32 %168, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %153
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @LPA_1000FULL, align 4
  %177 = load i32, i32* @LPA_1000HALF, align 4
  %178 = or i32 %176, %177
  %179 = and i32 %175, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %174
  store i32 1000, i32* %11, align 4
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @LPA_1000FULL, align 4
  %184 = and i32 %182, %183
  store i32 %184, i32* %12, align 4
  br label %185

185:                                              ; preds = %181, %174, %153
  br label %186

186:                                              ; preds = %185, %148
  %187 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %188 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %187, i32 0, i32 3
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load %struct.bcm63xx_enetsw_port*, %struct.bcm63xx_enetsw_port** %5, align 8
  %192 = getelementptr inbounds %struct.bcm63xx_enetsw_port, %struct.bcm63xx_enetsw_port* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* %12, align 4
  %196 = icmp ne i32 %195, 0
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %199 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %190, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %193, i32 %194, i8* %198)
  %200 = load i32, i32* @ENETSW_PORTOV_ENABLE_MASK, align 4
  %201 = load i32, i32* @ENETSW_PORTOV_LINKUP_MASK, align 4
  %202 = or i32 %200, %201
  store i32 %202, i32* %15, align 4
  %203 = load i32, i32* %11, align 4
  %204 = icmp eq i32 %203, 1000
  br i1 %204, label %205, label %209

205:                                              ; preds = %186
  %206 = load i32, i32* @ENETSW_IMPOV_1000_MASK, align 4
  %207 = load i32, i32* %15, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %15, align 4
  br label %217

209:                                              ; preds = %186
  %210 = load i32, i32* %11, align 4
  %211 = icmp eq i32 %210, 100
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  %213 = load i32, i32* @ENETSW_IMPOV_100_MASK, align 4
  %214 = load i32, i32* %15, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %15, align 4
  br label %216

216:                                              ; preds = %212, %209
  br label %217

217:                                              ; preds = %216, %205
  %218 = load i32, i32* %12, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  %221 = load i32, i32* @ENETSW_IMPOV_FDX_MASK, align 4
  %222 = load i32, i32* %15, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %15, align 4
  br label %224

224:                                              ; preds = %220, %217
  %225 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %226 = load i32, i32* %15, align 4
  %227 = load i32, i32* %4, align 4
  %228 = call i32 @ENETSW_PORTOV_REG(i32 %227)
  %229 = call i32 @enetsw_writeb(%struct.bcm_enet_priv* %225, i32 %226, i32 %228)
  %230 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %231 = load i32, i32* %4, align 4
  %232 = call i32 @ENETSW_PTCTRL_REG(i32 %231)
  %233 = call i32 @enetsw_writeb(%struct.bcm_enet_priv* %230, i32 0, i32 %232)
  br label %234

234:                                              ; preds = %224, %94, %83, %65, %46, %40
  %235 = load i32, i32* %4, align 4
  %236 = add i32 %235, 1
  store i32 %236, i32* %4, align 4
  br label %21

237:                                              ; preds = %21
  %238 = load i64, i64* @jiffies, align 8
  %239 = load i64, i64* @HZ, align 8
  %240 = add nsw i64 %238, %239
  %241 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %242 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  store i64 %240, i64* %243, align 8
  %244 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %245 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %244, i32 0, i32 2
  %246 = call i32 @add_timer(%struct.TYPE_4__* %245)
  ret void
}

declare dso_local %struct.bcm_enet_priv* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @bcm_enet_port_is_rgmii(i32) #1

declare dso_local i32 @bcmenet_sw_mdio_read(%struct.bcm_enet_priv*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @enetsw_writeb(%struct.bcm_enet_priv*, i32, i32) #1

declare dso_local i32 @ENETSW_PORTOV_REG(i32) #1

declare dso_local i32 @ENETSW_PTCTRL_REG(i32) #1

declare dso_local i32 @mii_nway_result(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
