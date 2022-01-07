; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_start_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_start_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_davinci_host = type { i64, i64, i64, i32, i64, i64, i64, i32*, i32, %struct.mmc_command* }
%struct.mmc_command = type { i32, i32, i64 }

@.str = private unnamed_addr constant [21 x i8] c"CMD%d, arg 0x%08x%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c", R1/R5/R6/R7 response\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c", R1b response\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c", R2 response\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c", R3/R4 response\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c", (R? response)\00", align 1
@MMCCMD_BSYEXP = common dso_local global i32 0, align 4
@MMCCMD_RSPFMT_R1456 = common dso_local global i32 0, align 4
@MMCCMD_RSPFMT_R2 = common dso_local global i32 0, align 4
@MMCCMD_RSPFMT_R3 = common dso_local global i32 0, align 4
@MMCCMD_RSPFMT_NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"unknown resp_type %04x\0A\00", align 1
@MMCCMD_DMATRIG = common dso_local global i32 0, align 4
@MMC_CTLR_VERSION_2 = common dso_local global i64 0, align 8
@DAVINCI_MMC_DATADIR_READ = common dso_local global i64 0, align 8
@MMCCMD_WDATX = common dso_local global i32 0, align 4
@DAVINCI_MMC_DATADIR_WRITE = common dso_local global i64 0, align 8
@MMCCMD_DTRW = common dso_local global i32 0, align 4
@MMC_BUSMODE_PUSHPULL = common dso_local global i64 0, align 8
@MMCCMD_PPLEN = common dso_local global i32 0, align 4
@DAVINCI_MMCTOR = common dso_local global i64 0, align 8
@MMCST0_RSPDNE = common dso_local global i32 0, align 4
@MMCST0_CRCRS = common dso_local global i32 0, align 4
@MMCST0_TOUTRS = common dso_local global i32 0, align 4
@MMCST0_DATDNE = common dso_local global i32 0, align 4
@MMCST0_CRCWR = common dso_local global i32 0, align 4
@MMCST0_DXRDY = common dso_local global i32 0, align 4
@MMCST0_CRCRD = common dso_local global i32 0, align 4
@MMCST0_TOUTRD = common dso_local global i32 0, align 4
@MMCST0_DRRDY = common dso_local global i32 0, align 4
@rw_threshold = common dso_local global i32 0, align 4
@DAVINCI_MMCARGHL = common dso_local global i64 0, align 8
@DAVINCI_MMCCMD = common dso_local global i64 0, align 8
@poll_threshold = common dso_local global i64 0, align 8
@poll_loopcount = common dso_local global i32 0, align 4
@DAVINCI_MMCIM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_davinci_host*, %struct.mmc_command*)* @mmc_davinci_start_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_davinci_start_command(%struct.mmc_davinci_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.mmc_davinci_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.mmc_davinci_host* %0, %struct.mmc_davinci_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %11 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @mmc_dev(i32 %12)
  %14 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %21 = call i32 @mmc_resp_type(%struct.mmc_command* %20)
  switch i32 %21, label %26 [
    i32 131, label %22
    i32 130, label %23
    i32 129, label %24
    i32 128, label %25
  ]

22:                                               ; preds = %2
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %27

23:                                               ; preds = %2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %27

24:                                               ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %27

25:                                               ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %27

26:                                               ; preds = %2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %27

27:                                               ; preds = %26, %25, %24, %23, %22
  %28 = load i8*, i8** %7, align 8
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i8* %29)
  %31 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %32 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %33 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %32, i32 0, i32 9
  store %struct.mmc_command* %31, %struct.mmc_command** %33, align 8
  %34 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %35 = call i32 @mmc_resp_type(%struct.mmc_command* %34)
  switch i32 %35, label %52 [
    i32 130, label %36
    i32 131, label %40
    i32 129, label %44
    i32 128, label %48
  ]

36:                                               ; preds = %27
  %37 = load i32, i32* @MMCCMD_BSYEXP, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %27, %36
  %41 = load i32, i32* @MMCCMD_RSPFMT_R1456, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %63

44:                                               ; preds = %27
  %45 = load i32, i32* @MMCCMD_RSPFMT_R2, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %63

48:                                               ; preds = %27
  %49 = load i32, i32* @MMCCMD_RSPFMT_R3, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %63

