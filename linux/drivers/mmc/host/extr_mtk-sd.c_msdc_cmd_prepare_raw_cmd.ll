; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_cmd_prepare_raw_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_cmd_prepare_raw_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdc_host = type { i32, i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mmc_request = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mmc_command = type { i32, i32, %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32, i64, i64 }

@SD_IO_RW_DIRECT = common dso_local global i32 0, align 4
@MMC_STOP_TRANSMISSION = common dso_local global i32 0, align 4
@SD_SWITCH_VOLTAGE = common dso_local global i32 0, align 4
@SD_APP_SEND_SCR = common dso_local global i32 0, align 4
@SD_APP_SEND_NUM_WR_BLKS = common dso_local global i32 0, align 4
@SD_SWITCH = common dso_local global i32 0, align 4
@MMC_CMD_ADTC = common dso_local global i64 0, align 8
@SD_APP_SD_STATUS = common dso_local global i32 0, align 4
@MMC_SEND_EXT_CSD = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@MSDC_CFG = common dso_local global i64 0, align 8
@MSDC_CFG_PIO = common dso_local global i32 0, align 4
@SDC_BLK_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msdc_host*, %struct.mmc_request*, %struct.mmc_command*)* @msdc_cmd_prepare_raw_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdc_cmd_prepare_raw_cmd(%struct.msdc_host* %0, %struct.mmc_request* %1, %struct.mmc_command* %2) #0 {
  %4 = alloca %struct.msdc_host*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca %struct.mmc_command*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mmc_data*, align 8
  store %struct.msdc_host* %0, %struct.msdc_host** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  store %struct.mmc_command* %2, %struct.mmc_command** %6, align 8
  %11 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %12 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %15 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %16 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %17 = call i32 @msdc_cmd_find_resp(%struct.msdc_host* %14, %struct.mmc_request* %15, %struct.mmc_command* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 63
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 7
  %22 = shl i32 %21, 7
  %23 = or i32 %19, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %26 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SD_IO_RW_DIRECT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %32 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %39, label %35

35:                                               ; preds = %30, %3
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @MMC_STOP_TRANSMISSION, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, 16384
  store i32 %41, i32* %9, align 4
  br label %89

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @SD_SWITCH_VOLTAGE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, 1073741824
  store i32 %48, i32* %9, align 4
  br label %88

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @SD_APP_SEND_SCR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %84, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @SD_APP_SEND_NUM_WR_BLKS, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %84, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @SD_SWITCH, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %63 = call i64 @mmc_cmd_type(%struct.mmc_command* %62)
  %64 = load i64, i64* @MMC_CMD_ADTC, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %84, label %66

66:                                               ; preds = %61, %57
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @SD_APP_SD_STATUS, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %72 = call i64 @mmc_cmd_type(%struct.mmc_command* %71)
  %73 = load i64, i64* @MMC_CMD_ADTC, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %84, label %75

75:                                               ; preds = %70, %66
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @MMC_SEND_EXT_CSD, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %81 = call i64 @mmc_cmd_type(%struct.mmc_command* %80)
  %82 = load i64, i64* @MMC_CMD_ADTC, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %79, %70, %61, %53, %49
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %85, 2048
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %84, %79, %75
  br label %88

88:                                               ; preds = %87, %46
  br label %89

89:                                               ; preds = %88, %39
  %90 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %91 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %90, i32 0, i32 2
  %92 = load %struct.mmc_data*, %struct.mmc_data** %91, align 8
  %93 = icmp ne %struct.mmc_data* %92, null
  br i1 %93, label %94, label %196

94:                                               ; preds = %89
  %95 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %96 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %95, i32 0, i32 2
  %97 = load %struct.mmc_data*, %struct.mmc_data** %96, align 8
  store %struct.mmc_data* %97, %struct.mmc_data** %10, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i64 @mmc_op_multi(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %126

101:                                              ; preds = %94
  %102 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %103 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %102, i32 0, i32 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @mmc_card_mmc(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %101
  %110 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %111 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = icmp ne %struct.TYPE_4__* %112, null
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  %115 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %116 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, -65536
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %114
  %123 = load i32, i32* %9, align 4
  %124 = or i32 %123, 536870912
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %122, %114, %109, %101
  br label %126

126:                                              ; preds = %125, %94
  %127 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  %128 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, 4095
  %131 = shl i32 %130, 16
  %132 = load i32, i32* %9, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %9, align 4
  %134 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  %135 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @MMC_DATA_WRITE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %126
  %141 = load i32, i32* %9, align 4
  %142 = or i32 %141, 8192
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %140, %126
  %144 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  %145 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp sgt i32 %146, 1
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i32, i32* %9, align 4
  %150 = or i32 %149, 4096
  store i32 %150, i32* %9, align 4
  br label %154

151:                                              ; preds = %143
  %152 = load i32, i32* %9, align 4
  %153 = or i32 %152, 2048
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %151, %148
  %155 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %156 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @MSDC_CFG, align 8
  %159 = add nsw i64 %157, %158
  %160 = load i32, i32* @MSDC_CFG_PIO, align 4
  %161 = call i32 @sdr_clr_bits(i64 %159, i32 %160)
  %162 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %163 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  %166 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %164, %167
  br i1 %168, label %177, label %169

169:                                              ; preds = %154
  %170 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %171 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  %174 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %172, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %169, %154
  %178 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %179 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  %180 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  %183 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @msdc_set_timeout(%struct.msdc_host* %178, i64 %181, i64 %184)
  br label %186

186:                                              ; preds = %177, %169
  %187 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  %188 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %191 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @SDC_BLK_NUM, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @writel(i32 %189, i64 %194)
  br label %196

196:                                              ; preds = %186, %89
  %197 = load i32, i32* %9, align 4
  ret i32 %197
}

declare dso_local i32 @msdc_cmd_find_resp(%struct.msdc_host*, %struct.mmc_request*, %struct.mmc_command*) #1

declare dso_local i64 @mmc_cmd_type(%struct.mmc_command*) #1

declare dso_local i64 @mmc_op_multi(i32) #1

declare dso_local i64 @mmc_card_mmc(i32) #1

declare dso_local i32 @sdr_clr_bits(i64, i32) #1

declare dso_local i32 @msdc_set_timeout(%struct.msdc_host*, i64, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
