; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c___mmc_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c___mmc_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.mmc_host* }
%struct.mmc_host = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8 }
%struct.mmc_command = type { i32, i32, i32, i32, i32 }

@MMC_SWITCH = common dso_local global i32 0, align 4
@MMC_SWITCH_MODE_WRITE_BYTE = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R1B = common dso_local global i32 0, align 4
@MMC_RSP_R1B = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R1 = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@EXT_CSD_SANITIZE_START = common dso_local global i32 0, align 4
@MMC_CMD_RETRIES = common dso_local global i32 0, align 4
@MMC_CAP_WAIT_WHILE_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mmc_switch(%struct.mmc_card* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8 zeroext %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.mmc_card*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.mmc_host*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.mmc_command, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  store %struct.mmc_card* %0, %struct.mmc_card** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8 %5, i8* %15, align 1
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %24 = load %struct.mmc_card*, %struct.mmc_card** %10, align 8
  %25 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %24, i32 0, i32 0
  %26 = load %struct.mmc_host*, %struct.mmc_host** %25, align 8
  store %struct.mmc_host* %26, %struct.mmc_host** %19, align 8
  %27 = bitcast %struct.mmc_command* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 20, i1 false)
  %28 = load i32, i32* %16, align 4
  store i32 %28, i32* %22, align 4
  %29 = load %struct.mmc_host*, %struct.mmc_host** %19, align 8
  %30 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 4
  store i8 %32, i8* %23, align 1
  %33 = load %struct.mmc_host*, %struct.mmc_host** %19, align 8
  %34 = call i32 @mmc_retune_hold(%struct.mmc_host* %33)
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %9
  %38 = load %struct.mmc_host*, %struct.mmc_host** %19, align 8
  %39 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.mmc_host*, %struct.mmc_host** %19, align 8
  %45 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ugt i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 0, i32* %22, align 4
  br label %49

49:                                               ; preds = %48, %42, %37, %9
  %50 = load i32, i32* @MMC_SWITCH, align 4
  %51 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %21, i32 0, i32 4
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @MMC_SWITCH_MODE_WRITE_BYTE, align 4
  %53 = shl i32 %52, 24
  %54 = load i32, i32* %12, align 4
  %55 = shl i32 %54, 16
  %56 = or i32 %53, %55
  %57 = load i32, i32* %13, align 4
  %58 = shl i32 %57, 8
  %59 = or i32 %56, %58
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %59, %60
  %62 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %21, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @MMC_CMD_AC, align 4
  %64 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %21, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %22, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %49
  %68 = load i32, i32* @MMC_RSP_SPI_R1B, align 4
  %69 = load i32, i32* @MMC_RSP_R1B, align 4
  %70 = or i32 %68, %69
  %71 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %21, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %14, align 4
  %75 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %21, i32 0, i32 2
  store i32 %74, i32* %75, align 4
  br label %83

76:                                               ; preds = %49
  %77 = load i32, i32* @MMC_RSP_SPI_R1, align 4
  %78 = load i32, i32* @MMC_RSP_R1, align 4
  %79 = or i32 %77, %78
  %80 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %21, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %79
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %76, %67
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @EXT_CSD_SANITIZE_START, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %21, i32 0, i32 3
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %87, %83
  %90 = load %struct.mmc_host*, %struct.mmc_host** %19, align 8
  %91 = load i32, i32* @MMC_CMD_RETRIES, align 4
  %92 = call i32 @mmc_wait_for_cmd(%struct.mmc_host* %90, %struct.mmc_command* %21, i32 %91)
  store i32 %92, i32* %20, align 4
  %93 = load i32, i32* %20, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %150

96:                                               ; preds = %89
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  br label %150

100:                                              ; preds = %96
  %101 = load %struct.mmc_host*, %struct.mmc_host** %19, align 8
  %102 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @MMC_CAP_WAIT_WHILE_BUSY, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* %22, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107, %100
  %111 = load %struct.mmc_host*, %struct.mmc_host** %19, align 8
  %112 = call i64 @mmc_host_is_spi(%struct.mmc_host* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110, %107
  br label %125

115:                                              ; preds = %110
  %116 = load %struct.mmc_card*, %struct.mmc_card** %10, align 8
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %18, align 4
  %120 = call i32 @mmc_poll_for_busy(%struct.mmc_card* %116, i32 %117, i32 %118, i32 %119)
  store i32 %120, i32* %20, align 4
  %121 = load i32, i32* %20, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %150

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124, %114
  %126 = load i8, i8* %15, align 1
  %127 = icmp ne i8 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load %struct.mmc_host*, %struct.mmc_host** %19, align 8
  %130 = load i8, i8* %15, align 1
  %131 = call i32 @mmc_set_timing(%struct.mmc_host* %129, i8 zeroext %130)
  br label %132

132:                                              ; preds = %128, %125
  %133 = load i32, i32* %17, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %132
  %136 = load %struct.mmc_card*, %struct.mmc_card** %10, align 8
  %137 = call i32 @mmc_switch_status(%struct.mmc_card* %136)
  store i32 %137, i32* %20, align 4
  %138 = load i32, i32* %20, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = load i8, i8* %15, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load %struct.mmc_host*, %struct.mmc_host** %19, align 8
  %146 = load i8, i8* %23, align 1
  %147 = call i32 @mmc_set_timing(%struct.mmc_host* %145, i8 zeroext %146)
  br label %148

148:                                              ; preds = %144, %140, %135
  br label %149

149:                                              ; preds = %148, %132
  br label %150

150:                                              ; preds = %149, %123, %99, %95
  %151 = load %struct.mmc_host*, %struct.mmc_host** %19, align 8
  %152 = call i32 @mmc_retune_release(%struct.mmc_host* %151)
  %153 = load i32, i32* %20, align 4
  ret i32 %153
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mmc_retune_hold(%struct.mmc_host*) #2

declare dso_local i32 @mmc_wait_for_cmd(%struct.mmc_host*, %struct.mmc_command*, i32) #2

declare dso_local i64 @mmc_host_is_spi(%struct.mmc_host*) #2

declare dso_local i32 @mmc_poll_for_busy(%struct.mmc_card*, i32, i32, i32) #2

declare dso_local i32 @mmc_set_timing(%struct.mmc_host*, i8 zeroext) #2

declare dso_local i32 @mmc_switch_status(%struct.mmc_card*) #2

declare dso_local i32 @mmc_retune_release(%struct.mmc_host*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
