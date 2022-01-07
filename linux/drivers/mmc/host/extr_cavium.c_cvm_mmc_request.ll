; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_cvm_mmc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_cvm_mmc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.mmc_command* }
%struct.mmc_command = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }
%struct.cvm_mmc_slot = type { i32, %struct.cvm_mmc_host* }
%struct.cvm_mmc_host = type { i32, i64, i32, i32 (%struct.cvm_mmc_host*, i32)*, %struct.mmc_request*, i32 (%struct.cvm_mmc_host*)* }
%struct.cvm_mmc_cr_mods = type { i32, i32 }

@MMC_READ_MULTIPLE_BLOCK = common dso_local global i32 0, align 4
@MMC_WRITE_MULTIPLE_BLOCK = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@MIO_EMM_INT_CMD_DONE = common dso_local global i32 0, align 4
@MIO_EMM_INT_CMD_ERR = common dso_local global i32 0, align 4
@MIO_EMM_CMD_VAL = common dso_local global i32 0, align 4
@MIO_EMM_CMD_CTYPE_XOR = common dso_local global i32 0, align 4
@MIO_EMM_CMD_RTYPE_XOR = common dso_local global i32 0, align 4
@MIO_EMM_CMD_IDX = common dso_local global i32 0, align 4
@MIO_EMM_CMD_ARG = common dso_local global i32 0, align 4
@MMC_CMD_ADTC = common dso_local global i64 0, align 8
@MIO_EMM_CMD_OFFSET = common dso_local global i32 0, align 4
@MIO_EMM_RSP_STS_DMA_VAL = common dso_local global i32 0, align 4
@MIO_EMM_RSP_STS_CMD_VAL = common dso_local global i32 0, align 4
@MIO_EMM_RSP_STS_SWITCH_VAL = common dso_local global i32 0, align 4
@MIO_EMM_RSP_STS_DMA_PEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Bad status: %llx before command write\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @cvm_mmc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_mmc_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.cvm_mmc_slot*, align 8
  %6 = alloca %struct.cvm_mmc_host*, align 8
  %7 = alloca %struct.mmc_command*, align 8
  %8 = alloca %struct.cvm_mmc_cr_mods, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cvm_mmc_cr_mods, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %13 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %14 = call %struct.cvm_mmc_slot* @mmc_priv(%struct.mmc_host* %13)
  store %struct.cvm_mmc_slot* %14, %struct.cvm_mmc_slot** %5, align 8
  %15 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %16 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %15, i32 0, i32 1
  %17 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %16, align 8
  store %struct.cvm_mmc_host* %17, %struct.cvm_mmc_host** %6, align 8
  %18 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %19 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %18, i32 0, i32 0
  %20 = load %struct.mmc_command*, %struct.mmc_command** %19, align 8
  store %struct.mmc_command* %20, %struct.mmc_command** %7, align 8
  store i32 100, i32* %11, align 4
  %21 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %22 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %21, i32 0, i32 5
  %23 = load i32 (%struct.cvm_mmc_host*)*, i32 (%struct.cvm_mmc_host*)** %22, align 8
  %24 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %25 = call i32 %23(%struct.cvm_mmc_host* %24)
  %26 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %27 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MMC_READ_MULTIPLE_BLOCK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %2
  %32 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %33 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MMC_WRITE_MULTIPLE_BLOCK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31, %2
  %38 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %39 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  call void @cvm_mmc_dma_request(%struct.mmc_host* %38, %struct.mmc_request* %39)
  br label %221

40:                                               ; preds = %31
  %41 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %42 = call i32 @cvm_mmc_switch_to(%struct.cvm_mmc_slot* %41)
  %43 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %44 = call i64 @cvm_mmc_get_cr_mods(%struct.mmc_command* %43)
  %45 = bitcast %struct.cvm_mmc_cr_mods* %12 to i64*
  store i64 %44, i64* %45, align 4
  %46 = bitcast %struct.cvm_mmc_cr_mods* %8 to i8*
  %47 = bitcast %struct.cvm_mmc_cr_mods* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 8, i1 false)
  %48 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %49 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %48, i32 0, i32 4
  %50 = load %struct.mmc_request*, %struct.mmc_request** %49, align 8
  %51 = call i32 @WARN_ON(%struct.mmc_request* %50)
  %52 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %53 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %54 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %53, i32 0, i32 4
  store %struct.mmc_request* %52, %struct.mmc_request** %54, align 8
  %55 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %56 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = icmp ne %struct.TYPE_2__* %57, null
  br i1 %58, label %59, label %92

59:                                               ; preds = %40
  %60 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %61 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @MMC_DATA_READ, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %70 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %71 = call i32 @do_read_request(%struct.cvm_mmc_host* %69, %struct.mmc_request* %70)
  br label %76

72:                                               ; preds = %59
  %73 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %74 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %75 = call i32 @do_write_request(%struct.cvm_mmc_host* %73, %struct.mmc_request* %74)
  br label %76

76:                                               ; preds = %72, %68
  %77 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %78 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %85 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %86 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @set_wdog(%struct.cvm_mmc_slot* %84, i64 %89)
  br label %91

91:                                               ; preds = %83, %76
  br label %95

92:                                               ; preds = %40
  %93 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %94 = call i32 @set_wdog(%struct.cvm_mmc_slot* %93, i64 0)
  br label %95

