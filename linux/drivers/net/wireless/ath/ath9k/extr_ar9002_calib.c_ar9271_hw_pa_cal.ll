; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9271_hw_pa_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9271_hw_pa_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@AR9285_AN_TOP3 = common dso_local global i32 0, align 4
@AR9285_AN_RXTXBB1 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G1 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G2 = common dso_local global i32 0, align 4
@AR9285_AN_TOP2 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G8 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G7 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G6 = common dso_local global i32 0, align 4
@AR9285_AN_TOP3_PWDDAC = common dso_local global i32 0, align 4
@AR9285_AN_RXTXBB1_PDRXTXBB1 = common dso_local global i32 0, align 4
@AR9285_AN_RXTXBB1_PDV2I = common dso_local global i32 0, align 4
@AR9285_AN_RXTXBB1_PDDACIF = common dso_local global i32 0, align 4
@AR9285_AN_RF2G2_OFFCAL = common dso_local global i32 0, align 4
@AR9285_AN_RF2G7_PWDDB = common dso_local global i32 0, align 4
@AR9285_AN_RF2G1_ENPACAL = common dso_local global i32 0, align 4
@AR9285_AN_RF2G1_PDPADRV1 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G1_PDPADRV2 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G1_PDPAOUT = common dso_local global i32 0, align 4
@AR9285_AN_RF2G8_PADRVGN2TAB0 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G7_PADRVGN2TAB0 = common dso_local global i32 0, align 4
@AR9271_AN_RF2G3_CCOMP = common dso_local global i32 0, align 4
@AR9271_AN_RF2G6_OFFS = common dso_local global i32 0, align 4
@AR9285_AN_RF2G9 = common dso_local global i32 0, align 4
@AR9285_AN_RXTXBB1_SPARE9 = common dso_local global i32 0, align 4
@MAX_PACAL_SKIPCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9271_hw_pa_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9271_hw_pa_cal(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x [2 x i32]], align 16
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %7, i64 0, i64 0
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %10 = load i32, i32* @AR9285_AN_TOP3, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 1
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %14 = load i32, i32* @AR9285_AN_RXTXBB1, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 1
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %18 = load i32, i32* @AR9285_AN_RF2G1, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 1
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %22 = load i32, i32* @AR9285_AN_RF2G2, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 1
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %26 = load i32, i32* @AR9285_AN_TOP2, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 1
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 0
  %30 = load i32, i32* @AR9285_AN_RF2G8, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 1
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 0
  %34 = load i32, i32* @AR9285_AN_RF2G7, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 1
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %36, i64 0, i64 0
  %38 = load i32, i32* @AR9285_AN_RF2G3, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %41 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %7, i64 0, i64 0
  %42 = bitcast [2 x i32]* %41 to i32**
  %43 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %7, i64 0, i64 0
  %44 = bitcast [2 x i32]* %43 to i32**
  %45 = call i32 @ARRAY_SIZE(i32** %44)
  %46 = call i32 @REG_READ_ARRAY(%struct.ath_hw* %40, i32** %42, i32 %45)
  %47 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %48 = call i32 @ENABLE_REG_RMW_BUFFER(%struct.ath_hw* %47)
  %49 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %50 = load i32, i32* @AR9285_AN_RF2G6, align 4
  %51 = call i32 @REG_CLR_BIT(%struct.ath_hw* %49, i32 %50, i32 1)
  %52 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %53 = call i32 @REG_SET_BIT(%struct.ath_hw* %52, i32 38920, i32 134217728)
  %54 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %55 = load i32, i32* @AR9285_AN_TOP3, align 4
  %56 = load i32, i32* @AR9285_AN_TOP3_PWDDAC, align 4
  %57 = call i32 @REG_SET_BIT(%struct.ath_hw* %54, i32 %55, i32 %56)
  %58 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %59 = load i32, i32* @AR9285_AN_RXTXBB1, align 4
  %60 = load i32, i32* @AR9285_AN_RXTXBB1_PDRXTXBB1, align 4
  %61 = call i32 @REG_SET_BIT(%struct.ath_hw* %58, i32 %59, i32 %60)
  %62 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %63 = load i32, i32* @AR9285_AN_RXTXBB1, align 4
  %64 = load i32, i32* @AR9285_AN_RXTXBB1_PDV2I, align 4
  %65 = call i32 @REG_SET_BIT(%struct.ath_hw* %62, i32 %63, i32 %64)
  %66 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %67 = load i32, i32* @AR9285_AN_RXTXBB1, align 4
  %68 = load i32, i32* @AR9285_AN_RXTXBB1_PDDACIF, align 4
  %69 = call i32 @REG_SET_BIT(%struct.ath_hw* %66, i32 %67, i32 %68)
  %70 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %71 = load i32, i32* @AR9285_AN_RF2G2, align 4
  %72 = load i32, i32* @AR9285_AN_RF2G2_OFFCAL, align 4
  %73 = call i32 @REG_CLR_BIT(%struct.ath_hw* %70, i32 %71, i32 %72)
  %74 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %75 = load i32, i32* @AR9285_AN_RF2G7, align 4
  %76 = load i32, i32* @AR9285_AN_RF2G7_PWDDB, align 4
  %77 = call i32 @REG_CLR_BIT(%struct.ath_hw* %74, i32 %75, i32 %76)
  %78 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %79 = load i32, i32* @AR9285_AN_RF2G1, align 4
  %80 = load i32, i32* @AR9285_AN_RF2G1_ENPACAL, align 4
  %81 = call i32 @REG_CLR_BIT(%struct.ath_hw* %78, i32 %79, i32 %80)
  %82 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %83 = load i32, i32* @AR9285_AN_RF2G1, align 4
  %84 = load i32, i32* @AR9285_AN_RF2G1_PDPADRV1, align 4
  %85 = call i32 @REG_CLR_BIT(%struct.ath_hw* %82, i32 %83, i32 %84)
  %86 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %87 = load i32, i32* @AR9285_AN_RF2G1, align 4
  %88 = load i32, i32* @AR9285_AN_RF2G1_PDPADRV2, align 4
  %89 = call i32 @REG_CLR_BIT(%struct.ath_hw* %86, i32 %87, i32 %88)
  %90 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %91 = load i32, i32* @AR9285_AN_RF2G1, align 4
  %92 = load i32, i32* @AR9285_AN_RF2G1_PDPAOUT, align 4
  %93 = call i32 @REG_CLR_BIT(%struct.ath_hw* %90, i32 %91, i32 %92)
  %94 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %95 = load i32, i32* @AR9285_AN_RF2G8, align 4
  %96 = load i32, i32* @AR9285_AN_RF2G8_PADRVGN2TAB0, align 4
  %97 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %94, i32 %95, i32 %96, i32 7)
  %98 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %99 = load i32, i32* @AR9285_AN_RF2G7, align 4
  %100 = load i32, i32* @AR9285_AN_RF2G7_PADRVGN2TAB0, align 4
  %101 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %98, i32 %99, i32 %100, i32 0)
  %102 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %103 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %104 = load i32, i32* @AR9271_AN_RF2G3_CCOMP, align 4
  %105 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %102, i32 %103, i32 %104, i32 4095)
  %106 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %107 = call i32 @REG_RMW_BUFFER_FLUSH(%struct.ath_hw* %106)
  %108 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %109 = load i32, i32* @AR9285_AN_TOP2, align 4
  %110 = call i32 @REG_WRITE(%struct.ath_hw* %108, i32 %109, i32 -905750368)
  %111 = call i32 @udelay(i32 30)
  %112 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %113 = load i32, i32* @AR9285_AN_RF2G6, align 4
  %114 = load i32, i32* @AR9271_AN_RF2G6_OFFS, align 4
  %115 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %112, i32 %113, i32 %114, i32 0)
  store i32 6, i32* %6, align 4
  br label %116

