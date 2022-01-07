; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_get_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_get_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i32, i32, i32, i32, i32, i32 }

@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_ISR = common dso_local global i32 0, align 4
@AR5K_INT_NOCARD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@AR5K_INT_COMMON = common dso_local global i32 0, align 4
@AR5K_ISR_SSERR = common dso_local global i32 0, align 4
@AR5K_ISR_MCABT = common dso_local global i32 0, align 4
@AR5K_ISR_DPERR = common dso_local global i32 0, align 4
@AR5K_INT_FATAL = common dso_local global i32 0, align 4
@AR5K_PISR = common dso_local global i32 0, align 4
@AR5K_SISR0 = common dso_local global i32 0, align 4
@AR5K_SISR1 = common dso_local global i32 0, align 4
@AR5K_SISR2 = common dso_local global i32 0, align 4
@AR5K_SISR3 = common dso_local global i32 0, align 4
@AR5K_SISR4 = common dso_local global i32 0, align 4
@AR5K_ISR_BITS_FROM_SISRS = common dso_local global i32 0, align 4
@AR5K_INT_TX_ALL = common dso_local global i32 0, align 4
@AR5K_ISR_TXOK = common dso_local global i32 0, align 4
@AR5K_SISR0_QCU_TXOK = common dso_local global i32 0, align 4
@AR5K_ISR_TXDESC = common dso_local global i32 0, align 4
@AR5K_SISR0_QCU_TXDESC = common dso_local global i32 0, align 4
@AR5K_ISR_TXERR = common dso_local global i32 0, align 4
@AR5K_SISR1_QCU_TXERR = common dso_local global i32 0, align 4
@AR5K_ISR_TXEOL = common dso_local global i32 0, align 4
@AR5K_SISR1_QCU_TXEOL = common dso_local global i32 0, align 4
@AR5K_ISR_TXURN = common dso_local global i32 0, align 4
@AR5K_SISR2_QCU_TXURN = common dso_local global i32 0, align 4
@AR5K_ISR_TIM = common dso_local global i32 0, align 4
@AR5K_INT_TIM = common dso_local global i32 0, align 4
@AR5K_ISR_BCNMISC = common dso_local global i32 0, align 4
@AR5K_SISR2_TIM = common dso_local global i32 0, align 4
@AR5K_SISR2_DTIM = common dso_local global i32 0, align 4
@AR5K_INT_DTIM = common dso_local global i32 0, align 4
@AR5K_SISR2_DTIM_SYNC = common dso_local global i32 0, align 4
@AR5K_INT_DTIM_SYNC = common dso_local global i32 0, align 4
@AR5K_SISR2_BCN_TIMEOUT = common dso_local global i32 0, align 4
@AR5K_INT_BCN_TIMEOUT = common dso_local global i32 0, align 4
@AR5K_SISR2_CAB_TIMEOUT = common dso_local global i32 0, align 4
@AR5K_INT_CAB_TIMEOUT = common dso_local global i32 0, align 4
@AR5K_ISR_HIUERR = common dso_local global i32 0, align 4
@AR5K_ISR_BNR = common dso_local global i32 0, align 4
@AR5K_INT_BNR = common dso_local global i32 0, align 4
@AR5K_ISR_QCBRORN = common dso_local global i32 0, align 4
@AR5K_INT_QCBRORN = common dso_local global i32 0, align 4
@AR5K_SISR3_QCBRORN = common dso_local global i32 0, align 4
@AR5K_ISR_QCBRURN = common dso_local global i32 0, align 4
@AR5K_INT_QCBRURN = common dso_local global i32 0, align 4
@AR5K_SISR3_QCBRURN = common dso_local global i32 0, align 4
@AR5K_ISR_QTRIG = common dso_local global i32 0, align 4
@AR5K_INT_QTRIG = common dso_local global i32 0, align 4
@AR5K_SISR4_QTRIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ISR: 0x%08x IMR: 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_get_isr(%struct.ath5k_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AR5K_AR5210, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %21 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %22 = load i32, i32* @AR5K_ISR, align 4
  %23 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @AR5K_INT_NOCARD, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %361

35:                                               ; preds = %20
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @AR5K_INT_COMMON, align 4
  %38 = and i32 %36, %37
  %39 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %40 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %38, %41
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @AR5K_ISR_SSERR, align 4
  %46 = load i32, i32* @AR5K_ISR_MCABT, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @AR5K_ISR_DPERR, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %44, %49
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %35
  %54 = load i32, i32* @AR5K_INT_FATAL, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %53, %35
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %6, align 4
  br label %342

60:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %61 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %62 = load i32, i32* @AR5K_PISR, align 4
  %63 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @AR5K_INT_NOCARD, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load i32, i32* %8, align 4
  %72 = load i32*, i32** %5, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %361

75:                                               ; preds = %60
  %76 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %77 = load i32, i32* @AR5K_SISR0, align 4
  %78 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %76, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %80 = load i32, i32* @AR5K_SISR1, align 4
  %81 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %79, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %83 = load i32, i32* @AR5K_SISR2, align 4
  %84 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %82, i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %86 = load i32, i32* @AR5K_SISR3, align 4
  %87 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %85, i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %89 = load i32, i32* @AR5K_SISR4, align 4
  %90 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %88, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @AR5K_ISR_BITS_FROM_SISRS, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @AR5K_INT_TX_ALL, align 4
  %97 = and i32 %95, %96
  %98 = or i32 %94, %97
  store i32 %98, i32* %9, align 4
  %99 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @AR5K_SISR0, align 4
  %102 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %99, i32 %100, i32 %101)
  %103 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @AR5K_SISR1, align 4
  %106 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %103, i32 %104, i32 %105)
  %107 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @AR5K_SISR2, align 4
  %110 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %107, i32 %108, i32 %109)
  %111 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* @AR5K_SISR3, align 4
  %114 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %111, i32 %112, i32 %113)
  %115 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* @AR5K_SISR4, align 4
  %118 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %115, i32 %116, i32 %117)
  %119 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @AR5K_PISR, align 4
  %122 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %119, i32 %120, i32 %121)
  %123 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %124 = load i32, i32* @AR5K_PISR, align 4
  %125 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %123, i32 %124)
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @AR5K_INT_COMMON, align 4
  %128 = and i32 %126, %127
  %129 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %130 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %128, %131
  %133 = load i32*, i32** %5, align 8
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @AR5K_ISR_TXOK, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %75
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @AR5K_SISR0_QCU_TXOK, align 4
  %141 = call i32 @AR5K_REG_MS(i32 %139, i32 %140)
  %142 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %143 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %138, %75
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @AR5K_ISR_TXDESC, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %146
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* @AR5K_SISR0_QCU_TXDESC, align 4
  %154 = call i32 @AR5K_REG_MS(i32 %152, i32 %153)
  %155 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %156 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %151, %146
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @AR5K_ISR_TXERR, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %159
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @AR5K_SISR1_QCU_TXERR, align 4
  %167 = call i32 @AR5K_REG_MS(i32 %165, i32 %166)
  %168 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %169 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %164, %159
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @AR5K_ISR_TXEOL, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %172
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @AR5K_SISR1_QCU_TXEOL, align 4
  %180 = call i32 @AR5K_REG_MS(i32 %178, i32 %179)
  %181 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %182 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %177, %172
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* @AR5K_ISR_TXURN, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %185
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* @AR5K_SISR2_QCU_TXURN, align 4
  %193 = call i32 @AR5K_REG_MS(i32 %191, i32 %192)
  %194 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %195 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 8
  br label %198