52:                                               ; preds = %27
  %53 = load i32, i32* @MMCCMD_RSPFMT_NONE, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %57 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @mmc_dev(i32 %58)
  %60 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %61 = call i32 @mmc_resp_type(%struct.mmc_command* %60)
  %62 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %52, %48, %44, %40
  %64 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %65 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %70 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  %74 = load i32, i32* @MMCCMD_DMATRIG, align 4
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %73, %63
  %78 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %79 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MMC_CTLR_VERSION_2, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %77
  %84 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %85 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %84, i32 0, i32 7
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  %89 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %90 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @DAVINCI_MMC_DATADIR_READ, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* @MMCCMD_DMATRIG, align 4
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %88, %83, %77
  %99 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %100 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @MMCCMD_WDATX, align 4
  %105 = load i32, i32* %5, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %103, %98
  %108 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %109 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @DAVINCI_MMC_DATADIR_WRITE, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load i32, i32* @MMCCMD_DTRW, align 4
  %115 = load i32, i32* %5, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %113, %107
  %118 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %119 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MMC_BUSMODE_PUSHPULL, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i32, i32* @MMCCMD_PPLEN, align 4
  %125 = load i32, i32* %5, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %123, %117
  %128 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %129 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @DAVINCI_MMCTOR, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @writel(i32 8191, i64 %132)
  %134 = load i32, i32* @MMCST0_RSPDNE, align 4
  %135 = load i32, i32* @MMCST0_CRCRS, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @MMCST0_TOUTRS, align 4
  %138 = or i32 %136, %137
  store i32 %138, i32* %6, align 4
  %139 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %140 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @DAVINCI_MMC_DATADIR_WRITE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %159

144:                                              ; preds = %127
  %145 = load i32, i32* @MMCST0_DATDNE, align 4
  %146 = load i32, i32* @MMCST0_CRCWR, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* %6, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %6, align 4
  %150 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %151 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %150, i32 0, i32 6
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %144
  %155 = load i32, i32* @MMCST0_DXRDY, align 4
  %156 = load i32, i32* %6, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %154, %144
  br label %183

159:                                              ; preds = %127
  %160 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %161 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @DAVINCI_MMC_DATADIR_READ, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %182

165:                                              ; preds = %159
  %166 = load i32, i32* @MMCST0_DATDNE, align 4
  %167 = load i32, i32* @MMCST0_CRCRD, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @MMCST0_TOUTRD, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* %6, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %6, align 4
  %173 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %174 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %173, i32 0, i32 6
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %165
  %178 = load i32, i32* @MMCST0_DRRDY, align 4
  %179 = load i32, i32* %6, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %6, align 4
  br label %181

181:                                              ; preds = %177, %165
  br label %182

182:                                              ; preds = %181, %159
  br label %183

183:                                              ; preds = %182, %158
  %184 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %185 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %184, i32 0, i32 6
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %198, label %188

188:                                              ; preds = %183
  %189 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %190 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @DAVINCI_MMC_DATADIR_WRITE, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %196 = load i32, i32* @rw_threshold, align 4
  %197 = call i32 @davinci_fifo_data_trans(%struct.mmc_davinci_host* %195, i32 %196)
  br label %198

198:                                              ; preds = %194, %188, %183
  %199 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %200 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %203 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %202, i32 0, i32 5
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @DAVINCI_MMCARGHL, align 8
  %206 = add nsw i64 %204, %205
  %207 = call i32 @writel(i32 %201, i64 %206)
  %208 = load i32, i32* %5, align 4
  %209 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %210 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %209, i32 0, i32 5
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @DAVINCI_MMCCMD, align 8
  %213 = add nsw i64 %211, %212
  %214 = call i32 @writel(i32 %208, i64 %213)
  %215 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %216 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %215, i32 0, i32 3
  store i32 1, i32* %216, align 8
  %217 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %218 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %217, i32 0, i32 6
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %245, label %221

221:                                              ; preds = %198
  %222 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %223 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @poll_threshold, align 8
  %226 = icmp sle i64 %224, %225
  br i1 %226, label %227, label %245

227:                                              ; preds = %221
  %228 = load i32, i32* @poll_loopcount, align 4
  store i32 %228, i32* %9, align 4
  br label %229

229:                                              ; preds = %240, %227
  %230 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %231 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %229
  %235 = load i32, i32* %9, align 4
  %236 = add nsw i32 %235, -1
  store i32 %236, i32* %9, align 4
  %237 = icmp ne i32 %235, 0
  br label %238

238:                                              ; preds = %234, %229
  %239 = phi i1 [ false, %229 ], [ %237, %234 ]
  br i1 %239, label %240, label %244

240:                                              ; preds = %238
  %241 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %242 = call i32 @mmc_davinci_irq(i32 0, %struct.mmc_davinci_host* %241)
  %243 = call i32 (...) @cpu_relax()
  br label %229

244:                                              ; preds = %238
  br label %245

245:                                              ; preds = %244, %221, %198
  %246 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %247 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %258

250:                                              ; preds = %245
  %251 = load i32, i32* %6, align 4
  %252 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %253 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %252, i32 0, i32 5
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @DAVINCI_MMCIM, align 8
  %256 = add nsw i64 %254, %255
  %257 = call i32 @writel(i32 %251, i64 %256)
  br label %258

258:                                              ; preds = %250, %245
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mmc_resp_type(%struct.mmc_command*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @davinci_fifo_data_trans(%struct.mmc_davinci_host*, i32) #1

declare dso_local i32 @mmc_davinci_irq(i32, %struct.mmc_davinci_host*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