116:                                              ; preds = %153, %2
  %117 = load i32, i32* %6, align 4
  %118 = icmp ugt i32 %117, 0
  br i1 %118, label %119, label %156

119:                                              ; preds = %116
  %120 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %121 = load i32, i32* @AR9285_AN_RF2G6, align 4
  %122 = call i32 @REG_READ(%struct.ath_hw* %120, i32 %121)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %6, align 4
  %124 = add i32 20, %123
  %125 = shl i32 1, %124
  %126 = load i32, i32* %5, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %5, align 4
  %128 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %129 = load i32, i32* @AR9285_AN_RF2G6, align 4
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @REG_WRITE(%struct.ath_hw* %128, i32 %129, i32 %130)
  %132 = call i32 @udelay(i32 1)
  %133 = load i32, i32* %6, align 4
  %134 = add i32 20, %133
  %135 = shl i32 1, %134
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %5, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %5, align 4
  %139 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %140 = load i32, i32* @AR9285_AN_RF2G9, align 4
  %141 = call i32 @REG_READ(%struct.ath_hw* %139, i32 %140)
  %142 = load i32, i32* @AR9285_AN_RXTXBB1_SPARE9, align 4
  %143 = call i32 @MS(i32 %141, i32 %142)
  %144 = load i32, i32* %6, align 4
  %145 = add i32 20, %144
  %146 = shl i32 %143, %145
  %147 = load i32, i32* %5, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %5, align 4
  %149 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %150 = load i32, i32* @AR9285_AN_RF2G6, align 4
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @REG_WRITE(%struct.ath_hw* %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %119
  %154 = load i32, i32* %6, align 4
  %155 = add i32 %154, -1
  store i32 %155, i32* %6, align 4
  br label %116

156:                                              ; preds = %116
  %157 = load i32, i32* %5, align 4
  %158 = ashr i32 %157, 20
  %159 = and i32 %158, 127
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %4, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %193, label %162

162:                                              ; preds = %156
  %163 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %164 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %5, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %193

169:                                              ; preds = %162
  %170 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %171 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @MAX_PACAL_SKIPCOUNT, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %169
  %177 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %178 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = mul nsw i32 2, %180
  %182 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %183 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 1
  store i32 %181, i32* %184, align 4
  br label %185

185:                                              ; preds = %176, %169
  %186 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %187 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %191 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 2
  store i32 %189, i32* %192, align 4
  br label %204

193:                                              ; preds = %162, %156
  %194 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %195 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 1
  store i32 1, i32* %196, align 4
  %197 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %198 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 2
  store i32 0, i32* %199, align 4
  %200 = load i32, i32* %5, align 4
  %201 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %202 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  store i32 %200, i32* %203, align 4
  br label %204

204:                                              ; preds = %193, %185
  %205 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %206 = call i32 @ENABLE_REG_RMW_BUFFER(%struct.ath_hw* %205)
  %207 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %208 = load i32, i32* @AR9285_AN_RF2G6, align 4
  %209 = call i32 @REG_SET_BIT(%struct.ath_hw* %207, i32 %208, i32 1)
  %210 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %211 = call i32 @REG_CLR_BIT(%struct.ath_hw* %210, i32 38920, i32 134217728)
  %212 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %213 = call i32 @REG_RMW_BUFFER_FLUSH(%struct.ath_hw* %212)
  %214 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %215 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %214)
  store i32 0, i32* %6, align 4
  br label %216

216:                                              ; preds = %235, %204
  %217 = load i32, i32* %6, align 4
  %218 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %7, i64 0, i64 0
  %219 = bitcast [2 x i32]* %218 to i32**
  %220 = call i32 @ARRAY_SIZE(i32** %219)
  %221 = icmp ult i32 %217, %220
  br i1 %221, label %222, label %238

222:                                              ; preds = %216
  %223 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %224 = load i32, i32* %6, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %7, i64 0, i64 %225
  %227 = getelementptr inbounds [2 x i32], [2 x i32]* %226, i64 0, i64 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %6, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %7, i64 0, i64 %230
  %232 = getelementptr inbounds [2 x i32], [2 x i32]* %231, i64 0, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @REG_WRITE(%struct.ath_hw* %223, i32 %228, i32 %233)
  br label %235

235:                                              ; preds = %222
  %236 = load i32, i32* %6, align 4
  %237 = add i32 %236, 1
  store i32 %237, i32* %6, align 4
  br label %216

238:                                              ; preds = %216
  %239 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %240 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %239)
  ret void
}

declare dso_local i32 @REG_READ_ARRAY(%struct.ath_hw*, i32**, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @ENABLE_REG_RMW_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @REG_RMW_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
