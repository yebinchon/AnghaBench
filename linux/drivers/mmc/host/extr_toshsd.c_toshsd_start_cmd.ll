; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_start_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_start_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshsd_host = type { i64, %struct.mmc_command*, %struct.TYPE_2__*, %struct.mmc_data* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_data = type { i32, i32 }
%struct.mmc_command = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Command opcode: %d\0A\00", align 1
@MMC_STOP_TRANSMISSION = common dso_local global i32 0, align 4
@SD_STOPINT_ISSUE_CMD12 = common dso_local global i32 0, align 4
@SD_STOPINTERNAL = common dso_local global i64 0, align 8
@SD_CMD_RESP_TYPE_NONE = common dso_local global i32 0, align 4
@SD_CMD_RESP_TYPE_EXT_R1 = common dso_local global i32 0, align 4
@SD_CMD_RESP_TYPE_EXT_R1B = common dso_local global i32 0, align 4
@SD_CMD_RESP_TYPE_EXT_R2 = common dso_local global i32 0, align 4
@SD_CMD_RESP_TYPE_EXT_R3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unknown response type %d\0A\00", align 1
@MMC_APP_CMD = common dso_local global i32 0, align 4
@SD_CMD_TYPE_ACMD = common dso_local global i32 0, align 4
@MMC_GO_IDLE_STATE = common dso_local global i32 0, align 4
@SD_CMD_DATA_PRESENT = common dso_local global i32 0, align 4
@SD_STOPINT_AUTO_ISSUE_CMD12 = common dso_local global i32 0, align 4
@SD_CMD_MULTI_BLOCK = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@SD_CMD_TRANSFER_READ = common dso_local global i32 0, align 4
@SD_ARG0 = common dso_local global i64 0, align 8
@SD_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.toshsd_host*, %struct.mmc_command*)* @toshsd_start_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toshsd_start_cmd(%struct.toshsd_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.toshsd_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  store %struct.toshsd_host* %0, %struct.toshsd_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %7 = load %struct.toshsd_host*, %struct.toshsd_host** %3, align 8
  %8 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %7, i32 0, i32 3
  %9 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  store %struct.mmc_data* %9, %struct.mmc_data** %5, align 8
  %10 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.toshsd_host*, %struct.toshsd_host** %3, align 8
  %14 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MMC_STOP_TRANSMISSION, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %2
  %27 = load i32, i32* @SD_STOPINT_ISSUE_CMD12, align 4
  %28 = load %struct.toshsd_host*, %struct.toshsd_host** %3, align 8
  %29 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SD_STOPINTERNAL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @iowrite16(i32 %27, i64 %32)
  %34 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %35 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %36, i32* %40, align 4
  %41 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %42 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 0, i32* %44, align 4
  %45 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %46 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 0, i32* %48, align 4
  %49 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %50 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  store i32 0, i32* %52, align 4
  %53 = load %struct.toshsd_host*, %struct.toshsd_host** %3, align 8
  %54 = call i32 @toshsd_finish_request(%struct.toshsd_host* %53)
  br label %159

55:                                               ; preds = %2
  %56 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %57 = call i32 @mmc_resp_type(%struct.mmc_command* %56)
  switch i32 %57, label %78 [
    i32 132, label %58
    i32 131, label %62
    i32 130, label %66
    i32 129, label %70
    i32 128, label %74
  ]

58:                                               ; preds = %55
  %59 = load i32, i32* @SD_CMD_RESP_TYPE_NONE, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %86

62:                                               ; preds = %55
  %63 = load i32, i32* @SD_CMD_RESP_TYPE_EXT_R1, align 4
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %86

66:                                               ; preds = %55
  %67 = load i32, i32* @SD_CMD_RESP_TYPE_EXT_R1B, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %86

70:                                               ; preds = %55
  %71 = load i32, i32* @SD_CMD_RESP_TYPE_EXT_R2, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %86

74:                                               ; preds = %55
  %75 = load i32, i32* @SD_CMD_RESP_TYPE_EXT_R3, align 4
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %86

78:                                               ; preds = %55
  %79 = load %struct.toshsd_host*, %struct.toshsd_host** %3, align 8
  %80 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %84 = call i32 @mmc_resp_type(%struct.mmc_command* %83)
  %85 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %78, %74, %70, %66, %62, %58
  %87 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %88 = load %struct.toshsd_host*, %struct.toshsd_host** %3, align 8
  %89 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %88, i32 0, i32 1
  store %struct.mmc_command* %87, %struct.mmc_command** %89, align 8
  %90 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %91 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @MMC_APP_CMD, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %86
  %96 = load i32, i32* @SD_CMD_TYPE_ACMD, align 4
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %95, %86
  %100 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %101 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @MMC_GO_IDLE_STATE, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, 768
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %105, %99
  %109 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %110 = icmp ne %struct.mmc_data* %109, null
  br i1 %110, label %111, label %142

111:                                              ; preds = %108
  %112 = load i32, i32* @SD_CMD_DATA_PRESENT, align 4
  %113 = load i32, i32* %6, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %6, align 4
  %115 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %116 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp sgt i32 %117, 1
  br i1 %118, label %119, label %130

119:                                              ; preds = %111
  %120 = load i32, i32* @SD_STOPINT_AUTO_ISSUE_CMD12, align 4
  %121 = load %struct.toshsd_host*, %struct.toshsd_host** %3, align 8
  %122 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @SD_STOPINTERNAL, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @iowrite16(i32 %120, i64 %125)
  %127 = load i32, i32* @SD_CMD_MULTI_BLOCK, align 4
  %128 = load i32, i32* %6, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %119, %111
  %131 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %132 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @MMC_DATA_READ, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i32, i32* @SD_CMD_TRANSFER_READ, align 4
  %139 = load i32, i32* %6, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %137, %130
  br label %142

142:                                              ; preds = %141, %108
  %143 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %144 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.toshsd_host*, %struct.toshsd_host** %3, align 8
  %147 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @SD_ARG0, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @iowrite32(i32 %145, i64 %150)
  %152 = load i32, i32* %6, align 4
  %153 = load %struct.toshsd_host*, %struct.toshsd_host** %3, align 8
  %154 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @SD_CMD, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @iowrite16(i32 %152, i64 %157)
  br label %159

159:                                              ; preds = %142, %26
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @toshsd_finish_request(%struct.toshsd_host*) #1

declare dso_local i32 @mmc_resp_type(%struct.mmc_command*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
