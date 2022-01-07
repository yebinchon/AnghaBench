; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_can.c_rcar_can_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_can.c_rcar_can_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i64, i32 }
%struct.rcar_can_priv = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.can_frame = type { i32, i32*, i64 }
%struct.sk_buff = type { i32 }

@RCAR_CAN_EIFR_EWIF = common dso_local global i32 0, align 4
@RCAR_CAN_EIFR_EPIF = common dso_local global i32 0, align 4
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@RCAR_CAN_EIFR_BEIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Bus error interrupt:\0A\00", align 1
@CAN_ERR_BUSERROR = common dso_local global i32 0, align 4
@CAN_ERR_PROT = common dso_local global i32 0, align 4
@RCAR_CAN_ECSR_ADEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ACK Delimiter Error\0A\00", align 1
@CAN_ERR_PROT_LOC_ACK_DEL = common dso_local global i32 0, align 4
@RCAR_CAN_ECSR_BE0F = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Bit Error (dominant)\0A\00", align 1
@CAN_ERR_PROT_BIT0 = common dso_local global i32 0, align 4
@RCAR_CAN_ECSR_BE1F = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Bit Error (recessive)\0A\00", align 1
@CAN_ERR_PROT_BIT1 = common dso_local global i32 0, align 4
@RCAR_CAN_ECSR_CEF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"CRC Error\0A\00", align 1
@CAN_ERR_PROT_LOC_CRC_SEQ = common dso_local global i32 0, align 4
@RCAR_CAN_ECSR_AEF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"ACK Error\0A\00", align 1
@CAN_ERR_ACK = common dso_local global i32 0, align 4
@CAN_ERR_PROT_LOC_ACK = common dso_local global i32 0, align 4
@RCAR_CAN_ECSR_FEF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"Form Error\0A\00", align 1
@CAN_ERR_PROT_FORM = common dso_local global i32 0, align 4
@RCAR_CAN_ECSR_SEF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"Stuff Error\0A\00", align 1
@CAN_ERR_PROT_STUFF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"Error warning interrupt\0A\00", align 1
@CAN_STATE_ERROR_WARNING = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_WARNING = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_WARNING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"Error passive interrupt\0A\00", align 1
@CAN_STATE_ERROR_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_PASSIVE = common dso_local global i32 0, align 4
@RCAR_CAN_EIFR_BOEIF = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"Bus-off entry interrupt\0A\00", align 1
@RCAR_CAN_IER_ERSIE = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@CAN_ERR_BUSOFF = common dso_local global i32 0, align 4
@RCAR_CAN_EIFR_ORIF = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"Receive overrun error interrupt\0A\00", align 1
@CAN_ERR_CRTL_RX_OVERFLOW = common dso_local global i32 0, align 4
@RCAR_CAN_EIFR_OLIF = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [45 x i8] c"Overload Frame Transmission error interrupt\0A\00", align 1
@CAN_ERR_PROT_OVERLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rcar_can_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_can_error(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rcar_can_priv*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call %struct.rcar_can_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.rcar_can_priv* %14, %struct.rcar_can_priv** %3, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  store %struct.net_device_stats* %16, %struct.net_device_stats** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %17, %struct.can_frame** %5)
  store %struct.sk_buff* %18, %struct.sk_buff** %6, align 8
  %19 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %20 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = call i32 @readb(i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @RCAR_CAN_EIFR_EWIF, align 4
  %26 = load i32, i32* @RCAR_CAN_EIFR_EPIF, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %1
  %31 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %32 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 4
  %35 = call i32 @readb(i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %37 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = call i32 @readb(i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %43, label %59

43:                                               ; preds = %30
  %44 = load i32, i32* @CAN_ERR_CRTL, align 4
  %45 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %46 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %51 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 6
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %56 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 7
  store i32 %54, i32* %58, align 4
  br label %59

59:                                               ; preds = %43, %30
  br label %60

60:                                               ; preds = %59, %1
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @RCAR_CAN_EIFR_BEIF, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %321

65:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %66 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %67 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @netdev_dbg(i32 %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = icmp ne %struct.sk_buff* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %74 = load i32, i32* @CAN_ERR_PROT, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %77 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %72, %65
  %81 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %82 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = call i32 @readb(i32* %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @RCAR_CAN_ECSR_ADEF, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %113

90:                                               ; preds = %80
  %91 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %92 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @netdev_dbg(i32 %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* @RCAR_CAN_ECSR_ADEF, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %100 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = call i32 @writeb(i32 %98, i32* %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = icmp ne %struct.sk_buff* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %90
  %107 = load i32, i32* @CAN_ERR_PROT_LOC_ACK_DEL, align 4
  %108 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %109 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  store i32 %107, i32* %111, align 4
  br label %112

112:                                              ; preds = %106, %90
  br label %113

113:                                              ; preds = %112, %80
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @RCAR_CAN_ECSR_BE0F, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %143

118:                                              ; preds = %113
  %119 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %120 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @netdev_dbg(i32 %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* @RCAR_CAN_ECSR_BE0F, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %128 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %127, i32 0, i32 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = call i32 @writeb(i32 %126, i32* %130)
  %132 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %133 = icmp ne %struct.sk_buff* %132, null
  br i1 %133, label %134, label %142

134:                                              ; preds = %118
  %135 = load i32, i32* @CAN_ERR_PROT_BIT0, align 4
  %136 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %137 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %135
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %134, %118
  br label %143

143:                                              ; preds = %142, %113
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* @RCAR_CAN_ECSR_BE1F, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %173

148:                                              ; preds = %143
  %149 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %150 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @netdev_dbg(i32 %151, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* @RCAR_CAN_ECSR_BE1F, align 4
  %156 = xor i32 %155, -1
  %157 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %158 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %157, i32 0, i32 1
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = call i32 @writeb(i32 %156, i32* %160)
  %162 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %163 = icmp ne %struct.sk_buff* %162, null
  br i1 %163, label %164, label %172

164:                                              ; preds = %148
  %165 = load i32, i32* @CAN_ERR_PROT_BIT1, align 4
  %166 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %167 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 2
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %165
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %164, %148
  br label %173

173:                                              ; preds = %172, %143
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* @RCAR_CAN_ECSR_CEF, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %201

178:                                              ; preds = %173
  %179 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %180 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @netdev_dbg(i32 %181, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* @RCAR_CAN_ECSR_CEF, align 4
  %186 = xor i32 %185, -1
  %187 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %188 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %187, i32 0, i32 1
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  %191 = call i32 @writeb(i32 %186, i32* %190)
  %192 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %193 = icmp ne %struct.sk_buff* %192, null
  br i1 %193, label %194, label %200

194:                                              ; preds = %178
  %195 = load i32, i32* @CAN_ERR_PROT_LOC_CRC_SEQ, align 4
  %196 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %197 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 3
  store i32 %195, i32* %199, align 4
  br label %200

200:                                              ; preds = %194, %178
  br label %201

201:                                              ; preds = %200, %173
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* @RCAR_CAN_ECSR_AEF, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %234

206:                                              ; preds = %201
  %207 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %208 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @netdev_dbg(i32 %209, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %211 = load i32, i32* %11, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %11, align 4
  %213 = load i32, i32* @RCAR_CAN_ECSR_AEF, align 4
  %214 = xor i32 %213, -1
  %215 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %216 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %215, i32 0, i32 1
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 2
  %219 = call i32 @writeb(i32 %214, i32* %218)
  %220 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %221 = icmp ne %struct.sk_buff* %220, null
  br i1 %221, label %222, label %233

222:                                              ; preds = %206
  %223 = load i32, i32* @CAN_ERR_ACK, align 4
  %224 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %225 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 8
  %228 = load i32, i32* @CAN_ERR_PROT_LOC_ACK, align 4
  %229 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %230 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 3
  store i32 %228, i32* %232, align 4
  br label %233

233:                                              ; preds = %222, %206
  br label %234

234:                                              ; preds = %233, %201
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* @RCAR_CAN_ECSR_FEF, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %264

239:                                              ; preds = %234
  %240 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %241 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @netdev_dbg(i32 %242, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %244 = load i32, i32* %10, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %10, align 4
  %246 = load i32, i32* @RCAR_CAN_ECSR_FEF, align 4
  %247 = xor i32 %246, -1
  %248 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %249 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %248, i32 0, i32 1
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 2
  %252 = call i32 @writeb(i32 %247, i32* %251)
  %253 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %254 = icmp ne %struct.sk_buff* %253, null
  br i1 %254, label %255, label %263

255:                                              ; preds = %239
  %256 = load i32, i32* @CAN_ERR_PROT_FORM, align 4
  %257 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %258 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %257, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 2
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %256
  store i32 %262, i32* %260, align 4
  br label %263

263:                                              ; preds = %255, %239
  br label %264

264:                                              ; preds = %263, %234
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* @RCAR_CAN_ECSR_SEF, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %294

269:                                              ; preds = %264
  %270 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %271 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @netdev_dbg(i32 %272, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %274 = load i32, i32* %10, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %10, align 4
  %276 = load i32, i32* @RCAR_CAN_ECSR_SEF, align 4
  %277 = xor i32 %276, -1
  %278 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %279 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %278, i32 0, i32 1
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 2
  %282 = call i32 @writeb(i32 %277, i32* %281)
  %283 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %284 = icmp ne %struct.sk_buff* %283, null
  br i1 %284, label %285, label %293

285:                                              ; preds = %269
  %286 = load i32, i32* @CAN_ERR_PROT_STUFF, align 4
  %287 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %288 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 2
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %286
  store i32 %292, i32* %290, align 4
  br label %293

293:                                              ; preds = %285, %269
  br label %294

294:                                              ; preds = %293, %264
  %295 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %296 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %295, i32 0, i32 3
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %298, align 4
  %301 = load i32, i32* %10, align 4
  %302 = sext i32 %301 to i64
  %303 = load %struct.net_device*, %struct.net_device** %2, align 8
  %304 = getelementptr inbounds %struct.net_device, %struct.net_device* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %304, i32 0, i32 3
  %306 = load i64, i64* %305, align 8
  %307 = add nsw i64 %306, %302
  store i64 %307, i64* %305, align 8
  %308 = load i32, i32* %11, align 4
  %309 = load %struct.net_device*, %struct.net_device** %2, align 8
  %310 = getelementptr inbounds %struct.net_device, %struct.net_device* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = add nsw i32 %312, %308
  store i32 %313, i32* %311, align 8
  %314 = load i32, i32* @RCAR_CAN_EIFR_BEIF, align 4
  %315 = xor i32 %314, -1
  %316 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %317 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %316, i32 0, i32 1
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 0
  %320 = call i32 @writeb(i32 %315, i32* %319)
  br label %321

321:                                              ; preds = %294, %60
  %322 = load i32, i32* %7, align 4
  %323 = load i32, i32* @RCAR_CAN_EIFR_EWIF, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %365

326:                                              ; preds = %321
  %327 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %328 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @netdev_dbg(i32 %329, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %331 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  %332 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %333 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %332, i32 0, i32 3
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 1
  store i32 %331, i32* %334, align 4
  %335 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %336 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %335, i32 0, i32 3
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %338, align 4
  %341 = load i32, i32* @RCAR_CAN_EIFR_EWIF, align 4
  %342 = xor i32 %341, -1
  %343 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %344 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %343, i32 0, i32 1
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 0
  %347 = call i32 @writeb(i32 %342, i32* %346)
  %348 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %349 = icmp ne %struct.sk_buff* %348, null
  br i1 %349, label %350, label %364

350:                                              ; preds = %326
  %351 = load i32, i32* %8, align 4
  %352 = load i32, i32* %9, align 4
  %353 = icmp sgt i32 %351, %352
  br i1 %353, label %354, label %356

354:                                              ; preds = %350
  %355 = load i32, i32* @CAN_ERR_CRTL_TX_WARNING, align 4
  br label %358

356:                                              ; preds = %350
  %357 = load i32, i32* @CAN_ERR_CRTL_RX_WARNING, align 4
  br label %358

358:                                              ; preds = %356, %354
  %359 = phi i32 [ %355, %354 ], [ %357, %356 ]
  %360 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %361 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %360, i32 0, i32 1
  %362 = load i32*, i32** %361, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 1
  store i32 %359, i32* %363, align 4
  br label %364

364:                                              ; preds = %358, %326
  br label %365

365:                                              ; preds = %364, %321
  %366 = load i32, i32* %7, align 4
  %367 = load i32, i32* @RCAR_CAN_EIFR_EPIF, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %409

370:                                              ; preds = %365
  %371 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %372 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = call i32 @netdev_dbg(i32 %373, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %375 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  %376 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %377 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %376, i32 0, i32 3
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %377, i32 0, i32 1
  store i32 %375, i32* %378, align 4
  %379 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %380 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %379, i32 0, i32 3
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %382, align 4
  %385 = load i32, i32* @RCAR_CAN_EIFR_EPIF, align 4
  %386 = xor i32 %385, -1
  %387 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %388 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %387, i32 0, i32 1
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 0
  %391 = call i32 @writeb(i32 %386, i32* %390)
  %392 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %393 = icmp ne %struct.sk_buff* %392, null
  br i1 %393, label %394, label %408

394:                                              ; preds = %370
  %395 = load i32, i32* %8, align 4
  %396 = load i32, i32* %9, align 4
  %397 = icmp sgt i32 %395, %396
  br i1 %397, label %398, label %400

398:                                              ; preds = %394
  %399 = load i32, i32* @CAN_ERR_CRTL_TX_PASSIVE, align 4
  br label %402

400:                                              ; preds = %394
  %401 = load i32, i32* @CAN_ERR_CRTL_RX_PASSIVE, align 4
  br label %402

402:                                              ; preds = %400, %398
  %403 = phi i32 [ %399, %398 ], [ %401, %400 ]
  %404 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %405 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %404, i32 0, i32 1
  %406 = load i32*, i32** %405, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 1
  store i32 %403, i32* %407, align 4
  br label %408

408:                                              ; preds = %402, %370
  br label %409

409:                                              ; preds = %408, %365
  %410 = load i32, i32* %7, align 4
  %411 = load i32, i32* @RCAR_CAN_EIFR_BOEIF, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %460

414:                                              ; preds = %409
  %415 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %416 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 8
  %418 = call i32 @netdev_dbg(i32 %417, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %419 = load %struct.net_device*, %struct.net_device** %2, align 8
  %420 = call i32 @tx_failure_cleanup(%struct.net_device* %419)
  %421 = load i32, i32* @RCAR_CAN_IER_ERSIE, align 4
  %422 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %423 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %422, i32 0, i32 0
  store i32 %421, i32* %423, align 8
  %424 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %425 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %428 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %427, i32 0, i32 1
  %429 = load %struct.TYPE_6__*, %struct.TYPE_6__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %429, i32 0, i32 1
  %431 = call i32 @writeb(i32 %426, i32* %430)
  %432 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %433 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %434 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %433, i32 0, i32 3
  %435 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %434, i32 0, i32 1
  store i32 %432, i32* %435, align 4
  %436 = load i32, i32* @RCAR_CAN_EIFR_BOEIF, align 4
  %437 = xor i32 %436, -1
  %438 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %439 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %438, i32 0, i32 1
  %440 = load %struct.TYPE_6__*, %struct.TYPE_6__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %440, i32 0, i32 0
  %442 = call i32 @writeb(i32 %437, i32* %441)
  %443 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %444 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %443, i32 0, i32 3
  %445 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %446, align 4
  %449 = load %struct.net_device*, %struct.net_device** %2, align 8
  %450 = call i32 @can_bus_off(%struct.net_device* %449)
  %451 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %452 = icmp ne %struct.sk_buff* %451, null
  br i1 %452, label %453, label %459

453:                                              ; preds = %414
  %454 = load i32, i32* @CAN_ERR_BUSOFF, align 4
  %455 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %456 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = or i32 %457, %454
  store i32 %458, i32* %456, align 8
  br label %459

459:                                              ; preds = %453, %414
  br label %460

460:                                              ; preds = %459, %409
  %461 = load i32, i32* %7, align 4
  %462 = load i32, i32* @RCAR_CAN_EIFR_ORIF, align 4
  %463 = and i32 %461, %462
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %501

465:                                              ; preds = %460
  %466 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %467 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %466, i32 0, i32 2
  %468 = load i32, i32* %467, align 8
  %469 = call i32 @netdev_dbg(i32 %468, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %470 = load %struct.net_device*, %struct.net_device** %2, align 8
  %471 = getelementptr inbounds %struct.net_device, %struct.net_device* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %471, i32 0, i32 4
  %473 = load i32, i32* %472, align 8
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %472, align 8
  %475 = load %struct.net_device*, %struct.net_device** %2, align 8
  %476 = getelementptr inbounds %struct.net_device, %struct.net_device* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %476, i32 0, i32 3
  %478 = load i64, i64* %477, align 8
  %479 = add nsw i64 %478, 1
  store i64 %479, i64* %477, align 8
  %480 = load i32, i32* @RCAR_CAN_EIFR_ORIF, align 4
  %481 = xor i32 %480, -1
  %482 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %483 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %482, i32 0, i32 1
  %484 = load %struct.TYPE_6__*, %struct.TYPE_6__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %484, i32 0, i32 0
  %486 = call i32 @writeb(i32 %481, i32* %485)
  %487 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %488 = icmp ne %struct.sk_buff* %487, null
  br i1 %488, label %489, label %500

489:                                              ; preds = %465
  %490 = load i32, i32* @CAN_ERR_CRTL, align 4
  %491 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %492 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = or i32 %493, %490
  store i32 %494, i32* %492, align 8
  %495 = load i32, i32* @CAN_ERR_CRTL_RX_OVERFLOW, align 4
  %496 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %497 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %496, i32 0, i32 1
  %498 = load i32*, i32** %497, align 8
  %499 = getelementptr inbounds i32, i32* %498, i64 1
  store i32 %495, i32* %499, align 4
  br label %500

500:                                              ; preds = %489, %465
  br label %501

501:                                              ; preds = %500, %460
  %502 = load i32, i32* %7, align 4
  %503 = load i32, i32* @RCAR_CAN_EIFR_OLIF, align 4
  %504 = and i32 %502, %503
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %544

506:                                              ; preds = %501
  %507 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %508 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %507, i32 0, i32 2
  %509 = load i32, i32* %508, align 8
  %510 = call i32 @netdev_dbg(i32 %509, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0))
  %511 = load %struct.net_device*, %struct.net_device** %2, align 8
  %512 = getelementptr inbounds %struct.net_device, %struct.net_device* %511, i32 0, i32 0
  %513 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %512, i32 0, i32 4
  %514 = load i32, i32* %513, align 8
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %513, align 8
  %516 = load %struct.net_device*, %struct.net_device** %2, align 8
  %517 = getelementptr inbounds %struct.net_device, %struct.net_device* %516, i32 0, i32 0
  %518 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %517, i32 0, i32 3
  %519 = load i64, i64* %518, align 8
  %520 = add nsw i64 %519, 1
  store i64 %520, i64* %518, align 8
  %521 = load i32, i32* @RCAR_CAN_EIFR_OLIF, align 4
  %522 = xor i32 %521, -1
  %523 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %524 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %523, i32 0, i32 1
  %525 = load %struct.TYPE_6__*, %struct.TYPE_6__** %524, align 8
  %526 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %525, i32 0, i32 0
  %527 = call i32 @writeb(i32 %522, i32* %526)
  %528 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %529 = icmp ne %struct.sk_buff* %528, null
  br i1 %529, label %530, label %543

530:                                              ; preds = %506
  %531 = load i32, i32* @CAN_ERR_PROT, align 4
  %532 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %533 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 8
  %535 = or i32 %534, %531
  store i32 %535, i32* %533, align 8
  %536 = load i32, i32* @CAN_ERR_PROT_OVERLOAD, align 4
  %537 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %538 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %537, i32 0, i32 1
  %539 = load i32*, i32** %538, align 8
  %540 = getelementptr inbounds i32, i32* %539, i64 2
  %541 = load i32, i32* %540, align 4
  %542 = or i32 %541, %536
  store i32 %542, i32* %540, align 4
  br label %543

543:                                              ; preds = %530, %506
  br label %544

544:                                              ; preds = %543, %501
  %545 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %546 = icmp ne %struct.sk_buff* %545, null
  br i1 %546, label %547, label %563

547:                                              ; preds = %544
  %548 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %549 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %548, i32 0, i32 2
  %550 = load i32, i32* %549, align 8
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %549, align 8
  %552 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %553 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %552, i32 0, i32 2
  %554 = load i64, i64* %553, align 8
  %555 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %556 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %555, i32 0, i32 1
  %557 = load i32, i32* %556, align 4
  %558 = sext i32 %557 to i64
  %559 = add nsw i64 %558, %554
  %560 = trunc i64 %559 to i32
  store i32 %560, i32* %556, align 4
  %561 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %562 = call i32 @netif_rx(%struct.sk_buff* %561)
  br label %563

563:                                              ; preds = %547, %544
  ret void
}

declare dso_local %struct.rcar_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @readb(i32*) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @tx_failure_cleanup(%struct.net_device*) #1

declare dso_local i32 @can_bus_off(%struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
