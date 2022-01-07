; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_hostmail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_hostmail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.brcmf_core*, %struct.brcmf_sdio_dev* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.brcmf_core = type { i64 }
%struct.brcmf_sdio_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@tohostmailboxdata = common dso_local global i32 0, align 4
@tosbmailbox = common dso_local global i32 0, align 4
@SMB_INT_ACK = common dso_local global i32 0, align 4
@HMB_DATA_FWHALT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"mailbox indicates firmware halted\0A\00", align 1
@HMB_DATA_NAKHANDLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Dongle reports NAK handled, expect rtx of %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"unexpected NAKHANDLED!\0A\00", align 1
@I_HMB_FRAME_IND = common dso_local global i32 0, align 4
@HMB_DATA_DEVREADY = common dso_local global i32 0, align 4
@HMB_DATA_FWREADY = common dso_local global i32 0, align 4
@HMB_DATA_VERSION_MASK = common dso_local global i32 0, align 4
@HMB_DATA_VERSION_SHIFT = common dso_local global i32 0, align 4
@SDPCM_PROT_VERSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"Version mismatch, dongle reports %d, expecting %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Dongle ready, protocol version %d\0A\00", align 1
@HMB_DATA_FC = common dso_local global i32 0, align 4
@HMB_DATA_FCDATA_MASK = common dso_local global i32 0, align 4
@HMB_DATA_FCDATA_SHIFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Unknown mailbox data content: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_sdio*)* @brcmf_sdio_hostmail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdio_hostmail(%struct.brcmf_sdio* %0) #0 {
  %2 = alloca %struct.brcmf_sdio*, align 8
  %3 = alloca %struct.brcmf_sdio_dev*, align 8
  %4 = alloca %struct.brcmf_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %2, align 8
  %9 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %10 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %9, i32 0, i32 6
  %11 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %10, align 8
  store %struct.brcmf_sdio_dev* %11, %struct.brcmf_sdio_dev** %3, align 8
  %12 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %13 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %12, i32 0, i32 5
  %14 = load %struct.brcmf_core*, %struct.brcmf_core** %13, align 8
  store %struct.brcmf_core* %14, %struct.brcmf_core** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load i32, i32* @SDIO, align 4
  %16 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %18 = load %struct.brcmf_core*, %struct.brcmf_core** %4, align 8
  %19 = getelementptr inbounds %struct.brcmf_core, %struct.brcmf_core* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @tohostmailboxdata, align 4
  %22 = call i64 @SD_REG(i32 %21)
  %23 = add nsw i64 %20, %22
  %24 = call i32 @brcmf_sdiod_readl(%struct.brcmf_sdio_dev* %17, i64 %23, i32* %8)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %1
  %28 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %29 = load %struct.brcmf_core*, %struct.brcmf_core** %4, align 8
  %30 = getelementptr inbounds %struct.brcmf_core, %struct.brcmf_core* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @tosbmailbox, align 4
  %33 = call i64 @SD_REG(i32 %32)
  %34 = add nsw i64 %31, %33
  %35 = load i32, i32* @SMB_INT_ACK, align 4
  %36 = call i32 @brcmf_sdiod_writel(%struct.brcmf_sdio_dev* %28, i64 %34, i32 %35, i32* %8)
  br label %37

37:                                               ; preds = %27, %1
  %38 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %39 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 2
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @HMB_DATA_FWHALT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load i32, i32* @SDIO, align 4
  %49 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %51 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @brcmf_fw_crashed(i32* %53)
  br label %55

55:                                               ; preds = %47, %37
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @HMB_DATA_NAKHANDLED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %55
  %61 = load i32, i32* @SDIO, align 4
  %62 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %63 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %61, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %67 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %60
  %71 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %60
  %73 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %74 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = load i32, i32* @I_HMB_FRAME_IND, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %72, %55
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @HMB_DATA_DEVREADY, align 4
  %81 = load i32, i32* @HMB_DATA_FWREADY, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %113

85:                                               ; preds = %78
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @HMB_DATA_VERSION_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @HMB_DATA_VERSION_SHIFT, align 4
  %90 = ashr i32 %88, %89
  %91 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %92 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %94 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SDPCM_PROT_VERSION, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %85
  %99 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %100 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @SDPCM_PROT_VERSION, align 4
  %103 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %101, i32 %102)
  br label %110

104:                                              ; preds = %85
  %105 = load i32, i32* @SDIO, align 4
  %106 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %107 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %104, %98
  %111 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %112 = call i32 @brcmf_sdio_get_console_addr(%struct.brcmf_sdio* %111)
  br label %113

113:                                              ; preds = %110, %78
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @HMB_DATA_FC, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %160

118:                                              ; preds = %113
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @HMB_DATA_FCDATA_MASK, align 4
  %121 = and i32 %119, %120
  %122 = load i32, i32* @HMB_DATA_FCDATA_SHIFT, align 4
  %123 = ashr i32 %121, %122
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %126 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = xor i32 %127, -1
  %129 = and i32 %124, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %118
  %132 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %133 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %131, %118
  %138 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %139 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %7, align 4
  %142 = xor i32 %141, -1
  %143 = and i32 %140, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %137
  %146 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %147 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %145, %137
  %152 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %153 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %159 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %151, %113
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @HMB_DATA_DEVREADY, align 4
  %163 = load i32, i32* @HMB_DATA_NAKHANDLED, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @HMB_DATA_FC, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @HMB_DATA_FWREADY, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @HMB_DATA_FWHALT, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @HMB_DATA_FCDATA_MASK, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @HMB_DATA_VERSION_MASK, align 4
  %174 = or i32 %172, %173
  %175 = xor i32 %174, -1
  %176 = and i32 %161, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %160
  %179 = load i32, i32* %6, align 4
  %180 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %179)
  br label %181

181:                                              ; preds = %178, %160
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @brcmf_sdiod_readl(%struct.brcmf_sdio_dev*, i64, i32*) #1

declare dso_local i64 @SD_REG(i32) #1

declare dso_local i32 @brcmf_sdiod_writel(%struct.brcmf_sdio_dev*, i64, i32, i32*) #1

declare dso_local i32 @brcmf_fw_crashed(i32*) #1

declare dso_local i32 @brcmf_err(i8*, ...) #1

declare dso_local i32 @brcmf_sdio_get_console_addr(%struct.brcmf_sdio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
