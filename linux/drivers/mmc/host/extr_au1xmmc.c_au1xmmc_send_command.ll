; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xmmc_host = type { i32 }
%struct.mmc_command = type { i32, i32 }
%struct.mmc_data = type { i32, i32 }

@SD_CMD_CI_SHIFT = common dso_local global i32 0, align 4
@SD_CMD_RT_1 = common dso_local global i32 0, align 4
@SD_CMD_RT_1B = common dso_local global i32 0, align 4
@SD_CMD_RT_2 = common dso_local global i32 0, align 4
@SD_CMD_RT_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"au1xmmc: unhandled response type %02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@SD_CMD_CT_4 = common dso_local global i32 0, align 4
@SD_CMD_CT_2 = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@SD_CMD_CT_3 = common dso_local global i32 0, align 4
@SD_CMD_CT_1 = common dso_local global i32 0, align 4
@SD_CONFIG_CR = common dso_local global i32 0, align 4
@SD_CMD_GO = common dso_local global i32 0, align 4
@SD_STATUS_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au1xmmc_host*, i32, %struct.mmc_command*, %struct.mmc_data*)* @au1xmmc_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xmmc_send_command(%struct.au1xmmc_host* %0, i32 %1, %struct.mmc_command* %2, %struct.mmc_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.au1xmmc_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmc_command*, align 8
  %9 = alloca %struct.mmc_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.au1xmmc_host* %0, %struct.au1xmmc_host** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mmc_command* %2, %struct.mmc_command** %8, align 8
  store %struct.mmc_data* %3, %struct.mmc_data** %9, align 8
  %12 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %13 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SD_CMD_CI_SHIFT, align 4
  %16 = shl i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %18 = call i32 @mmc_resp_type(%struct.mmc_command* %17)
  switch i32 %18, label %36 [
    i32 132, label %19
    i32 131, label %20
    i32 130, label %24
    i32 129, label %28
    i32 128, label %32
  ]

19:                                               ; preds = %4
  br label %42

20:                                               ; preds = %4
  %21 = load i32, i32* @SD_CMD_RT_1, align 4
  %22 = load i32, i32* %10, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %10, align 4
  br label %42

24:                                               ; preds = %4
  %25 = load i32, i32* @SD_CMD_RT_1B, align 4
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %10, align 4
  br label %42

28:                                               ; preds = %4
  %29 = load i32, i32* @SD_CMD_RT_2, align 4
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %10, align 4
  br label %42

32:                                               ; preds = %4
  %33 = load i32, i32* @SD_CMD_RT_3, align 4
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  br label %42

36:                                               ; preds = %4
  %37 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %38 = call i32 @mmc_resp_type(%struct.mmc_command* %37)
  %39 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %145

42:                                               ; preds = %32, %28, %24, %20, %19
  %43 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %44 = icmp ne %struct.mmc_data* %43, null
  br i1 %44, label %45, label %89

45:                                               ; preds = %42
  %46 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %47 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MMC_DATA_READ, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %45
  %53 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %54 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @SD_CMD_CT_4, align 4
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  br label %65

61:                                               ; preds = %52
  %62 = load i32, i32* @SD_CMD_CT_2, align 4
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %61, %57
  br label %88

66:                                               ; preds = %45
  %67 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %68 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MMC_DATA_WRITE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %66
  %74 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %75 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @SD_CMD_CT_3, align 4
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %10, align 4
  br label %86

82:                                               ; preds = %73
  %83 = load i32, i32* @SD_CMD_CT_1, align 4
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %82, %78
  br label %87

87:                                               ; preds = %86, %66
  br label %88

88:                                               ; preds = %87, %65
  br label %89

89:                                               ; preds = %88, %42
  %90 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %91 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %6, align 8
  %94 = call i32 @HOST_CMDARG(%struct.au1xmmc_host* %93)
  %95 = call i32 @__raw_writel(i32 %92, i32 %94)
  %96 = call i32 (...) @wmb()
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %6, align 8
  %101 = load i32, i32* @SD_CONFIG_CR, align 4
  %102 = call i32 @IRQ_OFF(%struct.au1xmmc_host* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %89
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @SD_CMD_GO, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %6, align 8
  %108 = call i32 @HOST_CMD(%struct.au1xmmc_host* %107)
  %109 = call i32 @__raw_writel(i32 %106, i32 %108)
  %110 = call i32 (...) @wmb()
  br label %111

111:                                              ; preds = %118, %103
  %112 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %6, align 8
  %113 = call i32 @HOST_CMD(%struct.au1xmmc_host* %112)
  %114 = call i32 @__raw_readl(i32 %113)
  %115 = load i32, i32* @SD_CMD_GO, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %111

119:                                              ; preds = %111
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %144

122:                                              ; preds = %119
  %123 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %6, align 8
  %124 = call i32 @HOST_STATUS(%struct.au1xmmc_host* %123)
  %125 = call i32 @__raw_readl(i32 %124)
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %132, %122
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @SD_STATUS_CR, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %6, align 8
  %134 = call i32 @HOST_STATUS(%struct.au1xmmc_host* %133)
  %135 = call i32 @__raw_readl(i32 %134)
  store i32 %135, i32* %11, align 4
  br label %126

136:                                              ; preds = %126
  %137 = load i32, i32* @SD_STATUS_CR, align 4
  %138 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %6, align 8
  %139 = call i32 @HOST_STATUS(%struct.au1xmmc_host* %138)
  %140 = call i32 @__raw_writel(i32 %137, i32 %139)
  %141 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %6, align 8
  %142 = load i32, i32* @SD_CONFIG_CR, align 4
  %143 = call i32 @IRQ_ON(%struct.au1xmmc_host* %141, i32 %142)
  br label %144

144:                                              ; preds = %136, %119
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %144, %36
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @mmc_resp_type(%struct.mmc_command*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @HOST_CMDARG(%struct.au1xmmc_host*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @IRQ_OFF(%struct.au1xmmc_host*, i32) #1

declare dso_local i32 @HOST_CMD(%struct.au1xmmc_host*) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @HOST_STATUS(%struct.au1xmmc_host*) #1

declare dso_local i32 @IRQ_ON(%struct.au1xmmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