198:                                              ; preds = %190, %185
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @AR5K_ISR_TIM, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load i32, i32* @AR5K_INT_TIM, align 4
  %205 = load i32*, i32** %5, align 8
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %204
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %203, %198
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* @AR5K_ISR_BCNMISC, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %264

213:                                              ; preds = %208
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* @AR5K_SISR2_TIM, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %213
  %219 = load i32, i32* @AR5K_INT_TIM, align 4
  %220 = load i32*, i32** %5, align 8
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %219
  store i32 %222, i32* %220, align 4
  br label %223

223:                                              ; preds = %218, %213
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* @AR5K_SISR2_DTIM, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %223
  %229 = load i32, i32* @AR5K_INT_DTIM, align 4
  %230 = load i32*, i32** %5, align 8
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %229
  store i32 %232, i32* %230, align 4
  br label %233

233:                                              ; preds = %228, %223
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* @AR5K_SISR2_DTIM_SYNC, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %233
  %239 = load i32, i32* @AR5K_INT_DTIM_SYNC, align 4
  %240 = load i32*, i32** %5, align 8
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, %239
  store i32 %242, i32* %240, align 4
  br label %243

243:                                              ; preds = %238, %233
  %244 = load i32, i32* %12, align 4
  %245 = load i32, i32* @AR5K_SISR2_BCN_TIMEOUT, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %243
  %249 = load i32, i32* @AR5K_INT_BCN_TIMEOUT, align 4
  %250 = load i32*, i32** %5, align 8
  %251 = load i32, i32* %250, align 4
  %252 = or i32 %251, %249
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %248, %243
  %254 = load i32, i32* %12, align 4
  %255 = load i32, i32* @AR5K_SISR2_CAB_TIMEOUT, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %253
  %259 = load i32, i32* @AR5K_INT_CAB_TIMEOUT, align 4
  %260 = load i32*, i32** %5, align 8
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %259
  store i32 %262, i32* %260, align 4
  br label %263

263:                                              ; preds = %258, %253
  br label %264

