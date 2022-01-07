; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_chip_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_chip_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.m_can_classdev = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 (%struct.m_can_classdev*)* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@M_CAN_RXESC = common dso_local global i32 0, align 4
@M_CAN_RXESC_64BYTES = common dso_local global i32 0, align 4
@M_CAN_GFC = common dso_local global i32 0, align 4
@M_CAN_TXBC = common dso_local global i32 0, align 4
@TXBC_NDTB_SHIFT = common dso_local global i32 0, align 4
@MRAM_TXB = common dso_local global i64 0, align 8
@TXBC_TFQS_SHIFT = common dso_local global i32 0, align 4
@M_CAN_TXESC = common dso_local global i32 0, align 4
@TXESC_TBDS_64BYTES = common dso_local global i32 0, align 4
@M_CAN_TXEFC = common dso_local global i32 0, align 4
@TXEFC_EFS_SHIFT = common dso_local global i32 0, align 4
@MRAM_TXE = common dso_local global i64 0, align 8
@TXEFC_EFS_MASK = common dso_local global i32 0, align 4
@M_CAN_RXF0C = common dso_local global i32 0, align 4
@MRAM_RXF0 = common dso_local global i64 0, align 8
@RXFC_FS_SHIFT = common dso_local global i32 0, align 4
@M_CAN_RXF1C = common dso_local global i32 0, align 4
@MRAM_RXF1 = common dso_local global i64 0, align 8
@M_CAN_CCCR = common dso_local global i32 0, align 4
@M_CAN_TEST = common dso_local global i32 0, align 4
@TEST_LBCK = common dso_local global i32 0, align 4
@CCCR_TEST = common dso_local global i32 0, align 4
@CCCR_MON = common dso_local global i32 0, align 4
@CCCR_CMR_MASK = common dso_local global i32 0, align 4
@CCCR_CMR_SHIFT = common dso_local global i32 0, align 4
@CCCR_CME_MASK = common dso_local global i32 0, align 4
@CCCR_CME_SHIFT = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD = common dso_local global i32 0, align 4
@CCCR_CME_CANFD_BRS = common dso_local global i32 0, align 4
@CCCR_BRSE = common dso_local global i32 0, align 4
@CCCR_FDOE = common dso_local global i32 0, align 4
@CCCR_NISO = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD_NON_ISO = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@M_CAN_IR = common dso_local global i32 0, align 4
@IR_ALL_INT = common dso_local global i32 0, align 4
@CAN_CTRLMODE_BERR_REPORTING = common dso_local global i32 0, align 4
@M_CAN_IE = common dso_local global i32 0, align 4
@IR_ERR_LEC_30X = common dso_local global i32 0, align 4
@IR_ERR_LEC_31X = common dso_local global i32 0, align 4
@M_CAN_ILS = common dso_local global i32 0, align 4
@ILS_ALL_INT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @m_can_chip_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m_can_chip_config(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.m_can_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.m_can_classdev* @netdev_priv(%struct.net_device* %6)
  store %struct.m_can_classdev* %7, %struct.m_can_classdev** %3, align 8
  %8 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %9 = call i32 @m_can_config_endisable(%struct.m_can_classdev* %8, i32 1)
  %10 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %11 = load i32, i32* @M_CAN_RXESC, align 4
  %12 = load i32, i32* @M_CAN_RXESC_64BYTES, align 4
  %13 = call i32 @m_can_write(%struct.m_can_classdev* %10, i32 %11, i32 %12)
  %14 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %15 = load i32, i32* @M_CAN_GFC, align 4
  %16 = call i32 @m_can_write(%struct.m_can_classdev* %14, i32 %15, i32 0)
  %17 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %18 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 30
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %23 = load i32, i32* @M_CAN_TXBC, align 4
  %24 = load i32, i32* @TXBC_NDTB_SHIFT, align 4
  %25 = shl i32 1, %24
  %26 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %27 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i64, i64* @MRAM_TXB, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %25, %32
  %34 = call i32 @m_can_write(%struct.m_can_classdev* %22, i32 %23, i32 %33)
  br label %56

35:                                               ; preds = %1
  %36 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %37 = load i32, i32* @M_CAN_TXBC, align 4
  %38 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %39 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* @MRAM_TXB, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @TXBC_TFQS_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %48 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i64, i64* @MRAM_TXB, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %46, %53
  %55 = call i32 @m_can_write(%struct.m_can_classdev* %36, i32 %37, i32 %54)
  br label %56

56:                                               ; preds = %35, %21
  %57 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %58 = load i32, i32* @M_CAN_TXESC, align 4
  %59 = load i32, i32* @TXESC_TBDS_64BYTES, align 4
  %60 = call i32 @m_can_write(%struct.m_can_classdev* %57, i32 %58, i32 %59)
  %61 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %62 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 30
  br i1 %64, label %65, label %79

65:                                               ; preds = %56
  %66 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %67 = load i32, i32* @M_CAN_TXEFC, align 4
  %68 = load i32, i32* @TXEFC_EFS_SHIFT, align 4
  %69 = shl i32 1, %68
  %70 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %71 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i64, i64* @MRAM_TXE, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %69, %76
  %78 = call i32 @m_can_write(%struct.m_can_classdev* %66, i32 %67, i32 %77)
  br label %102

79:                                               ; preds = %56
  %80 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %81 = load i32, i32* @M_CAN_TXEFC, align 4
  %82 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %83 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %82, i32 0, i32 3
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i64, i64* @MRAM_TXE, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @TXEFC_EFS_SHIFT, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* @TXEFC_EFS_MASK, align 4
  %92 = and i32 %90, %91
  %93 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %94 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i64, i64* @MRAM_TXE, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %92, %99
  %101 = call i32 @m_can_write(%struct.m_can_classdev* %80, i32 %81, i32 %100)
  br label %102

102:                                              ; preds = %79, %65
  %103 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %104 = load i32, i32* @M_CAN_RXF0C, align 4
  %105 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %106 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %105, i32 0, i32 3
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i64, i64* @MRAM_RXF0, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @RXFC_FS_SHIFT, align 4
  %113 = shl i32 %111, %112
  %114 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %115 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %114, i32 0, i32 3
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i64, i64* @MRAM_RXF0, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %113, %120
  %122 = call i32 @m_can_write(%struct.m_can_classdev* %103, i32 %104, i32 %121)
  %123 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %124 = load i32, i32* @M_CAN_RXF1C, align 4
  %125 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %126 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %125, i32 0, i32 3
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i64, i64* @MRAM_RXF1, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @RXFC_FS_SHIFT, align 4
  %133 = shl i32 %131, %132
  %134 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %135 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %134, i32 0, i32 3
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load i64, i64* @MRAM_RXF1, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %133, %140
  %142 = call i32 @m_can_write(%struct.m_can_classdev* %123, i32 %124, i32 %141)
  %143 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %144 = load i32, i32* @M_CAN_CCCR, align 4
  %145 = call i32 @m_can_read(%struct.m_can_classdev* %143, i32 %144)
  store i32 %145, i32* %4, align 4
  %146 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %147 = load i32, i32* @M_CAN_TEST, align 4
  %148 = call i32 @m_can_read(%struct.m_can_classdev* %146, i32 %147)
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* @TEST_LBCK, align 4
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %5, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %5, align 4
  %153 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %154 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 30
  br i1 %156, label %157, label %186

157:                                              ; preds = %102
  %158 = load i32, i32* @CCCR_TEST, align 4
  %159 = load i32, i32* @CCCR_MON, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @CCCR_CMR_MASK, align 4
  %162 = load i32, i32* @CCCR_CMR_SHIFT, align 4
  %163 = shl i32 %161, %162
  %164 = or i32 %160, %163
  %165 = load i32, i32* @CCCR_CME_MASK, align 4
  %166 = load i32, i32* @CCCR_CME_SHIFT, align 4
  %167 = shl i32 %165, %166
  %168 = or i32 %164, %167
  %169 = xor i32 %168, -1
  %170 = load i32, i32* %4, align 4
  %171 = and i32 %170, %169
  store i32 %171, i32* %4, align 4
  %172 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %173 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @CAN_CTRLMODE_FD, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %157
  %180 = load i32, i32* @CCCR_CME_CANFD_BRS, align 4
  %181 = load i32, i32* @CCCR_CME_SHIFT, align 4
  %182 = shl i32 %180, %181
  %183 = load i32, i32* %4, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %4, align 4
  br label %185

185:                                              ; preds = %179, %157
  br label %225

186:                                              ; preds = %102
  %187 = load i32, i32* @CCCR_TEST, align 4
  %188 = load i32, i32* @CCCR_MON, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @CCCR_BRSE, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @CCCR_FDOE, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @CCCR_NISO, align 4
  %195 = or i32 %193, %194
  %196 = xor i32 %195, -1
  %197 = load i32, i32* %4, align 4
  %198 = and i32 %197, %196
  store i32 %198, i32* %4, align 4
  %199 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %200 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @CAN_CTRLMODE_FD_NON_ISO, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %186
  %207 = load i32, i32* @CCCR_NISO, align 4
  %208 = load i32, i32* %4, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %4, align 4
  br label %210

210:                                              ; preds = %206, %186
  %211 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %212 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @CAN_CTRLMODE_FD, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %210
  %219 = load i32, i32* @CCCR_BRSE, align 4
  %220 = load i32, i32* @CCCR_FDOE, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* %4, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %4, align 4
  br label %224

224:                                              ; preds = %218, %210
  br label %225

225:                                              ; preds = %224, %185
  %226 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %227 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %225
  %234 = load i32, i32* @CCCR_TEST, align 4
  %235 = load i32, i32* @CCCR_MON, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* %4, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %4, align 4
  %239 = load i32, i32* @TEST_LBCK, align 4
  %240 = load i32, i32* %5, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %5, align 4
  br label %242

242:                                              ; preds = %233, %225
  %243 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %244 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %242
  %251 = load i32, i32* @CCCR_MON, align 4
  %252 = load i32, i32* %4, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %4, align 4
  br label %254

254:                                              ; preds = %250, %242
  %255 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %256 = load i32, i32* @M_CAN_CCCR, align 4
  %257 = load i32, i32* %4, align 4
  %258 = call i32 @m_can_write(%struct.m_can_classdev* %255, i32 %256, i32 %257)
  %259 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %260 = load i32, i32* @M_CAN_TEST, align 4
  %261 = load i32, i32* %5, align 4
  %262 = call i32 @m_can_write(%struct.m_can_classdev* %259, i32 %260, i32 %261)
  %263 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %264 = load i32, i32* @M_CAN_IR, align 4
  %265 = load i32, i32* @IR_ALL_INT, align 4
  %266 = call i32 @m_can_write(%struct.m_can_classdev* %263, i32 %264, i32 %265)
  %267 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %268 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @CAN_CTRLMODE_BERR_REPORTING, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %296, label %274

274:                                              ; preds = %254
  %275 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %276 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = icmp eq i32 %277, 30
  br i1 %278, label %279, label %287

279:                                              ; preds = %274
  %280 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %281 = load i32, i32* @M_CAN_IE, align 4
  %282 = load i32, i32* @IR_ALL_INT, align 4
  %283 = load i32, i32* @IR_ERR_LEC_30X, align 4
  %284 = xor i32 %283, -1
  %285 = and i32 %282, %284
  %286 = call i32 @m_can_write(%struct.m_can_classdev* %280, i32 %281, i32 %285)
  br label %295

287:                                              ; preds = %274
  %288 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %289 = load i32, i32* @M_CAN_IE, align 4
  %290 = load i32, i32* @IR_ALL_INT, align 4
  %291 = load i32, i32* @IR_ERR_LEC_31X, align 4
  %292 = xor i32 %291, -1
  %293 = and i32 %290, %292
  %294 = call i32 @m_can_write(%struct.m_can_classdev* %288, i32 %289, i32 %293)
  br label %295

295:                                              ; preds = %287, %279
  br label %301

296:                                              ; preds = %254
  %297 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %298 = load i32, i32* @M_CAN_IE, align 4
  %299 = load i32, i32* @IR_ALL_INT, align 4
  %300 = call i32 @m_can_write(%struct.m_can_classdev* %297, i32 %298, i32 %299)
  br label %301

301:                                              ; preds = %296, %295
  %302 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %303 = load i32, i32* @M_CAN_ILS, align 4
  %304 = load i32, i32* @ILS_ALL_INT0, align 4
  %305 = call i32 @m_can_write(%struct.m_can_classdev* %302, i32 %303, i32 %304)
  %306 = load %struct.net_device*, %struct.net_device** %2, align 8
  %307 = call i32 @m_can_set_bittiming(%struct.net_device* %306)
  %308 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %309 = call i32 @m_can_config_endisable(%struct.m_can_classdev* %308, i32 0)
  %310 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %311 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %310, i32 0, i32 1
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 0
  %314 = load i32 (%struct.m_can_classdev*)*, i32 (%struct.m_can_classdev*)** %313, align 8
  %315 = icmp ne i32 (%struct.m_can_classdev*)* %314, null
  br i1 %315, label %316, label %324

316:                                              ; preds = %301
  %317 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %318 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %317, i32 0, i32 1
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 0
  %321 = load i32 (%struct.m_can_classdev*)*, i32 (%struct.m_can_classdev*)** %320, align 8
  %322 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %323 = call i32 %321(%struct.m_can_classdev* %322)
  br label %324

324:                                              ; preds = %316, %301
  ret void
}

declare dso_local %struct.m_can_classdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @m_can_config_endisable(%struct.m_can_classdev*, i32) #1

declare dso_local i32 @m_can_write(%struct.m_can_classdev*, i32, i32) #1

declare dso_local i32 @m_can_read(%struct.m_can_classdev*, i32) #1

declare dso_local i32 @m_can_set_bittiming(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
