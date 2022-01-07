; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_android-goldfish.c_goldfish_mmc_start_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_android-goldfish.c_goldfish_mmc_start_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goldfish_mmc_host = type { i64, %struct.TYPE_2__*, %struct.mmc_command* }
%struct.TYPE_2__ = type { i32 }
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
@MMC_ARG = common dso_local global i32 0, align 4
@MMC_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.goldfish_mmc_host*, %struct.mmc_command*)* @goldfish_mmc_start_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goldfish_mmc_start_command(%struct.goldfish_mmc_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.goldfish_mmc_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.goldfish_mmc_host* %0, %struct.goldfish_mmc_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %8 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %9 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %10 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %9, i32 0, i32 2
  store %struct.mmc_command* %8, %struct.mmc_command** %10, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %12 = call i32 @mmc_resp_type(%struct.mmc_command* %11)
  switch i32 %12, label %17 [
    i32 132, label %13
    i32 131, label %14
    i32 130, label %14
    i32 129, label %15
    i32 128, label %16
  ]

13:                                               ; preds = %2
  br label %24

14:                                               ; preds = %2, %2
  store i32 1, i32* %6, align 4
  br label %24

15:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  br label %24

16:                                               ; preds = %2
  store i32 3, i32* %6, align 4
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %19 = call i32 @mmc_from_priv(%struct.goldfish_mmc_host* %18)
  %20 = call i32 @mmc_dev(i32 %19)
  %21 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %22 = call i32 @mmc_resp_type(%struct.mmc_command* %21)
  %23 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %17, %16, %15, %14, %13
  %25 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %26 = call i64 @mmc_cmd_type(%struct.mmc_command* %25)
  %27 = load i64, i64* @MMC_CMD_ADTC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @OMAP_MMC_CMDTYPE_ADTC, align 4
  store i32 %30, i32* %7, align 4
  br label %49

31:                                               ; preds = %24
  %32 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %33 = call i64 @mmc_cmd_type(%struct.mmc_command* %32)
  %34 = load i64, i64* @MMC_CMD_BC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @OMAP_MMC_CMDTYPE_BC, align 4
  store i32 %37, i32* %7, align 4
  br label %48

38:                                               ; preds = %31
  %39 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %40 = call i64 @mmc_cmd_type(%struct.mmc_command* %39)
  %41 = load i64, i64* @MMC_CMD_BCR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @OMAP_MMC_CMDTYPE_BCR, align 4
  store i32 %44, i32* %7, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @OMAP_MMC_CMDTYPE_AC, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %43
  br label %48

48:                                               ; preds = %47, %36
  br label %49

49:                                               ; preds = %48, %29
  %50 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %51 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = shl i32 %53, 8
  %55 = or i32 %52, %54
  %56 = load i32, i32* %7, align 4
  %57 = shl i32 %56, 12
  %58 = or i32 %55, %57
  store i32 %58, i32* %5, align 4
  %59 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %60 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MMC_BUSMODE_OPENDRAIN, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %49
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, 64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %64, %49
  %68 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %69 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MMC_RSP_BUSY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, 2048
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %67
  %78 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %79 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = icmp ne %struct.TYPE_2__* %80, null
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %84 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MMC_DATA_WRITE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %82
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, 32768
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %91, %82, %77
  %95 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %96 = load i32, i32* @MMC_ARG, align 4
  %97 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %98 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @GOLDFISH_MMC_WRITE(%struct.goldfish_mmc_host* %95, i32 %96, i32 %99)
  %101 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %102 = load i32, i32* @MMC_CMD, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @GOLDFISH_MMC_WRITE(%struct.goldfish_mmc_host* %101, i32 %102, i32 %103)
  ret void
}

declare dso_local i32 @mmc_resp_type(%struct.mmc_command*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mmc_from_priv(%struct.goldfish_mmc_host*) #1

declare dso_local i64 @mmc_cmd_type(%struct.mmc_command*) #1

declare dso_local i32 @GOLDFISH_MMC_WRITE(%struct.goldfish_mmc_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
