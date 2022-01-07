; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_host = type { i32, i64, %struct.mmc_command*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.mmc_command = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@SDCMD_NEW_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"previous command never completed.\0A\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@SDHSTS = common dso_local global i64 0, align 8
@SDHSTS_ERROR_MASK = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@MMC_RSP_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unsupported response type!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SDARG = common dso_local global i64 0, align 8
@SDCMD_CMD_MASK = common dso_local global i32 0, align 4
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@SDCMD_NO_RESPONSE = common dso_local global i32 0, align 4
@SDCMD_LONG_RESPONSE = common dso_local global i32 0, align 4
@SDCMD_BUSYWAIT = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@SDCMD_WRITE_CMD = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@SDCMD_READ_CMD = common dso_local global i32 0, align 4
@SDCMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm2835_host*, %struct.mmc_command*)* @bcm2835_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_send_command(%struct.bcm2835_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm2835_host*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.bcm2835_host* %0, %struct.bcm2835_host** %4, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %5, align 8
  %10 = load %struct.bcm2835_host*, %struct.bcm2835_host** %4, align 8
  %11 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %10, i32 0, i32 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.bcm2835_host*, %struct.bcm2835_host** %4, align 8
  %15 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %14, i32 0, i32 2
  %16 = load %struct.mmc_command*, %struct.mmc_command** %15, align 8
  %17 = call i32 @WARN_ON(%struct.mmc_command* %16)
  %18 = load %struct.bcm2835_host*, %struct.bcm2835_host** %4, align 8
  %19 = call i32 @bcm2835_read_wait_sdcmd(%struct.bcm2835_host* %18, i32 100)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SDCMD_NEW_FLAG, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.bcm2835_host*, %struct.bcm2835_host** %4, align 8
  %28 = call i32 @bcm2835_dumpregs(%struct.bcm2835_host* %27)
  %29 = load i32, i32* @EILSEQ, align 4
  %30 = sub nsw i32 0, %29
  %31 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %32 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load %struct.bcm2835_host*, %struct.bcm2835_host** %4, align 8
  %34 = call i32 @bcm2835_finish_request(%struct.bcm2835_host* %33)
  store i32 0, i32* %3, align 4
  br label %205

35:                                               ; preds = %2
  %36 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %37 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %36, i32 0, i32 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %55, label %40

40:                                               ; preds = %35
  %41 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %42 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 9000
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %47 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @DIV_ROUND_UP(i32 %48, i32 1000)
  %50 = load i32, i32* @HZ, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* @HZ, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %9, align 8
  br label %59

55:                                               ; preds = %40, %35
  %56 = load i32, i32* @HZ, align 4
  %57 = mul nsw i32 10, %56
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %9, align 8
  br label %59

59:                                               ; preds = %55, %45
  %60 = load %struct.bcm2835_host*, %struct.bcm2835_host** %4, align 8
  %61 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %60, i32 0, i32 3
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @schedule_delayed_work(i32* %61, i64 %62)
  %64 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %65 = load %struct.bcm2835_host*, %struct.bcm2835_host** %4, align 8
  %66 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %65, i32 0, i32 2
  store %struct.mmc_command* %64, %struct.mmc_command** %66, align 8
  %67 = load %struct.bcm2835_host*, %struct.bcm2835_host** %4, align 8
  %68 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SDHSTS, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @readl(i64 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @SDHSTS_ERROR_MASK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %59
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.bcm2835_host*, %struct.bcm2835_host** %4, align 8
  %80 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SDHSTS, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %78, i64 %83)
  br label %85

85:                                               ; preds = %77, %59
  %86 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %87 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MMC_RSP_136, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %85
  %93 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %94 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @MMC_RSP_BUSY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %92
  %100 = load %struct.device*, %struct.device** %6, align 8
  %101 = call i32 @dev_err(%struct.device* %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  %104 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %105 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 8
  %106 = load %struct.bcm2835_host*, %struct.bcm2835_host** %4, align 8
  %107 = call i32 @bcm2835_finish_request(%struct.bcm2835_host* %106)
  store i32 0, i32* %3, align 4
  br label %205

108:                                              ; preds = %92, %85
  %109 = load %struct.bcm2835_host*, %struct.bcm2835_host** %4, align 8
  %110 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %111 = call i32 @bcm2835_prepare_data(%struct.bcm2835_host* %109, %struct.mmc_command* %110)
  %112 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %113 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.bcm2835_host*, %struct.bcm2835_host** %4, align 8
  %116 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SDARG, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @writel(i32 %114, i64 %119)
  %121 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %122 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @SDCMD_CMD_MASK, align 4
  %125 = and i32 %123, %124
  store i32 %125, i32* %7, align 4
  %126 = load %struct.bcm2835_host*, %struct.bcm2835_host** %4, align 8
  %127 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %126, i32 0, i32 0
  store i32 0, i32* %127, align 8
  %128 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %129 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %108
  %135 = load i32, i32* @SDCMD_NO_RESPONSE, align 4
  %136 = load i32, i32* %7, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %7, align 4
  br label %163

138:                                              ; preds = %108
  %139 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %140 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @MMC_RSP_136, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load i32, i32* @SDCMD_LONG_RESPONSE, align 4
  %147 = load i32, i32* %7, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %145, %138
  %150 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %151 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @MMC_RSP_BUSY, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %149
  %157 = load i32, i32* @SDCMD_BUSYWAIT, align 4
  %158 = load i32, i32* %7, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %7, align 4
  %160 = load %struct.bcm2835_host*, %struct.bcm2835_host** %4, align 8
  %161 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %160, i32 0, i32 0
  store i32 1, i32* %161, align 8
  br label %162

162:                                              ; preds = %156, %149
  br label %163

163:                                              ; preds = %162, %134
  %164 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %165 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %164, i32 0, i32 4
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = icmp ne %struct.TYPE_4__* %166, null
  br i1 %167, label %168, label %195

168:                                              ; preds = %163
  %169 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %170 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %169, i32 0, i32 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @MMC_DATA_WRITE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %168
  %178 = load i32, i32* @SDCMD_WRITE_CMD, align 4
  %179 = load i32, i32* %7, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %177, %168
  %182 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %183 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %182, i32 0, i32 4
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @MMC_DATA_READ, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %181
  %191 = load i32, i32* @SDCMD_READ_CMD, align 4
  %192 = load i32, i32* %7, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %7, align 4
  br label %194

194:                                              ; preds = %190, %181
  br label %195

195:                                              ; preds = %194, %163
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* @SDCMD_NEW_FLAG, align 4
  %198 = or i32 %196, %197
  %199 = load %struct.bcm2835_host*, %struct.bcm2835_host** %4, align 8
  %200 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @SDCMD, align 8
  %203 = add nsw i64 %201, %202
  %204 = call i32 @writel(i32 %198, i64 %203)
  store i32 1, i32* %3, align 4
  br label %205

205:                                              ; preds = %195, %99, %24
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i32 @WARN_ON(%struct.mmc_command*) #1

declare dso_local i32 @bcm2835_read_wait_sdcmd(%struct.bcm2835_host*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @bcm2835_dumpregs(%struct.bcm2835_host*) #1

declare dso_local i32 @bcm2835_finish_request(%struct.bcm2835_host*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @bcm2835_prepare_data(%struct.bcm2835_host*, %struct.mmc_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
