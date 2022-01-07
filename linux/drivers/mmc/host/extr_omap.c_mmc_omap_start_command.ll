; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_start_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_start_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, %struct.mmc_command* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.mmc_command = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Invalid response type: %04x\0A\00", align 1
@MMC_CMD_ADTC = common dso_local global i64 0, align 8
@OMAP_MMC_CMDTYPE_ADTC = common dso_local global i32 0, align 4
@MMC_CMD_BC = common dso_local global i64 0, align 8
@OMAP_MMC_CMDTYPE_BC = common dso_local global i32 0, align 4
@MMC_CMD_BCR = common dso_local global i64 0, align 8
@OMAP_MMC_CMDTYPE_BCR = common dso_local global i32 0, align 4
@OMAP_MMC_CMDTYPE_AC = common dso_local global i32 0, align 4
@MMC_BUSMODE_OPENDRAIN = common dso_local global i64 0, align 8
@MMC_RSP_BUSY = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@CTO = common dso_local global i32 0, align 4
@ARGL = common dso_local global i32 0, align 4
@ARGH = common dso_local global i32 0, align 4
@OMAP_MMC_STAT_A_EMPTY = common dso_local global i32 0, align 4
@OMAP_MMC_STAT_A_FULL = common dso_local global i32 0, align 4
@OMAP_MMC_STAT_CMD_CRC = common dso_local global i32 0, align 4
@OMAP_MMC_STAT_CMD_TOUT = common dso_local global i32 0, align 4
@OMAP_MMC_STAT_DATA_CRC = common dso_local global i32 0, align 4
@OMAP_MMC_STAT_DATA_TOUT = common dso_local global i32 0, align 4
@OMAP_MMC_STAT_END_OF_CMD = common dso_local global i32 0, align 4
@OMAP_MMC_STAT_CARD_ERR = common dso_local global i32 0, align 4
@OMAP_MMC_STAT_END_OF_DATA = common dso_local global i32 0, align 4
@MMC_ERASE = common dso_local global i32 0, align 4
@IE = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_host*, %struct.mmc_command*)* @mmc_omap_start_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_start_command(%struct.mmc_omap_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.mmc_omap_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mmc_omap_host* %0, %struct.mmc_omap_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %9 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %10 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %11 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %10, i32 0, i32 4
  store %struct.mmc_command* %9, %struct.mmc_command** %11, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %13 = call i32 @mmc_resp_type(%struct.mmc_command* %12)
  switch i32 %13, label %18 [
    i32 132, label %14
    i32 131, label %15
    i32 130, label %15
    i32 129, label %16
    i32 128, label %17
  ]

14:                                               ; preds = %2
  br label %26

15:                                               ; preds = %2, %2
  store i32 1, i32* %6, align 4
  br label %26

16:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  br label %26

17:                                               ; preds = %2
  store i32 3, i32* %6, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %20 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @mmc_dev(i32 %21)
  %23 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %24 = call i32 @mmc_resp_type(%struct.mmc_command* %23)
  %25 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %18, %17, %16, %15, %14
  %27 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %28 = call i64 @mmc_cmd_type(%struct.mmc_command* %27)
  %29 = load i64, i64* @MMC_CMD_ADTC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @OMAP_MMC_CMDTYPE_ADTC, align 4
  store i32 %32, i32* %7, align 4
  br label %51

33:                                               ; preds = %26
  %34 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %35 = call i64 @mmc_cmd_type(%struct.mmc_command* %34)
  %36 = load i64, i64* @MMC_CMD_BC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @OMAP_MMC_CMDTYPE_BC, align 4
  store i32 %39, i32* %7, align 4
  br label %50

40:                                               ; preds = %33
  %41 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %42 = call i64 @mmc_cmd_type(%struct.mmc_command* %41)
  %43 = load i64, i64* @MMC_CMD_BCR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @OMAP_MMC_CMDTYPE_BCR, align 4
  store i32 %46, i32* %7, align 4
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @OMAP_MMC_CMDTYPE_AC, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %45
  br label %50

50:                                               ; preds = %49, %38
  br label %51

51:                                               ; preds = %50, %31
  %52 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %53 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = shl i32 %55, 8
  %57 = or i32 %54, %56
  %58 = load i32, i32* %7, align 4
  %59 = shl i32 %58, 12
  %60 = or i32 %57, %59
  store i32 %60, i32* %5, align 4
  %61 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %62 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MMC_BUSMODE_OPENDRAIN, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %51
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, 64
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %68, %51
  %72 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %73 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MMC_RSP_BUSY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, 2048
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %71
  %82 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %83 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = icmp ne %struct.TYPE_4__* %84, null
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %88 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MMC_DATA_WRITE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %86
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, 32768
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %95, %86, %81
  %99 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %100 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %99, i32 0, i32 0
  %101 = load i64, i64* @jiffies, align 8
  %102 = load i32, i32* @HZ, align 4
  %103 = sdiv i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %101, %104
  %106 = call i32 @mod_timer(i32* %100, i64 %105)
  %107 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %108 = load i32, i32* @CTO, align 4
  %109 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %107, i32 %108, i32 200)
  %110 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %111 = load i32, i32* @ARGL, align 4
  %112 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %113 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 65535
  %116 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %110, i32 %111, i32 %115)
  %117 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %118 = load i32, i32* @ARGH, align 4
  %119 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %120 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = ashr i32 %121, 16
  %123 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %117, i32 %118, i32 %122)
  %124 = load i32, i32* @OMAP_MMC_STAT_A_EMPTY, align 4
  %125 = load i32, i32* @OMAP_MMC_STAT_A_FULL, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @OMAP_MMC_STAT_CMD_CRC, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @OMAP_MMC_STAT_CMD_TOUT, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @OMAP_MMC_STAT_DATA_CRC, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @OMAP_MMC_STAT_DATA_TOUT, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @OMAP_MMC_STAT_END_OF_CMD, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @OMAP_MMC_STAT_CARD_ERR, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @OMAP_MMC_STAT_END_OF_DATA, align 4
  %140 = or i32 %138, %139
  store i32 %140, i32* %8, align 4
  %141 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %142 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @MMC_ERASE, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %98
  %147 = load i32, i32* @OMAP_MMC_STAT_DATA_TOUT, align 4
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %8, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %146, %98
  %152 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %153 = load i32, i32* @IE, align 4
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %152, i32 %153, i32 %154)
  %156 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %157 = load i32, i32* @CMD, align 4
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %156, i32 %157, i32 %158)
  ret void
}

declare dso_local i32 @mmc_resp_type(%struct.mmc_command*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i64 @mmc_cmd_type(%struct.mmc_command*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
