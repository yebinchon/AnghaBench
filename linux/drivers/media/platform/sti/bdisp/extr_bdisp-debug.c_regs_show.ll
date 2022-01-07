; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_regs_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_regs_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.bdisp_dev* }
%struct.bdisp_dev = type { i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"Cannot wake up IP\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Reg @ = 0x%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"\0AStatic:\0A\00", align 1
@BLT_CTL = common dso_local global i32 0, align 4
@BLT_ITS = common dso_local global i32 0, align 4
@BLT_STA1 = common dso_local global i32 0, align 4
@BLT_AQ1_CTL = common dso_local global i32 0, align 4
@BLT_AQ1_IP = common dso_local global i32 0, align 4
@BLT_AQ1_LNA = common dso_local global i32 0, align 4
@BLT_AQ1_STA = common dso_local global i32 0, align 4
@BLT_ITM0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"\0APlugs:\0A\00", align 1
@BLT_PLUGS1_OP2 = common dso_local global i32 0, align 4
@BLT_PLUGS1_CHZ = common dso_local global i32 0, align 4
@BLT_PLUGS1_MSZ = common dso_local global i32 0, align 4
@BLT_PLUGS1_PGZ = common dso_local global i32 0, align 4
@BLT_PLUGS2_OP2 = common dso_local global i32 0, align 4
@BLT_PLUGS2_CHZ = common dso_local global i32 0, align 4
@BLT_PLUGS2_MSZ = common dso_local global i32 0, align 4
@BLT_PLUGS2_PGZ = common dso_local global i32 0, align 4
@BLT_PLUGS3_OP2 = common dso_local global i32 0, align 4
@BLT_PLUGS3_CHZ = common dso_local global i32 0, align 4
@BLT_PLUGS3_MSZ = common dso_local global i32 0, align 4
@BLT_PLUGS3_PGZ = common dso_local global i32 0, align 4
@BLT_PLUGT_OP2 = common dso_local global i32 0, align 4
@BLT_PLUGT_CHZ = common dso_local global i32 0, align 4
@BLT_PLUGT_MSZ = common dso_local global i32 0, align 4
@BLT_PLUGT_PGZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"\0ANode:\0A\00", align 1
@BLT_NIP = common dso_local global i32 0, align 4
@BLT_CIC = common dso_local global i32 0, align 4
@BLT_INS = common dso_local global i32 0, align 4
@BLT_ACK = common dso_local global i32 0, align 4
@BLT_TBA = common dso_local global i32 0, align 4
@BLT_TTY = common dso_local global i32 0, align 4
@BLT_TXY = common dso_local global i32 0, align 4
@BLT_TSZ = common dso_local global i32 0, align 4
@BLT_S1BA = common dso_local global i32 0, align 4
@BLT_S1TY = common dso_local global i32 0, align 4
@BLT_S1XY = common dso_local global i32 0, align 4
@BLT_S2BA = common dso_local global i32 0, align 4
@BLT_S2TY = common dso_local global i32 0, align 4
@BLT_S2XY = common dso_local global i32 0, align 4
@BLT_S2SZ = common dso_local global i32 0, align 4
@BLT_S3BA = common dso_local global i32 0, align 4
@BLT_S3TY = common dso_local global i32 0, align 4
@BLT_S3XY = common dso_local global i32 0, align 4
@BLT_S3SZ = common dso_local global i32 0, align 4
@BLT_FCTL = common dso_local global i32 0, align 4
@BLT_RSF = common dso_local global i32 0, align 4
@BLT_RZI = common dso_local global i32 0, align 4
@BLT_HFP = common dso_local global i32 0, align 4
@BLT_VFP = common dso_local global i32 0, align 4
@BLT_Y_RSF = common dso_local global i32 0, align 4
@BLT_Y_RZI = common dso_local global i32 0, align 4
@BLT_Y_HFP = common dso_local global i32 0, align 4
@BLT_Y_VFP = common dso_local global i32 0, align 4
@BLT_IVMX0 = common dso_local global i32 0, align 4
@BLT_IVMX1 = common dso_local global i32 0, align 4
@BLT_IVMX2 = common dso_local global i32 0, align 4
@BLT_IVMX3 = common dso_local global i32 0, align 4
@BLT_OVMX0 = common dso_local global i32 0, align 4
@BLT_OVMX1 = common dso_local global i32 0, align 4
@BLT_OVMX2 = common dso_local global i32 0, align 4
@BLT_OVMX3 = common dso_local global i32 0, align 4
@BLT_DEI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"\0AFilter:\0A\00", align 1
@BLT_NB_H_COEF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"BLT_HFC%d \090x%08X\0A\00", align 1
@BLT_HFC_N = common dso_local global i64 0, align 8
@BLT_NB_V_COEF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"BLT_VFC%d \090x%08X\0A\00", align 1
@BLT_VFC_N = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"\0ALuma filter:\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"BLT_Y_HFC%d \090x%08X\0A\00", align 1
@BLT_Y_HFC_N = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"BLT_Y_VFC%d \090x%08X\0A\00", align 1
@BLT_Y_VFC_N = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @regs_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regs_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bdisp_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.bdisp_dev*, %struct.bdisp_dev** %10, align 8
  store %struct.bdisp_dev* %11, %struct.bdisp_dev** %6, align 8
  %12 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %13 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pm_runtime_get_sync(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %20 = call i32 @seq_puts(%struct.seq_file* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %252

21:                                               ; preds = %2
  %22 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %23 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %24 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = call i32 @seq_puts(%struct.seq_file* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @BLT_CTL, align 4
  %31 = call i32 @DUMP(i32 %30)
  %32 = load i32, i32* @BLT_ITS, align 4
  %33 = call i32 @DUMP(i32 %32)
  %34 = load i32, i32* @BLT_STA1, align 4
  %35 = call i32 @DUMP(i32 %34)
  %36 = load i32, i32* @BLT_AQ1_CTL, align 4
  %37 = call i32 @DUMP(i32 %36)
  %38 = load i32, i32* @BLT_AQ1_IP, align 4
  %39 = call i32 @DUMP(i32 %38)
  %40 = load i32, i32* @BLT_AQ1_LNA, align 4
  %41 = call i32 @DUMP(i32 %40)
  %42 = load i32, i32* @BLT_AQ1_STA, align 4
  %43 = call i32 @DUMP(i32 %42)
  %44 = load i32, i32* @BLT_ITM0, align 4
  %45 = call i32 @DUMP(i32 %44)
  %46 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %47 = call i32 @seq_puts(%struct.seq_file* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* @BLT_PLUGS1_OP2, align 4
  %49 = call i32 @DUMP(i32 %48)
  %50 = load i32, i32* @BLT_PLUGS1_CHZ, align 4
  %51 = call i32 @DUMP(i32 %50)
  %52 = load i32, i32* @BLT_PLUGS1_MSZ, align 4
  %53 = call i32 @DUMP(i32 %52)
  %54 = load i32, i32* @BLT_PLUGS1_PGZ, align 4
  %55 = call i32 @DUMP(i32 %54)
  %56 = load i32, i32* @BLT_PLUGS2_OP2, align 4
  %57 = call i32 @DUMP(i32 %56)
  %58 = load i32, i32* @BLT_PLUGS2_CHZ, align 4
  %59 = call i32 @DUMP(i32 %58)
  %60 = load i32, i32* @BLT_PLUGS2_MSZ, align 4
  %61 = call i32 @DUMP(i32 %60)
  %62 = load i32, i32* @BLT_PLUGS2_PGZ, align 4
  %63 = call i32 @DUMP(i32 %62)
  %64 = load i32, i32* @BLT_PLUGS3_OP2, align 4
  %65 = call i32 @DUMP(i32 %64)
  %66 = load i32, i32* @BLT_PLUGS3_CHZ, align 4
  %67 = call i32 @DUMP(i32 %66)
  %68 = load i32, i32* @BLT_PLUGS3_MSZ, align 4
  %69 = call i32 @DUMP(i32 %68)
  %70 = load i32, i32* @BLT_PLUGS3_PGZ, align 4
  %71 = call i32 @DUMP(i32 %70)
  %72 = load i32, i32* @BLT_PLUGT_OP2, align 4
  %73 = call i32 @DUMP(i32 %72)
  %74 = load i32, i32* @BLT_PLUGT_CHZ, align 4
  %75 = call i32 @DUMP(i32 %74)
  %76 = load i32, i32* @BLT_PLUGT_MSZ, align 4
  %77 = call i32 @DUMP(i32 %76)
  %78 = load i32, i32* @BLT_PLUGT_PGZ, align 4
  %79 = call i32 @DUMP(i32 %78)
  %80 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %81 = call i32 @seq_puts(%struct.seq_file* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %82 = load i32, i32* @BLT_NIP, align 4
  %83 = call i32 @DUMP(i32 %82)
  %84 = load i32, i32* @BLT_CIC, align 4
  %85 = call i32 @DUMP(i32 %84)
  %86 = load i32, i32* @BLT_INS, align 4
  %87 = call i32 @DUMP(i32 %86)
  %88 = load i32, i32* @BLT_ACK, align 4
  %89 = call i32 @DUMP(i32 %88)
  %90 = load i32, i32* @BLT_TBA, align 4
  %91 = call i32 @DUMP(i32 %90)
  %92 = load i32, i32* @BLT_TTY, align 4
  %93 = call i32 @DUMP(i32 %92)
  %94 = load i32, i32* @BLT_TXY, align 4
  %95 = call i32 @DUMP(i32 %94)
  %96 = load i32, i32* @BLT_TSZ, align 4
  %97 = call i32 @DUMP(i32 %96)
  %98 = load i32, i32* @BLT_S1BA, align 4
  %99 = call i32 @DUMP(i32 %98)
  %100 = load i32, i32* @BLT_S1TY, align 4
  %101 = call i32 @DUMP(i32 %100)
  %102 = load i32, i32* @BLT_S1XY, align 4
  %103 = call i32 @DUMP(i32 %102)
  %104 = load i32, i32* @BLT_S2BA, align 4
  %105 = call i32 @DUMP(i32 %104)
  %106 = load i32, i32* @BLT_S2TY, align 4
  %107 = call i32 @DUMP(i32 %106)
  %108 = load i32, i32* @BLT_S2XY, align 4
  %109 = call i32 @DUMP(i32 %108)
  %110 = load i32, i32* @BLT_S2SZ, align 4
  %111 = call i32 @DUMP(i32 %110)
  %112 = load i32, i32* @BLT_S3BA, align 4
  %113 = call i32 @DUMP(i32 %112)
  %114 = load i32, i32* @BLT_S3TY, align 4
  %115 = call i32 @DUMP(i32 %114)
  %116 = load i32, i32* @BLT_S3XY, align 4
  %117 = call i32 @DUMP(i32 %116)
  %118 = load i32, i32* @BLT_S3SZ, align 4
  %119 = call i32 @DUMP(i32 %118)
  %120 = load i32, i32* @BLT_FCTL, align 4
  %121 = call i32 @DUMP(i32 %120)
  %122 = load i32, i32* @BLT_RSF, align 4
  %123 = call i32 @DUMP(i32 %122)
  %124 = load i32, i32* @BLT_RZI, align 4
  %125 = call i32 @DUMP(i32 %124)
  %126 = load i32, i32* @BLT_HFP, align 4
  %127 = call i32 @DUMP(i32 %126)
  %128 = load i32, i32* @BLT_VFP, align 4
  %129 = call i32 @DUMP(i32 %128)
  %130 = load i32, i32* @BLT_Y_RSF, align 4
  %131 = call i32 @DUMP(i32 %130)
  %132 = load i32, i32* @BLT_Y_RZI, align 4
  %133 = call i32 @DUMP(i32 %132)
  %134 = load i32, i32* @BLT_Y_HFP, align 4
  %135 = call i32 @DUMP(i32 %134)
  %136 = load i32, i32* @BLT_Y_VFP, align 4
  %137 = call i32 @DUMP(i32 %136)
  %138 = load i32, i32* @BLT_IVMX0, align 4
  %139 = call i32 @DUMP(i32 %138)
  %140 = load i32, i32* @BLT_IVMX1, align 4
  %141 = call i32 @DUMP(i32 %140)
  %142 = load i32, i32* @BLT_IVMX2, align 4
  %143 = call i32 @DUMP(i32 %142)
  %144 = load i32, i32* @BLT_IVMX3, align 4
  %145 = call i32 @DUMP(i32 %144)
  %146 = load i32, i32* @BLT_OVMX0, align 4
  %147 = call i32 @DUMP(i32 %146)
  %148 = load i32, i32* @BLT_OVMX1, align 4
  %149 = call i32 @DUMP(i32 %148)
  %150 = load i32, i32* @BLT_OVMX2, align 4
  %151 = call i32 @DUMP(i32 %150)
  %152 = load i32, i32* @BLT_OVMX3, align 4
  %153 = call i32 @DUMP(i32 %152)
  %154 = load i32, i32* @BLT_DEI, align 4
  %155 = call i32 @DUMP(i32 %154)
  %156 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %157 = call i32 @seq_puts(%struct.seq_file* %156, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %158

158:                                              ; preds = %176, %21
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @BLT_NB_H_COEF, align 4
  %161 = icmp ult i32 %159, %160
  br i1 %161, label %162, label %179

162:                                              ; preds = %158
  %163 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %164 = load i32, i32* %8, align 4
  %165 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %166 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @BLT_HFC_N, align 8
  %169 = add nsw i64 %167, %168
  %170 = load i32, i32* %8, align 4
  %171 = mul i32 %170, 4
  %172 = zext i32 %171 to i64
  %173 = add nsw i64 %169, %172
  %174 = call i32 @readl(i64 %173)
  %175 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %163, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %164, i32 %174)
  br label %176

176:                                              ; preds = %162
  %177 = load i32, i32* %8, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %158

179:                                              ; preds = %158
  store i32 0, i32* %8, align 4
  br label %180

180:                                              ; preds = %198, %179
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @BLT_NB_V_COEF, align 4
  %183 = icmp ult i32 %181, %182
  br i1 %183, label %184, label %201

184:                                              ; preds = %180
  %185 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %186 = load i32, i32* %8, align 4
  %187 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %188 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @BLT_VFC_N, align 8
  %191 = add nsw i64 %189, %190
  %192 = load i32, i32* %8, align 4
  %193 = mul i32 %192, 4
  %194 = zext i32 %193 to i64
  %195 = add nsw i64 %191, %194
  %196 = call i32 @readl(i64 %195)
  %197 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %185, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %186, i32 %196)
  br label %198

198:                                              ; preds = %184
  %199 = load i32, i32* %8, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %8, align 4
  br label %180

201:                                              ; preds = %180
  %202 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %203 = call i32 @seq_puts(%struct.seq_file* %202, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %204

204:                                              ; preds = %222, %201
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @BLT_NB_H_COEF, align 4
  %207 = icmp ult i32 %205, %206
  br i1 %207, label %208, label %225

208:                                              ; preds = %204
  %209 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %210 = load i32, i32* %8, align 4
  %211 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %212 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @BLT_Y_HFC_N, align 8
  %215 = add nsw i64 %213, %214
  %216 = load i32, i32* %8, align 4
  %217 = mul i32 %216, 4
  %218 = zext i32 %217 to i64
  %219 = add nsw i64 %215, %218
  %220 = call i32 @readl(i64 %219)
  %221 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %209, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %210, i32 %220)
  br label %222

222:                                              ; preds = %208
  %223 = load i32, i32* %8, align 4
  %224 = add i32 %223, 1
  store i32 %224, i32* %8, align 4
  br label %204

225:                                              ; preds = %204
  store i32 0, i32* %8, align 4
  br label %226

226:                                              ; preds = %244, %225
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @BLT_NB_V_COEF, align 4
  %229 = icmp ult i32 %227, %228
  br i1 %229, label %230, label %247

230:                                              ; preds = %226
  %231 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %232 = load i32, i32* %8, align 4
  %233 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %234 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @BLT_Y_VFC_N, align 8
  %237 = add nsw i64 %235, %236
  %238 = load i32, i32* %8, align 4
  %239 = mul i32 %238, 4
  %240 = zext i32 %239 to i64
  %241 = add nsw i64 %237, %240
  %242 = call i32 @readl(i64 %241)
  %243 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %231, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %232, i32 %242)
  br label %244

244:                                              ; preds = %230
  %245 = load i32, i32* %8, align 4
  %246 = add i32 %245, 1
  store i32 %246, i32* %8, align 4
  br label %226

247:                                              ; preds = %226
  %248 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %249 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @pm_runtime_put(i32 %250)
  store i32 0, i32* %3, align 4
  br label %252

252:                                              ; preds = %247, %18
  %253 = load i32, i32* %3, align 4
  ret i32 %253
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @DUMP(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