264:                                              ; preds = %263, %208
  %265 = load i32, i32* %8, align 4
  %266 = load i32, i32* @AR5K_ISR_HIUERR, align 4
  %267 = and i32 %265, %266
  %268 = call i64 @unlikely(i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %264
  %271 = load i32, i32* @AR5K_INT_FATAL, align 4
  %272 = load i32*, i32** %5, align 8
  %273 = load i32, i32* %272, align 4
  %274 = or i32 %273, %271
  store i32 %274, i32* %272, align 4
  br label %275

275:                                              ; preds = %270, %264
  %276 = load i32, i32* %8, align 4
  %277 = load i32, i32* @AR5K_ISR_BNR, align 4
  %278 = and i32 %276, %277
  %279 = call i64 @unlikely(i32 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %275
  %282 = load i32, i32* @AR5K_INT_BNR, align 4
  %283 = load i32*, i32** %5, align 8
  %284 = load i32, i32* %283, align 4
  %285 = or i32 %284, %282
  store i32 %285, i32* %283, align 4
  br label %286

286:                                              ; preds = %281, %275
  %287 = load i32, i32* %8, align 4
  %288 = load i32, i32* @AR5K_ISR_QCBRORN, align 4
  %289 = and i32 %287, %288
  %290 = call i64 @unlikely(i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %304

292:                                              ; preds = %286
  %293 = load i32, i32* @AR5K_INT_QCBRORN, align 4
  %294 = load i32*, i32** %5, align 8
  %295 = load i32, i32* %294, align 4
  %296 = or i32 %295, %293
  store i32 %296, i32* %294, align 4
  %297 = load i32, i32* %13, align 4
  %298 = load i32, i32* @AR5K_SISR3_QCBRORN, align 4
  %299 = call i32 @AR5K_REG_MS(i32 %297, i32 %298)
  %300 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %301 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 4
  %303 = or i32 %302, %299
  store i32 %303, i32* %301, align 4
  br label %304

304:                                              ; preds = %292, %286
  %305 = load i32, i32* %8, align 4
  %306 = load i32, i32* @AR5K_ISR_QCBRURN, align 4
  %307 = and i32 %305, %306
  %308 = call i64 @unlikely(i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %322

310:                                              ; preds = %304
  %311 = load i32, i32* @AR5K_INT_QCBRURN, align 4
  %312 = load i32*, i32** %5, align 8
  %313 = load i32, i32* %312, align 4
  %314 = or i32 %313, %311
  store i32 %314, i32* %312, align 4
  %315 = load i32, i32* %13, align 4
  %316 = load i32, i32* @AR5K_SISR3_QCBRURN, align 4
  %317 = call i32 @AR5K_REG_MS(i32 %315, i32 %316)
  %318 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %319 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 8
  %321 = or i32 %320, %317
  store i32 %321, i32* %319, align 8
  br label %322

322:                                              ; preds = %310, %304
  %323 = load i32, i32* %8, align 4
  %324 = load i32, i32* @AR5K_ISR_QTRIG, align 4
  %325 = and i32 %323, %324
  %326 = call i64 @unlikely(i32 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %340

328:                                              ; preds = %322
  %329 = load i32, i32* @AR5K_INT_QTRIG, align 4
  %330 = load i32*, i32** %5, align 8
  %331 = load i32, i32* %330, align 4
  %332 = or i32 %331, %329
  store i32 %332, i32* %330, align 4
  %333 = load i32, i32* %14, align 4
  %334 = load i32, i32* @AR5K_SISR4_QTRIG, align 4
  %335 = call i32 @AR5K_REG_MS(i32 %333, i32 %334)
  %336 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %337 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 4
  %339 = or i32 %338, %335
  store i32 %339, i32* %337, align 4
  br label %340

340:                                              ; preds = %328, %322
  %341 = load i32, i32* %8, align 4
  store i32 %341, i32* %6, align 4
  br label %342

342:                                              ; preds = %340, %58
  %343 = load i32*, i32** %5, align 8
  %344 = load i32, i32* %343, align 4
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %342
  %347 = call i64 (...) @net_ratelimit()
  %348 = icmp ne i64 %347, 0
  br label %349

349:                                              ; preds = %346, %342
  %350 = phi i1 [ false, %342 ], [ %348, %346 ]
  %351 = zext i1 %350 to i32
  %352 = call i64 @unlikely(i32 %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %360

354:                                              ; preds = %349
  %355 = load i32, i32* %6, align 4
  %356 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %357 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = call i32 @ATH5K_PRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %355, i32 %358)
  br label %360

360:                                              ; preds = %354, %349
  store i32 0, i32* %3, align 4
  br label %361

361:                                              ; preds = %360, %70, %30
  %362 = load i32, i32* %3, align 4
  ret i32 %362
}

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_MS(i32, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @ATH5K_PRINTF(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
