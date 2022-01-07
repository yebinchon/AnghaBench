; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_cn6xxx_read_csr_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_cn6xxx_read_csr_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"\0A\09 Octeon CSR Registers\0A\0A\00", align 1
@CN6XXX_WIN_WR_ADDR_LO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"\0A[%02x] (WIN_WR_ADDR_LO): %08x\0A\00", align 1
@CN6XXX_WIN_WR_ADDR_HI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"[%02x] (WIN_WR_ADDR_HI): %08x\0A\00", align 1
@CN6XXX_WIN_RD_ADDR_LO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"[%02x] (WIN_RD_ADDR_LO): %08x\0A\00", align 1
@CN6XXX_WIN_RD_ADDR_HI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"[%02x] (WIN_RD_ADDR_HI): %08x\0A\00", align 1
@CN6XXX_WIN_WR_DATA_LO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"[%02x] (WIN_WR_DATA_LO): %08x\0A\00", align 1
@CN6XXX_WIN_WR_DATA_HI = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"[%02x] (WIN_WR_DATA_HI): %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"[%02x] (WIN_WR_MASK_REG): %08x\0A\00", align 1
@CN6XXX_WIN_WR_MASK_REG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"\0A[%x] (INT_ENABLE PORT 0): %08x\0A\00", align 1
@CN6XXX_SLI_INT_ENB64_PORT0 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"\0A[%x] (INT_ENABLE PORT 1): %08x\0A\00", align 1
@CN6XXX_SLI_INT_ENB64_PORT1 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"[%x] (INT_SUM): %08x\0A\00", align 1
@CN6XXX_SLI_INT_SUM64 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"\0A[%x] (PKTS_SENT_%d): %08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"[%x] (PKT_CREDITS_%d): %08x\0A\00", align 1
@CN6XXX_SLI_OQ_INT_LEVEL_PKTS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"\0A[%x] (PKTS_SENT_INT_LEVEL): %08x\0A\00", align 1
@CN6XXX_SLI_OQ_INT_LEVEL_TIME = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [29 x i8] c"[%x] (PKTS_SENT_TIME): %08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"\0A[%x] (INSTR_DOORBELL_%d): %08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"[%x] (INSTR_COUNT_%d): %08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"\0A[%x] (DMA_CNT_0): %08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"[%x] (DMA_INT_LEV_0): %08x\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"[%x] (DMA_TIME_0): %08x\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"\0A[%x] (DMA_CNT_1): %08x\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"[%x] (DMA_INT_LEV_1): %08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"[%x] (DMA_TIME_1): %08x\0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"[%llx] (BAR1_INDEX_%02d): %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.octeon_device*)* @cn6xxx_read_csr_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cn6xxx_read_csr_reg(i8* %0, %struct.octeon_device* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.octeon_device* %1, %struct.octeon_device** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = call i64 (i8*, i8*, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @CN6XXX_WIN_WR_ADDR_LO, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i32, i32* @CN6XXX_WIN_WR_ADDR_LO, align 4
  %24 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @octeon_read_csr(%struct.octeon_device* %24, i32 %25)
  %27 = call i64 (i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @CN6XXX_WIN_WR_ADDR_HI, align 4
  store i32 %32, i32* %5, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i32, i32* @CN6XXX_WIN_WR_ADDR_HI, align 4
  %38 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @octeon_read_csr(%struct.octeon_device* %38, i32 %39)
  %41 = call i64 (i8*, i8*, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* @CN6XXX_WIN_RD_ADDR_LO, align 4
  store i32 %46, i32* %5, align 4
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i32, i32* @CN6XXX_WIN_RD_ADDR_LO, align 4
  %52 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @octeon_read_csr(%struct.octeon_device* %52, i32 %53)
  %55 = call i64 (i8*, i8*, ...) @sprintf(i8* %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* @CN6XXX_WIN_RD_ADDR_HI, align 4
  store i32 %60, i32* %5, align 4
  %61 = load i8*, i8** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i32, i32* @CN6XXX_WIN_RD_ADDR_HI, align 4
  %66 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @octeon_read_csr(%struct.octeon_device* %66, i32 %67)
  %69 = call i64 (i8*, i8*, ...) @sprintf(i8* %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* @CN6XXX_WIN_WR_DATA_LO, align 4
  store i32 %74, i32* %5, align 4
  %75 = load i8*, i8** %3, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i32, i32* @CN6XXX_WIN_WR_DATA_LO, align 4
  %80 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @octeon_read_csr(%struct.octeon_device* %80, i32 %81)
  %83 = call i64 (i8*, i8*, ...) @sprintf(i8* %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %79, i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* @CN6XXX_WIN_WR_DATA_HI, align 4
  store i32 %88, i32* %5, align 4
  %89 = load i8*, i8** %3, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i32, i32* @CN6XXX_WIN_WR_DATA_HI, align 4
  %94 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @octeon_read_csr(%struct.octeon_device* %94, i32 %95)
  %97 = call i64 (i8*, i8*, ...) @sprintf(i8* %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %93, i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %7, align 4
  %102 = load i8*, i8** %3, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i32, i32* @CN6XXX_WIN_WR_MASK_REG, align 4
  %107 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %108 = load i32, i32* @CN6XXX_WIN_WR_MASK_REG, align 4
  %109 = call i32 @octeon_read_csr(%struct.octeon_device* %107, i32 %108)
  %110 = call i64 (i8*, i8*, ...) @sprintf(i8* %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %106, i32 %109)
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %7, align 4
  %115 = load i8*, i8** %3, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i32, i32* @CN6XXX_SLI_INT_ENB64_PORT0, align 4
  %120 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %121 = load i32, i32* @CN6XXX_SLI_INT_ENB64_PORT0, align 4
  %122 = call i32 @octeon_read_csr(%struct.octeon_device* %120, i32 %121)
  %123 = call i64 (i8*, i8*, ...) @sprintf(i8* %118, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %119, i32 %122)
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %7, align 4
  %128 = load i8*, i8** %3, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i32, i32* @CN6XXX_SLI_INT_ENB64_PORT1, align 4
  %133 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %134 = load i32, i32* @CN6XXX_SLI_INT_ENB64_PORT1, align 4
  %135 = call i32 @octeon_read_csr(%struct.octeon_device* %133, i32 %134)
  %136 = call i64 (i8*, i8*, ...) @sprintf(i8* %131, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %132, i32 %135)
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %7, align 4
  %141 = load i8*, i8** %3, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i32, i32* @CN6XXX_SLI_INT_SUM64, align 4
  %146 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %147 = load i32, i32* @CN6XXX_SLI_INT_SUM64, align 4
  %148 = call i32 @octeon_read_csr(%struct.octeon_device* %146, i32 %147)
  %149 = call i64 (i8*, i8*, ...) @sprintf(i8* %144, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %145, i32 %148)
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %149
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %193, %2
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %157 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %196

160:                                              ; preds = %154
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @CN6XXX_SLI_OQ_PKTS_SENT(i32 %161)
  store i32 %162, i32* %5, align 4
  %163 = load i8*, i8** %3, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @octeon_read_csr(%struct.octeon_device* %169, i32 %170)
  %172 = call i64 (i8*, i8*, ...) @sprintf(i8* %166, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %167, i32 %168, i32 %171)
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %172
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @CN6XXX_SLI_OQ_PKTS_CREDIT(i32 %177)
  store i32 %178, i32* %5, align 4
  %179 = load i8*, i8** %3, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %186 = load i32, i32* %5, align 4
  %187 = call i32 @octeon_read_csr(%struct.octeon_device* %185, i32 %186)
  %188 = call i64 (i8*, i8*, ...) @sprintf(i8* %182, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %183, i32 %184, i32 %187)
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %188
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %7, align 4
  br label %193

193:                                              ; preds = %160
  %194 = load i32, i32* %6, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %6, align 4
  br label %154

196:                                              ; preds = %154
  %197 = load i32, i32* @CN6XXX_SLI_OQ_INT_LEVEL_PKTS, align 4
  store i32 %197, i32* %5, align 4
  %198 = load i8*, i8** %3, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  %202 = load i32, i32* %5, align 4
  %203 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %204 = load i32, i32* %5, align 4
  %205 = call i32 @octeon_read_csr(%struct.octeon_device* %203, i32 %204)
  %206 = call i64 (i8*, i8*, ...) @sprintf(i8* %201, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %202, i32 %205)
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %208, %206
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* @CN6XXX_SLI_OQ_INT_LEVEL_TIME, align 4
  store i32 %211, i32* %5, align 4
  %212 = load i8*, i8** %3, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  %216 = load i32, i32* %5, align 4
  %217 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %218 = load i32, i32* %5, align 4
  %219 = call i32 @octeon_read_csr(%struct.octeon_device* %217, i32 %218)
  %220 = call i64 (i8*, i8*, ...) @sprintf(i8* %215, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %216, i32 %219)
  %221 = load i32, i32* %7, align 4
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %222, %220
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %225

225:                                              ; preds = %261, %196
  %226 = load i32, i32* %6, align 4
  %227 = icmp sle i32 %226, 3
  br i1 %227, label %228, label %264

228:                                              ; preds = %225
  %229 = load i32, i32* %6, align 4
  %230 = call i32 @CN6XXX_SLI_IQ_DOORBELL(i32 %229)
  store i32 %230, i32* %8, align 4
  %231 = load i8*, i8** %3, align 8
  %232 = load i32, i32* %7, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %231, i64 %233
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* %6, align 4
  %237 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %238 = load i32, i32* %8, align 4
  %239 = call i32 @octeon_read_csr(%struct.octeon_device* %237, i32 %238)
  %240 = call i64 (i8*, i8*, ...) @sprintf(i8* %234, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i32 %235, i32 %236, i32 %239)
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = add nsw i64 %242, %240
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %7, align 4
  %245 = load i32, i32* %6, align 4
  %246 = call i32 @CN6XXX_SLI_IQ_INSTR_COUNT(i32 %245)
  store i32 %246, i32* %8, align 4
  %247 = load i8*, i8** %3, align 8
  %248 = load i32, i32* %7, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8, i8* %247, i64 %249
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* %6, align 4
  %253 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %254 = load i32, i32* %8, align 4
  %255 = call i32 @octeon_read_csr(%struct.octeon_device* %253, i32 %254)
  %256 = call i64 (i8*, i8*, ...) @sprintf(i8* %250, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i32 %251, i32 %252, i32 %255)
  %257 = load i32, i32* %7, align 4
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %258, %256
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %7, align 4
  br label %261

261:                                              ; preds = %228
  %262 = load i32, i32* %6, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %6, align 4
  br label %225

264:                                              ; preds = %225
  %265 = load i8*, i8** %3, align 8
  %266 = load i32, i32* %7, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %265, i64 %267
  %269 = call i32 @CN6XXX_DMA_CNT(i32 0)
  %270 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %271 = call i32 @CN6XXX_DMA_CNT(i32 0)
  %272 = call i32 @octeon_read_csr(%struct.octeon_device* %270, i32 %271)
  %273 = call i64 (i8*, i8*, ...) @sprintf(i8* %268, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 %269, i32 %272)
  %274 = load i32, i32* %7, align 4
  %275 = sext i32 %274 to i64
  %276 = add nsw i64 %275, %273
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %7, align 4
  %278 = call i32 @CN6XXX_DMA_PKT_INT_LEVEL(i32 0)
  store i32 %278, i32* %5, align 4
  %279 = load i8*, i8** %3, align 8
  %280 = load i32, i32* %7, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8, i8* %279, i64 %281
  %283 = call i32 @CN6XXX_DMA_PKT_INT_LEVEL(i32 0)
  %284 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %285 = load i32, i32* %5, align 4
  %286 = call i32 @octeon_read_csr(%struct.octeon_device* %284, i32 %285)
  %287 = call i64 (i8*, i8*, ...) @sprintf(i8* %282, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i32 %283, i32 %286)
  %288 = load i32, i32* %7, align 4
  %289 = sext i32 %288 to i64
  %290 = add nsw i64 %289, %287
  %291 = trunc i64 %290 to i32
  store i32 %291, i32* %7, align 4
  %292 = call i32 @CN6XXX_DMA_TIME_INT_LEVEL(i32 0)
  store i32 %292, i32* %5, align 4
  %293 = load i8*, i8** %3, align 8
  %294 = load i32, i32* %7, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %293, i64 %295
  %297 = call i32 @CN6XXX_DMA_TIME_INT_LEVEL(i32 0)
  %298 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %299 = load i32, i32* %5, align 4
  %300 = call i32 @octeon_read_csr(%struct.octeon_device* %298, i32 %299)
  %301 = call i64 (i8*, i8*, ...) @sprintf(i8* %296, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i32 %297, i32 %300)
  %302 = load i32, i32* %7, align 4
  %303 = sext i32 %302 to i64
  %304 = add nsw i64 %303, %301
  %305 = trunc i64 %304 to i32
  store i32 %305, i32* %7, align 4
  %306 = load i8*, i8** %3, align 8
  %307 = load i32, i32* %7, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, i8* %306, i64 %308
  %310 = call i32 @CN6XXX_DMA_CNT(i32 1)
  %311 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %312 = call i32 @CN6XXX_DMA_CNT(i32 1)
  %313 = call i32 @octeon_read_csr(%struct.octeon_device* %311, i32 %312)
  %314 = call i64 (i8*, i8*, ...) @sprintf(i8* %309, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32 %310, i32 %313)
  %315 = load i32, i32* %7, align 4
  %316 = sext i32 %315 to i64
  %317 = add nsw i64 %316, %314
  %318 = trunc i64 %317 to i32
  store i32 %318, i32* %7, align 4
  %319 = call i32 @CN6XXX_DMA_PKT_INT_LEVEL(i32 1)
  store i32 %319, i32* %5, align 4
  %320 = load i8*, i8** %3, align 8
  %321 = load i32, i32* %7, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8, i8* %320, i64 %322
  %324 = call i32 @CN6XXX_DMA_PKT_INT_LEVEL(i32 1)
  %325 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %326 = load i32, i32* %5, align 4
  %327 = call i32 @octeon_read_csr(%struct.octeon_device* %325, i32 %326)
  %328 = call i64 (i8*, i8*, ...) @sprintf(i8* %323, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 %324, i32 %327)
  %329 = load i32, i32* %7, align 4
  %330 = sext i32 %329 to i64
  %331 = add nsw i64 %330, %328
  %332 = trunc i64 %331 to i32
  store i32 %332, i32* %7, align 4
  %333 = call i32 @CN6XXX_DMA_PKT_INT_LEVEL(i32 1)
  store i32 %333, i32* %5, align 4
  %334 = load i8*, i8** %3, align 8
  %335 = load i32, i32* %7, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8, i8* %334, i64 %336
  %338 = call i32 @CN6XXX_DMA_TIME_INT_LEVEL(i32 1)
  %339 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %340 = load i32, i32* %5, align 4
  %341 = call i32 @octeon_read_csr(%struct.octeon_device* %339, i32 %340)
  %342 = call i64 (i8*, i8*, ...) @sprintf(i8* %337, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i32 %338, i32 %341)
  %343 = load i32, i32* %7, align 4
  %344 = sext i32 %343 to i64
  %345 = add nsw i64 %344, %342
  %346 = trunc i64 %345 to i32
  store i32 %346, i32* %7, align 4
  %347 = load i8*, i8** %3, align 8
  %348 = load i32, i32* %7, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8, i8* %347, i64 %349
  %351 = call i64 (i8*, i8*, ...) @sprintf(i8* %350, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  %352 = load i32, i32* %7, align 4
  %353 = sext i32 %352 to i64
  %354 = add nsw i64 %353, %351
  %355 = trunc i64 %354 to i32
  store i32 %355, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %356

356:                                              ; preds = %383, %264
  %357 = load i32, i32* %6, align 4
  %358 = icmp slt i32 %357, 16
  br i1 %358, label %359, label %386

359:                                              ; preds = %356
  %360 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %361 = load i32, i32* %6, align 4
  %362 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %363 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @CN6XXX_BAR1_REG(i32 %361, i32 %364)
  %366 = call i32 @lio_pci_readq(%struct.octeon_device* %360, i32 %365)
  store i32 %366, i32* %5, align 4
  %367 = load i8*, i8** %3, align 8
  %368 = load i32, i32* %7, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i8, i8* %367, i64 %369
  %371 = load i32, i32* %6, align 4
  %372 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %373 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @CN6XXX_BAR1_REG(i32 %371, i32 %374)
  %376 = load i32, i32* %6, align 4
  %377 = load i32, i32* %5, align 4
  %378 = call i64 (i8*, i8*, ...) @sprintf(i8* %370, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i32 %375, i32 %376, i32 %377)
  %379 = load i32, i32* %7, align 4
  %380 = sext i32 %379 to i64
  %381 = add nsw i64 %380, %378
  %382 = trunc i64 %381 to i32
  store i32 %382, i32* %7, align 4
  br label %383

383:                                              ; preds = %359
  %384 = load i32, i32* %6, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %6, align 4
  br label %356

386:                                              ; preds = %356
  %387 = load i32, i32* %7, align 4
  ret i32 %387
}

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @octeon_read_csr(%struct.octeon_device*, i32) #1

declare dso_local i32 @CN6XXX_SLI_OQ_PKTS_SENT(i32) #1

declare dso_local i32 @CN6XXX_SLI_OQ_PKTS_CREDIT(i32) #1

declare dso_local i32 @CN6XXX_SLI_IQ_DOORBELL(i32) #1

declare dso_local i32 @CN6XXX_SLI_IQ_INSTR_COUNT(i32) #1

declare dso_local i32 @CN6XXX_DMA_CNT(i32) #1

declare dso_local i32 @CN6XXX_DMA_PKT_INT_LEVEL(i32) #1

declare dso_local i32 @CN6XXX_DMA_TIME_INT_LEVEL(i32) #1

declare dso_local i32 @lio_pci_readq(%struct.octeon_device*, i32) #1

declare dso_local i32 @CN6XXX_BAR1_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
