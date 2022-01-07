; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi.c_intel_spi_dump_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi.c_intel_spi_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_spi = type { i32, i32, i64, i32, i64, i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"BFPREG=0x%08x\0A\00", align 1
@BFPREG = common dso_local global i64 0, align 8
@HSFSTS_CTL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"HSFSTS_CTL=0x%08x\0A\00", align 1
@HSFSTS_CTL_FLOCKDN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"-> Locked\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"FADDR=0x%08x\0A\00", align 1
@FADDR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"DLOCK=0x%08x\0A\00", align 1
@DLOCK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"FDATA(%d)=0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"FRACC=0x%08x\0A\00", align 1
@FRACC = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"FREG(%d)=0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"PR(%d)=0x%08x\0A\00", align 1
@SSFSTS_CTL = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"SSFSTS_CTL=0x%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"PREOP_OPTYPE=0x%08x\0A\00", align 1
@PREOP_OPTYPE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"OPMENU0=0x%08x\0A\00", align 1
@OPMENU0 = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"OPMENU1=0x%08x\0A\00", align 1
@OPMENU1 = common dso_local global i64 0, align 8
@INTEL_SPI_BYT = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [12 x i8] c"BCR=0x%08x\0A\00", align 1
@BYT_BCR = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"LVSCC=0x%08x\0A\00", align 1
@LVSCC = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [14 x i8] c"UVSCC=0x%08x\0A\00", align 1
@UVSCC = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [20 x i8] c"Protected regions:\0A\00", align 1
@PR_WPE = common dso_local global i32 0, align 4
@PR_RPE = common dso_local global i32 0, align 4
@PR_LIMIT_MASK = common dso_local global i32 0, align 4
@PR_LIMIT_SHIFT = common dso_local global i32 0, align 4
@PR_BASE_MASK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [41 x i8] c" %02d base: 0x%08x limit: 0x%08x [%c%c]\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Flash regions:\0A\00", align 1
@FREG_BASE_MASK = common dso_local global i32 0, align 4
@FREG_LIMIT_MASK = common dso_local global i32 0, align 4
@FREG_LIMIT_SHIFT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [16 x i8] c" %02d disabled\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c" %02d base: 0x%08x limit: 0x%08x\0A\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"Using %cW sequencer for register access\0A\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"Using %cW sequencer for erase operation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_spi*)* @intel_spi_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_spi_dump_regs(%struct.intel_spi* %0) #0 {
  %2 = alloca %struct.intel_spi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_spi* %0, %struct.intel_spi** %2, align 8
  %10 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %11 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %14 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BFPREG, align 8
  %17 = add nsw i64 %15, %16
  %18 = call signext i8 @readl(i64 %17)
  %19 = sext i8 %18 to i32
  %20 = call i32 (i32, i8*, ...) @dev_dbg(i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %22 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HSFSTS_CTL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call signext i8 @readl(i64 %25)
  %27 = sext i8 %26 to i32
  store i32 %27, i32* %3, align 4
  %28 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %29 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (i32, i8*, ...) @dev_dbg(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @HSFSTS_CTL_FLOCKDN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %39 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32, i8*, ...) @dev_dbg(i32 %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %1
  %43 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %44 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %47 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @FADDR, align 8
  %50 = add nsw i64 %48, %49
  %51 = call signext i8 @readl(i64 %50)
  %52 = sext i8 %51 to i32
  %53 = call i32 (i32, i8*, ...) @dev_dbg(i32 %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %55 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %58 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DLOCK, align 8
  %61 = add nsw i64 %59, %60
  %62 = call signext i8 @readl(i64 %61)
  %63 = sext i8 %62 to i32
  %64 = call i32 (i32, i8*, ...) @dev_dbg(i32 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %82, %42
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 16
  br i1 %67, label %68, label %85

68:                                               ; preds = %65
  %69 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %70 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %74 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i64 @FDATA(i32 %76)
  %78 = add nsw i64 %75, %77
  %79 = call signext i8 @readl(i64 %78)
  %80 = sext i8 %79 to i32
  %81 = call i32 (i32, i8*, ...) @dev_dbg(i32 %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %72, i32 %80)
  br label %82

82:                                               ; preds = %68
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %65

85:                                               ; preds = %65
  %86 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %87 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %90 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @FRACC, align 8
  %93 = add nsw i64 %91, %92
  %94 = call signext i8 @readl(i64 %93)
  %95 = sext i8 %94 to i32
  %96 = call i32 (i32, i8*, ...) @dev_dbg(i32 %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %117, %85
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %100 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %97
  %104 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %105 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %109 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = call i64 @FREG(i32 %111)
  %113 = add nsw i64 %110, %112
  %114 = call signext i8 @readl(i64 %113)
  %115 = sext i8 %114 to i32
  %116 = call i32 (i32, i8*, ...) @dev_dbg(i32 %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %107, i32 %115)
  br label %117

117:                                              ; preds = %103
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %97

120:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %141, %120
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %124 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %144

127:                                              ; preds = %121
  %128 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %129 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %133 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %132, i32 0, i32 6
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = call i64 @PR(i32 %135)
  %137 = add nsw i64 %134, %136
  %138 = call signext i8 @readl(i64 %137)
  %139 = sext i8 %138 to i32
  %140 = call i32 (i32, i8*, ...) @dev_dbg(i32 %130, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %131, i32 %139)
  br label %141

141:                                              ; preds = %127
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %4, align 4
  br label %121

144:                                              ; preds = %121
  %145 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %146 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %145, i32 0, i32 8
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @SSFSTS_CTL, align 8
  %149 = add nsw i64 %147, %148
  %150 = call signext i8 @readl(i64 %149)
  %151 = sext i8 %150 to i32
  store i32 %151, i32* %3, align 4
  %152 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %153 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %3, align 4
  %156 = call i32 (i32, i8*, ...) @dev_dbg(i32 %154, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %155)
  %157 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %158 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %161 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %160, i32 0, i32 8
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @PREOP_OPTYPE, align 8
  %164 = add nsw i64 %162, %163
  %165 = call signext i8 @readl(i64 %164)
  %166 = sext i8 %165 to i32
  %167 = call i32 (i32, i8*, ...) @dev_dbg(i32 %159, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %166)
  %168 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %169 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %172 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %171, i32 0, i32 8
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @OPMENU0, align 8
  %175 = add nsw i64 %173, %174
  %176 = call signext i8 @readl(i64 %175)
  %177 = sext i8 %176 to i32
  %178 = call i32 (i32, i8*, ...) @dev_dbg(i32 %170, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %177)
  %179 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %180 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %183 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %182, i32 0, i32 8
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @OPMENU1, align 8
  %186 = add nsw i64 %184, %185
  %187 = call signext i8 @readl(i64 %186)
  %188 = sext i8 %187 to i32
  %189 = call i32 (i32, i8*, ...) @dev_dbg(i32 %181, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %188)
  %190 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %191 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %190, i32 0, i32 7
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @INTEL_SPI_BYT, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %209

197:                                              ; preds = %144
  %198 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %199 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %202 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @BYT_BCR, align 8
  %205 = add nsw i64 %203, %204
  %206 = call signext i8 @readl(i64 %205)
  %207 = sext i8 %206 to i32
  %208 = call i32 (i32, i8*, ...) @dev_dbg(i32 %200, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %207)
  br label %209

209:                                              ; preds = %197, %144
  %210 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %211 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %214 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %213, i32 0, i32 5
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @LVSCC, align 8
  %217 = add nsw i64 %215, %216
  %218 = call signext i8 @readl(i64 %217)
  %219 = sext i8 %218 to i32
  %220 = call i32 (i32, i8*, ...) @dev_dbg(i32 %212, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %219)
  %221 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %222 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %225 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %224, i32 0, i32 5
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @UVSCC, align 8
  %228 = add nsw i64 %226, %227
  %229 = call signext i8 @readl(i64 %228)
  %230 = sext i8 %229 to i32
  %231 = call i32 (i32, i8*, ...) @dev_dbg(i32 %223, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %230)
  %232 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %233 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = call i32 (i32, i8*, ...) @dev_dbg(i32 %234, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %236

236:                                              ; preds = %289, %209
  %237 = load i32, i32* %4, align 4
  %238 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %239 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp slt i32 %237, %240
  br i1 %241, label %242, label %292

242:                                              ; preds = %236
  %243 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %244 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %243, i32 0, i32 6
  %245 = load i64, i64* %244, align 8
  %246 = load i32, i32* %4, align 4
  %247 = call i64 @PR(i32 %246)
  %248 = add nsw i64 %245, %247
  %249 = call signext i8 @readl(i64 %248)
  %250 = sext i8 %249 to i32
  store i32 %250, i32* %3, align 4
  %251 = load i32, i32* %3, align 4
  %252 = load i32, i32* @PR_WPE, align 4
  %253 = load i32, i32* @PR_RPE, align 4
  %254 = or i32 %252, %253
  %255 = and i32 %251, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %242
  br label %289

258:                                              ; preds = %242
  %259 = load i32, i32* %3, align 4
  %260 = load i32, i32* @PR_LIMIT_MASK, align 4
  %261 = and i32 %259, %260
  %262 = load i32, i32* @PR_LIMIT_SHIFT, align 4
  %263 = ashr i32 %261, %262
  store i32 %263, i32* %6, align 4
  %264 = load i32, i32* %3, align 4
  %265 = load i32, i32* @PR_BASE_MASK, align 4
  %266 = and i32 %264, %265
  store i32 %266, i32* %5, align 4
  %267 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %268 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* %4, align 4
  %271 = load i32, i32* %5, align 4
  %272 = shl i32 %271, 12
  %273 = load i32, i32* %6, align 4
  %274 = shl i32 %273, 12
  %275 = or i32 %274, 4095
  %276 = load i32, i32* %3, align 4
  %277 = load i32, i32* @PR_WPE, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  %280 = zext i1 %279 to i64
  %281 = select i1 %279, i32 87, i32 46
  %282 = load i32, i32* %3, align 4
  %283 = load i32, i32* @PR_RPE, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  %286 = zext i1 %285 to i64
  %287 = select i1 %285, i32 82, i32 46
  %288 = call i32 (i32, i8*, ...) @dev_dbg(i32 %269, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i32 %270, i32 %272, i32 %275, i32 %281, i32 %287)
  br label %289

289:                                              ; preds = %258, %257
  %290 = load i32, i32* %4, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %4, align 4
  br label %236

292:                                              ; preds = %236
  %293 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %294 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = call i32 (i32, i8*, ...) @dev_dbg(i32 %295, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %297

297:                                              ; preds = %347, %292
  %298 = load i32, i32* %4, align 4
  %299 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %300 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = icmp slt i32 %298, %301
  br i1 %302, label %303, label %350

303:                                              ; preds = %297
  %304 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %305 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %304, i32 0, i32 5
  %306 = load i64, i64* %305, align 8
  %307 = load i32, i32* %4, align 4
  %308 = call i64 @FREG(i32 %307)
  %309 = add nsw i64 %306, %308
  %310 = call signext i8 @readl(i64 %309)
  %311 = sext i8 %310 to i32
  store i32 %311, i32* %7, align 4
  %312 = load i32, i32* %7, align 4
  %313 = load i32, i32* @FREG_BASE_MASK, align 4
  %314 = and i32 %312, %313
  store i32 %314, i32* %8, align 4
  %315 = load i32, i32* %7, align 4
  %316 = load i32, i32* @FREG_LIMIT_MASK, align 4
  %317 = and i32 %315, %316
  %318 = load i32, i32* @FREG_LIMIT_SHIFT, align 4
  %319 = ashr i32 %317, %318
  store i32 %319, i32* %9, align 4
  %320 = load i32, i32* %8, align 4
  %321 = load i32, i32* %9, align 4
  %322 = icmp sge i32 %320, %321
  br i1 %322, label %329, label %323

323:                                              ; preds = %303
  %324 = load i32, i32* %4, align 4
  %325 = icmp sgt i32 %324, 0
  br i1 %325, label %326, label %335

326:                                              ; preds = %323
  %327 = load i32, i32* %9, align 4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %335

329:                                              ; preds = %326, %303
  %330 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %331 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* %4, align 4
  %334 = call i32 (i32, i8*, ...) @dev_dbg(i32 %332, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 %333)
  br label %346

335:                                              ; preds = %326, %323
  %336 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %337 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 8
  %339 = load i32, i32* %4, align 4
  %340 = load i32, i32* %8, align 4
  %341 = shl i32 %340, 12
  %342 = load i32, i32* %9, align 4
  %343 = shl i32 %342, 12
  %344 = or i32 %343, 4095
  %345 = call i32 (i32, i8*, ...) @dev_dbg(i32 %338, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0), i32 %339, i32 %341, i32 %344)
  br label %346

346:                                              ; preds = %335, %329
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %4, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %4, align 4
  br label %297

350:                                              ; preds = %297
  %351 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %352 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %355 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %354, i32 0, i32 4
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  %358 = zext i1 %357 to i64
  %359 = select i1 %357, i32 83, i32 72
  %360 = call i32 (i32, i8*, ...) @dev_dbg(i32 %353, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0), i32 %359)
  %361 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %362 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 8
  %364 = load %struct.intel_spi*, %struct.intel_spi** %2, align 8
  %365 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %364, i32 0, i32 2
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, 0
  %368 = zext i1 %367 to i64
  %369 = select i1 %367, i32 83, i32 72
  %370 = call i32 (i32, i8*, ...) @dev_dbg(i32 %363, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0), i32 %369)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local signext i8 @readl(i64) #1

declare dso_local i64 @FDATA(i32) #1

declare dso_local i64 @FREG(i32) #1

declare dso_local i64 @PR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
