; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_htclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_htclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i64, i32, i32, i64 }

@SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@CLK_AVAIL = common dso_local global i8* null, align 8
@CLK_SDONLY = common dso_local global i8* null, align 8
@SBSDIO_ALP_AVAIL_REQ = common dso_local global i32 0, align 4
@SBSDIO_HT_AVAIL_REQ = common dso_local global i32 0, align 4
@SBSDIO_FUNC1_CHIPCLKCSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"HT Avail request error: %d\0A\00", align 1
@EBADE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"HT Avail read error: %d\0A\00", align 1
@SBSDIO_DEVICE_CTL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Devctl error setting CA: %d\0A\00", align 1
@SBSDIO_DEVCTL_CA_INT_ONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"CLKCTL: set PENDING\0A\00", align 1
@CLK_PENDING = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@PMU_MAX_TRANSITION_DLY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"HT Avail timeout (%d): clkctl 0x%02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"CLKCTL: turned ON\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"CLKCTL: turned OFF\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Failed access turning clock off: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_sdio*, i32, i32)* @brcmf_sdio_htclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdio_htclk(%struct.brcmf_sdio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_sdio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @SDIO, align 4
  %14 = call i32 @brcmf_dbg(i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  %15 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %16 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i8*, i8** @CLK_AVAIL, align 8
  br label %26

24:                                               ; preds = %19
  %25 = load i8*, i8** @CLK_SDONLY, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i8* [ %23, %22 ], [ %25, %24 ]
  %28 = ptrtoint i8* %27 to i64
  %29 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %30 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  store i32 0, i32* %4, align 4
  br label %232

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %188

34:                                               ; preds = %31
  %35 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %36 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @SBSDIO_ALP_AVAIL_REQ, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @SBSDIO_HT_AVAIL_REQ, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %10, align 4
  %45 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %46 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SBSDIO_FUNC1_CHIPCLKCSR, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @brcmf_sdiod_writeb(i32 %47, i32 %48, i32 %49, i32* %8)
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EBADE, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %232

58:                                               ; preds = %43
  %59 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %60 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SBSDIO_FUNC1_CHIPCLKCSR, align 4
  %63 = call i32 @brcmf_sdiod_readb(i32 %61, i32 %62, i32* %8)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load i32, i32* %8, align 4
  %68 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EBADE, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %232

71:                                               ; preds = %58
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %74 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @SBSDIO_CLKAV(i32 %72, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %109, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %109

81:                                               ; preds = %78
  %82 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %83 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @SBSDIO_DEVICE_CTL, align 4
  %86 = call i32 @brcmf_sdiod_readb(i32 %84, i32 %85, i32* %8)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = load i32, i32* %8, align 4
  %91 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EBADE, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %232

94:                                               ; preds = %81
  %95 = load i32, i32* @SBSDIO_DEVCTL_CA_INT_ONLY, align 4
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %11, align 4
  %98 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %99 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @SBSDIO_DEVICE_CTL, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @brcmf_sdiod_writeb(i32 %100, i32 %101, i32 %102, i32* %8)
  %104 = load i32, i32* @SDIO, align 4
  %105 = call i32 @brcmf_dbg(i32 %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %106 = load i64, i64* @CLK_PENDING, align 8
  %107 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %108 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  store i32 0, i32* %4, align 4
  br label %232

109:                                              ; preds = %78, %71
  %110 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %111 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @CLK_PENDING, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %109
  %116 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %117 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @SBSDIO_DEVICE_CTL, align 4
  %120 = call i32 @brcmf_sdiod_readb(i32 %118, i32 %119, i32* %8)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* @SBSDIO_DEVCTL_CA_INT_ONLY, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %11, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %11, align 4
  %125 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %126 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @SBSDIO_DEVICE_CTL, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @brcmf_sdiod_writeb(i32 %127, i32 %128, i32 %129, i32* %8)
  br label %131

131:                                              ; preds = %115, %109
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* @jiffies, align 8
  %134 = load i32, i32* @PMU_MAX_TRANSITION_DLY, align 4
  %135 = sdiv i32 %134, 1000
  %136 = call i64 @msecs_to_jiffies(i32 %135)
  %137 = add i64 %133, %136
  store i64 %137, i64* %12, align 8
  br label %138

138:                                              ; preds = %159, %132
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %141 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @SBSDIO_CLKAV(i32 %139, i32 %142)
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  br i1 %145, label %146, label %160

146:                                              ; preds = %138
  %147 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %148 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @SBSDIO_FUNC1_CHIPCLKCSR, align 4
  %151 = call i32 @brcmf_sdiod_readb(i32 %149, i32 %150, i32* %8)
  store i32 %151, i32* %9, align 4
  %152 = load i64, i64* @jiffies, align 8
  %153 = load i64, i64* %12, align 8
  %154 = call i64 @time_after(i64 %152, i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %146
  br label %160

157:                                              ; preds = %146
  %158 = call i32 @usleep_range(i32 5000, i32 10000)
  br label %159

159:                                              ; preds = %157
  br label %138

160:                                              ; preds = %156, %138
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load i32, i32* %8, align 4
  %165 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* @EBADE, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %4, align 4
  br label %232

168:                                              ; preds = %160
  %169 = load i32, i32* %9, align 4
  %170 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %171 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @SBSDIO_CLKAV(i32 %169, i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %168
  %176 = load i32, i32* @PMU_MAX_TRANSITION_DLY, align 4
  %177 = load i32, i32* %9, align 4
  %178 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %176, i32 %177)
  %179 = load i32, i32* @EBADE, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %4, align 4
  br label %232

181:                                              ; preds = %168
  %182 = load i8*, i8** @CLK_AVAIL, align 8
  %183 = ptrtoint i8* %182 to i64
  %184 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %185 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  %186 = load i32, i32* @SDIO, align 4
  %187 = call i32 @brcmf_dbg(i32 %186, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %231

188:                                              ; preds = %31
  store i32 0, i32* %10, align 4
  %189 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %190 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @CLK_PENDING, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %210

194:                                              ; preds = %188
  %195 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %196 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @SBSDIO_DEVICE_CTL, align 4
  %199 = call i32 @brcmf_sdiod_readb(i32 %197, i32 %198, i32* %8)
  store i32 %199, i32* %11, align 4
  %200 = load i32, i32* @SBSDIO_DEVCTL_CA_INT_ONLY, align 4
  %201 = xor i32 %200, -1
  %202 = load i32, i32* %11, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %11, align 4
  %204 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %205 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @SBSDIO_DEVICE_CTL, align 4
  %208 = load i32, i32* %11, align 4
  %209 = call i32 @brcmf_sdiod_writeb(i32 %206, i32 %207, i32 %208, i32* %8)
  br label %210

210:                                              ; preds = %194, %188
  %211 = load i8*, i8** @CLK_SDONLY, align 8
  %212 = ptrtoint i8* %211 to i64
  %213 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %214 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %213, i32 0, i32 0
  store i64 %212, i64* %214, align 8
  %215 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %216 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @SBSDIO_FUNC1_CHIPCLKCSR, align 4
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @brcmf_sdiod_writeb(i32 %217, i32 %218, i32 %219, i32* %8)
  %221 = load i32, i32* @SDIO, align 4
  %222 = call i32 @brcmf_dbg(i32 %221, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %223 = load i32, i32* %8, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %210
  %226 = load i32, i32* %8, align 4
  %227 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %226)
  %228 = load i32, i32* @EBADE, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %4, align 4
  br label %232

230:                                              ; preds = %210
  br label %231

231:                                              ; preds = %230, %181
  store i32 0, i32* %4, align 4
  br label %232

232:                                              ; preds = %231, %225, %175, %163, %94, %89, %66, %53, %26
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @brcmf_sdiod_writeb(i32, i32, i32, i32*) #1

declare dso_local i32 @brcmf_err(i8*, ...) #1

declare dso_local i32 @brcmf_sdiod_readb(i32, i32, i32*) #1

declare dso_local i32 @SBSDIO_CLKAV(i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