95:                                               ; preds = %92, %91
  %96 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %97 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  %98 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %99 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %98, i32 0, i32 3
  %100 = load i32 (%struct.cvm_mmc_host*, i32)*, i32 (%struct.cvm_mmc_host*, i32)** %99, align 8
  %101 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %102 = load i32, i32* @MIO_EMM_INT_CMD_DONE, align 4
  %103 = load i32, i32* @MIO_EMM_INT_CMD_ERR, align 4
  %104 = or i32 %102, %103
  %105 = call i32 %100(%struct.cvm_mmc_host* %101, i32 %104)
  %106 = load i32, i32* @MIO_EMM_CMD_VAL, align 4
  %107 = call i32 @FIELD_PREP(i32 %106, i32 1)
  %108 = load i32, i32* @MIO_EMM_CMD_CTYPE_XOR, align 4
  %109 = getelementptr inbounds %struct.cvm_mmc_cr_mods, %struct.cvm_mmc_cr_mods* %8, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @FIELD_PREP(i32 %108, i32 %110)
  %112 = or i32 %107, %111
  %113 = load i32, i32* @MIO_EMM_CMD_RTYPE_XOR, align 4
  %114 = getelementptr inbounds %struct.cvm_mmc_cr_mods, %struct.cvm_mmc_cr_mods* %8, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @FIELD_PREP(i32 %113, i32 %115)
  %117 = or i32 %112, %116
  %118 = load i32, i32* @MIO_EMM_CMD_IDX, align 4
  %119 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %120 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @FIELD_PREP(i32 %118, i32 %121)
  %123 = or i32 %117, %122
  %124 = load i32, i32* @MIO_EMM_CMD_ARG, align 4
  %125 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %126 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @FIELD_PREP(i32 %124, i32 %127)
  %129 = or i32 %123, %128
  store i32 %129, i32* %9, align 4
  %130 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %131 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @set_bus_id(i32* %9, i32 %132)
  %134 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %135 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %134, i32 0, i32 2
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = icmp ne %struct.TYPE_2__* %136, null
  br i1 %137, label %138, label %161

138:                                              ; preds = %95
  %139 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %140 = call i64 @mmc_cmd_type(%struct.mmc_command* %139)
  %141 = load i64, i64* @MMC_CMD_ADTC, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %161

143:                                              ; preds = %138
  %144 = load i32, i32* @MIO_EMM_CMD_OFFSET, align 4
  %145 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %146 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %145, i32 0, i32 2
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %151 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %150, i32 0, i32 2
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = mul nsw i32 %149, %154
  %156 = sdiv i32 %155, 8
  %157 = sub nsw i32 64, %156
  %158 = call i32 @FIELD_PREP(i32 %144, i32 %157)
  %159 = load i32, i32* %9, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %9, align 4
  br label %161

161:                                              ; preds = %143, %138, %95
  %162 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %163 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %166 = call i64 @MIO_EMM_STS_MASK(%struct.cvm_mmc_host* %165)
  %167 = add nsw i64 %164, %166
  %168 = call i32 @writeq(i32 0, i64 %167)
  br label %169

169:                                              ; preds = %201, %161
  %170 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %171 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %174 = call i64 @MIO_EMM_RSP_STS(%struct.cvm_mmc_host* %173)
  %175 = add nsw i64 %172, %174
  %176 = call i32 @readq(i64 %175)
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* @MIO_EMM_RSP_STS_DMA_VAL, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %196, label %181

181:                                              ; preds = %169
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @MIO_EMM_RSP_STS_CMD_VAL, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %196, label %186

186:                                              ; preds = %181
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* @MIO_EMM_RSP_STS_SWITCH_VAL, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %186
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* @MIO_EMM_RSP_STS_DMA_PEND, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %191, %186, %181, %169
  %197 = call i32 @udelay(i32 10)
  %198 = load i32, i32* %11, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %11, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %169

202:                                              ; preds = %196
  br label %203

203:                                              ; preds = %202, %191
  %204 = load i32, i32* %11, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %203
  %207 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %208 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = call i32 @dev_err(i32 %209, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %210)
  br label %212

212:                                              ; preds = %206, %203
  %213 = load i32, i32* %9, align 4
  %214 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %215 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %218 = call i64 @MIO_EMM_CMD(%struct.cvm_mmc_host* %217)
  %219 = add nsw i64 %216, %218
  %220 = call i32 @writeq(i32 %213, i64 %219)
  br label %221

221:                                              ; preds = %212, %37
  ret void
}

declare dso_local %struct.cvm_mmc_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local void @cvm_mmc_dma_request(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @cvm_mmc_switch_to(%struct.cvm_mmc_slot*) #1

declare dso_local i64 @cvm_mmc_get_cr_mods(%struct.mmc_command*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @WARN_ON(%struct.mmc_request*) #1

declare dso_local i32 @do_read_request(%struct.cvm_mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @do_write_request(%struct.cvm_mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @set_wdog(%struct.cvm_mmc_slot*, i64) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @set_bus_id(i32*, i32) #1

declare dso_local i64 @mmc_cmd_type(%struct.mmc_command*) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i64 @MIO_EMM_STS_MASK(%struct.cvm_mmc_host*) #1

declare dso_local i32 @readq(i64) #1

declare dso_local i64 @MIO_EMM_RSP_STS(%struct.cvm_mmc_host*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @MIO_EMM_CMD(%struct.cvm_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
