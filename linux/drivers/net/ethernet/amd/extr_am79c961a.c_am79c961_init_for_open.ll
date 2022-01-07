; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_am79c961a.c_am79c961_init_for_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_am79c961a.c_am79c961_init_for_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8*, i32 }
%struct.dev_priv = type { i32, i32*, i32, i32*, i64, i64, i64, i64, i32 }

@CSR0 = common dso_local global i32 0, align 4
@CSR0_BABL = common dso_local global i32 0, align 4
@CSR0_CERR = common dso_local global i32 0, align 4
@CSR0_MISS = common dso_local global i32 0, align 4
@CSR0_MERR = common dso_local global i32 0, align 4
@CSR0_TINT = common dso_local global i32 0, align 4
@CSR0_RINT = common dso_local global i32 0, align 4
@CSR0_STOP = common dso_local global i32 0, align 4
@LADRL = common dso_local global i32 0, align 4
@LADRH = common dso_local global i32 0, align 4
@PADRL = common dso_local global i32 0, align 4
@PADRH = common dso_local global i32 0, align 4
@MODE = common dso_local global i32 0, align 4
@POLLINT = common dso_local global i32 0, align 4
@SIZERXR = common dso_local global i32 0, align 4
@RX_BUFFERS = common dso_local global i32 0, align 4
@SIZETXR = common dso_local global i32 0, align 4
@TX_BUFFERS = common dso_local global i32 0, align 4
@RMD_OWN = common dso_local global i32 0, align 4
@TMD_STP = common dso_local global i32 0, align 4
@TMD_ENP = common dso_local global i32 0, align 4
@BASERXL = common dso_local global i32 0, align 4
@BASERXH = common dso_local global i32 0, align 4
@BASETXL = common dso_local global i32 0, align 4
@CSR3 = common dso_local global i32 0, align 4
@CSR3_IDONM = common dso_local global i32 0, align 4
@CSR3_BABLM = common dso_local global i32 0, align 4
@CSR3_DXSUFLO = common dso_local global i32 0, align 4
@CSR4 = common dso_local global i32 0, align 4
@CSR4_APAD_XMIT = common dso_local global i32 0, align 4
@CSR4_MFCOM = common dso_local global i32 0, align 4
@CSR4_RCVCCOM = common dso_local global i32 0, align 4
@CSR4_TXSTRTM = common dso_local global i32 0, align 4
@CSR4_JABM = common dso_local global i32 0, align 4
@CSR0_IENA = common dso_local global i32 0, align 4
@CSR0_STRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @am79c961_init_for_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am79c961_init_for_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dev_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.dev_priv* %12, %struct.dev_priv** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %15 = call i32 @am79c961_get_rx_mode(%struct.net_device* %13, i32* %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %17 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %16, i32 0, i32 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CSR0, align 4
  %24 = load i32, i32* @CSR0_BABL, align 4
  %25 = load i32, i32* @CSR0_CERR, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @CSR0_MISS, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CSR0_MERR, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CSR0_TINT, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CSR0_RINT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CSR0_STOP, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @write_rreg(i32 %22, i32 %23, i32 %36)
  %38 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %39 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %38, i32 0, i32 8
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @write_ireg(i32 %44, i32 5, i32 160)
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @write_ireg(i32 %48, i32 6, i32 129)
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @write_ireg(i32 %52, i32 7, i32 144)
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @write_ireg(i32 %56, i32 2, i32 0)
  %58 = load i32, i32* @LADRL, align 4
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %75, %1
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @LADRH, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @LADRL, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @write_rreg(i32 %66, i32 %67, i32 %73)
  br label %75

75:                                               ; preds = %63
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %59

78:                                               ; preds = %59
  %79 = load i32, i32* @PADRL, align 4
  store i32 %79, i32* %10, align 4
  %80 = load %struct.net_device*, %struct.net_device** %2, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %5, align 8
  br label %83

83:                                               ; preds = %103, %78
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @PADRH, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %108

87:                                               ; preds = %83
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = shl i32 %99, 8
  %101 = or i32 %95, %100
  %102 = call i32 @write_rreg(i32 %90, i32 %91, i32 %101)
  br label %103

103:                                              ; preds = %87
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 2
  store i8* %107, i8** %5, align 8
  br label %83

108:                                              ; preds = %83
  %109 = load %struct.net_device*, %struct.net_device** %2, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @MODE, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @write_rreg(i32 %111, i32 %112, i32 %113)
  %115 = load %struct.net_device*, %struct.net_device** %2, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @POLLINT, align 4
  %119 = call i32 @write_rreg(i32 %117, i32 %118, i32 0)
  %120 = load %struct.net_device*, %struct.net_device** %2, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @SIZERXR, align 4
  %124 = load i32, i32* @RX_BUFFERS, align 4
  %125 = sub nsw i32 0, %124
  %126 = call i32 @write_rreg(i32 %122, i32 %123, i32 %125)
  %127 = load %struct.net_device*, %struct.net_device** %2, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @SIZETXR, align 4
  %131 = load i32, i32* @TX_BUFFERS, align 4
  %132 = sub nsw i32 0, %131
  %133 = call i32 @write_rreg(i32 %129, i32 %130, i32 %132)
  %134 = load i32, i32* @RX_BUFFERS, align 4
  %135 = mul nsw i32 %134, 8
  %136 = load i32, i32* @TX_BUFFERS, align 4
  %137 = mul nsw i32 %136, 8
  %138 = add nsw i32 %135, %137
  %139 = add nsw i32 %138, 16
  store i32 %139, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %140 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %141 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %140, i32 0, i32 7
  store i64 0, i64* %141, align 8
  %142 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %143 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %142, i32 0, i32 6
  store i64 0, i64* %143, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %146 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  store i32 0, i32* %10, align 4
  br label %147

147:                                              ; preds = %180, %108
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @RX_BUFFERS, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %183

151:                                              ; preds = %147
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %154 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %152, i32* %158, align 4
  %159 = load %struct.net_device*, %struct.net_device** %2, align 8
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @am_writeword(%struct.net_device* %159, i32 %160, i32 %161)
  %163 = load %struct.net_device*, %struct.net_device** %2, align 8
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, 2
  %166 = load i32, i32* @RMD_OWN, align 4
  %167 = call i32 @am_writeword(%struct.net_device* %163, i32 %165, i32 %166)
  %168 = load %struct.net_device*, %struct.net_device** %2, align 8
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 4
  %171 = call i32 @am_writeword(%struct.net_device* %168, i32 %170, i32 -1600)
  %172 = load %struct.net_device*, %struct.net_device** %2, align 8
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, 6
  %175 = call i32 @am_writeword(%struct.net_device* %172, i32 %174, i32 0)
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, 1600
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, 8
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %151
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  br label %147

183:                                              ; preds = %147
  %184 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %185 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %184, i32 0, i32 5
  store i64 0, i64* %185, align 8
  %186 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %187 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %186, i32 0, i32 4
  store i64 0, i64* %187, align 8
  %188 = load i32, i32* %6, align 4
  %189 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %190 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 8
  store i32 0, i32* %10, align 4
  br label %191

191:                                              ; preds = %226, %183
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* @TX_BUFFERS, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %229

195:                                              ; preds = %191
  %196 = load i32, i32* %7, align 4
  %197 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %198 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %196, i32* %202, align 4
  %203 = load %struct.net_device*, %struct.net_device** %2, align 8
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @am_writeword(%struct.net_device* %203, i32 %204, i32 %205)
  %207 = load %struct.net_device*, %struct.net_device** %2, align 8
  %208 = load i32, i32* %6, align 4
  %209 = add nsw i32 %208, 2
  %210 = load i32, i32* @TMD_STP, align 4
  %211 = load i32, i32* @TMD_ENP, align 4
  %212 = or i32 %210, %211
  %213 = call i32 @am_writeword(%struct.net_device* %207, i32 %209, i32 %212)
  %214 = load %struct.net_device*, %struct.net_device** %2, align 8
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 %215, 4
  %217 = call i32 @am_writeword(%struct.net_device* %214, i32 %216, i32 61440)
  %218 = load %struct.net_device*, %struct.net_device** %2, align 8
  %219 = load i32, i32* %6, align 4
  %220 = add nsw i32 %219, 6
  %221 = call i32 @am_writeword(%struct.net_device* %218, i32 %220, i32 0)
  %222 = load i32, i32* %7, align 4
  %223 = add nsw i32 %222, 1600
  store i32 %223, i32* %7, align 4
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 %224, 8
  store i32 %225, i32* %6, align 4
  br label %226

226:                                              ; preds = %195
  %227 = load i32, i32* %10, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %10, align 4
  br label %191

229:                                              ; preds = %191
  %230 = load %struct.net_device*, %struct.net_device** %2, align 8
  %231 = getelementptr inbounds %struct.net_device, %struct.net_device* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @BASERXL, align 4
  %234 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %235 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @write_rreg(i32 %232, i32 %233, i32 %236)
  %238 = load %struct.net_device*, %struct.net_device** %2, align 8
  %239 = getelementptr inbounds %struct.net_device, %struct.net_device* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @BASERXH, align 4
  %242 = call i32 @write_rreg(i32 %240, i32 %241, i32 0)
  %243 = load %struct.net_device*, %struct.net_device** %2, align 8
  %244 = getelementptr inbounds %struct.net_device, %struct.net_device* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @BASETXL, align 4
  %247 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %248 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @write_rreg(i32 %245, i32 %246, i32 %249)
  %251 = load %struct.net_device*, %struct.net_device** %2, align 8
  %252 = getelementptr inbounds %struct.net_device, %struct.net_device* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @BASERXH, align 4
  %255 = call i32 @write_rreg(i32 %253, i32 %254, i32 0)
  %256 = load %struct.net_device*, %struct.net_device** %2, align 8
  %257 = getelementptr inbounds %struct.net_device, %struct.net_device* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @CSR0, align 4
  %260 = load i32, i32* @CSR0_STOP, align 4
  %261 = call i32 @write_rreg(i32 %258, i32 %259, i32 %260)
  %262 = load %struct.net_device*, %struct.net_device** %2, align 8
  %263 = getelementptr inbounds %struct.net_device, %struct.net_device* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @CSR3, align 4
  %266 = load i32, i32* @CSR3_IDONM, align 4
  %267 = load i32, i32* @CSR3_BABLM, align 4
  %268 = or i32 %266, %267
  %269 = load i32, i32* @CSR3_DXSUFLO, align 4
  %270 = or i32 %268, %269
  %271 = call i32 @write_rreg(i32 %264, i32 %265, i32 %270)
  %272 = load %struct.net_device*, %struct.net_device** %2, align 8
  %273 = getelementptr inbounds %struct.net_device, %struct.net_device* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @CSR4, align 4
  %276 = load i32, i32* @CSR4_APAD_XMIT, align 4
  %277 = load i32, i32* @CSR4_MFCOM, align 4
  %278 = or i32 %276, %277
  %279 = load i32, i32* @CSR4_RCVCCOM, align 4
  %280 = or i32 %278, %279
  %281 = load i32, i32* @CSR4_TXSTRTM, align 4
  %282 = or i32 %280, %281
  %283 = load i32, i32* @CSR4_JABM, align 4
  %284 = or i32 %282, %283
  %285 = call i32 @write_rreg(i32 %274, i32 %275, i32 %284)
  %286 = load %struct.net_device*, %struct.net_device** %2, align 8
  %287 = getelementptr inbounds %struct.net_device, %struct.net_device* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @CSR0, align 4
  %290 = load i32, i32* @CSR0_IENA, align 4
  %291 = load i32, i32* @CSR0_STRT, align 4
  %292 = or i32 %290, %291
  %293 = call i32 @write_rreg(i32 %288, i32 %289, i32 %292)
  ret void
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @am79c961_get_rx_mode(%struct.net_device*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_rreg(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @write_ireg(i32, i32, i32) #1

declare dso_local i32 @am_writeword(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
