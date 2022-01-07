; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_start_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_start_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.mmc_command*, %struct.mmc_data* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.mmc_data = type { i32, i32 }
%struct.mmc_command = type { i32, i32 }

@RESP_NONE = common dso_local global i32 0, align 4
@RESP_R1 = common dso_local global i32 0, align 4
@RESP_R1B = common dso_local global i32 0, align 4
@RESP_R2 = common dso_local global i32 0, align 4
@RESP_R3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown response type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DATA_PRESENT = common dso_local global i32 0, align 4
@CTL_STOP_INTERNAL_ACTION = common dso_local global i32 0, align 4
@TMIO_STOP_SEC = common dso_local global i32 0, align 4
@TRANSFER_MULTI = common dso_local global i32 0, align 4
@TMIO_MMC_HAVE_CMD12_CTRL = common dso_local global i32 0, align 4
@SD_IO_RW_EXTENDED = common dso_local global i32 0, align 4
@NO_CMD12_ISSUE = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@TRANSFER_READ = common dso_local global i32 0, align 4
@TMIO_MASK_CMD = common dso_local global i32 0, align 4
@CTL_ARG_REG = common dso_local global i32 0, align 4
@CTL_SD_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmio_mmc_host*, %struct.mmc_command*)* @tmio_mmc_start_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmio_mmc_start_command(%struct.tmio_mmc_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tmio_mmc_host*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %4, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %5, align 8
  %8 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %9 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %8, i32 0, i32 3
  %10 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  store %struct.mmc_data* %10, %struct.mmc_data** %6, align 8
  %11 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %12 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %15 = call i32 @mmc_resp_type(%struct.mmc_command* %14)
  switch i32 %15, label %36 [
    i32 133, label %16
    i32 132, label %20
    i32 130, label %20
    i32 131, label %24
    i32 129, label %28
    i32 128, label %32
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @RESP_NONE, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  br label %42

20:                                               ; preds = %2, %2
  %21 = load i32, i32* @RESP_R1, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %42

24:                                               ; preds = %2
  %25 = load i32, i32* @RESP_R1B, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %42

28:                                               ; preds = %2
  %29 = load i32, i32* @RESP_R2, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %42

32:                                               ; preds = %2
  %33 = load i32, i32* @RESP_R3, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %42

36:                                               ; preds = %2
  %37 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %38 = call i32 @mmc_resp_type(%struct.mmc_command* %37)
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %116

42:                                               ; preds = %32, %28, %24, %20, %16
  %43 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %44 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %45 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %44, i32 0, i32 2
  store %struct.mmc_command* %43, %struct.mmc_command** %45, align 8
  %46 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %47 = icmp ne %struct.mmc_data* %46, null
  br i1 %47, label %48, label %102

48:                                               ; preds = %42
  %49 = load i32, i32* @DATA_PRESENT, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %53 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %90

56:                                               ; preds = %48
  %57 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %58 = load i32, i32* @CTL_STOP_INTERNAL_ACTION, align 4
  %59 = load i32, i32* @TMIO_STOP_SEC, align 4
  %60 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %57, i32 %58, i32 %59)
  %61 = load i32, i32* @TRANSFER_MULTI, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %65 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @TMIO_MMC_HAVE_CMD12_CTRL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %56
  %73 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %74 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SD_IO_RW_EXTENDED, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %85, label %78

78:                                               ; preds = %72
  %79 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %80 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78, %72
  %86 = load i32, i32* @NO_CMD12_ISSUE, align 4
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %85, %78, %56
  br label %90

90:                                               ; preds = %89, %48
  %91 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %92 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @MMC_DATA_READ, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load i32, i32* @TRANSFER_READ, align 4
  %99 = load i32, i32* %7, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %97, %90
  br label %102

102:                                              ; preds = %101, %42
  %103 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %104 = load i32, i32* @TMIO_MASK_CMD, align 4
  %105 = call i32 @tmio_mmc_enable_mmc_irqs(%struct.tmio_mmc_host* %103, i32 %104)
  %106 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %107 = load i32, i32* @CTL_ARG_REG, align 4
  %108 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %109 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @sd_ctrl_write32_as_16_and_16(%struct.tmio_mmc_host* %106, i32 %107, i32 %110)
  %112 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %113 = load i32, i32* @CTL_SD_CMD, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %112, i32 %113, i32 %114)
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %102, %36
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @mmc_resp_type(%struct.mmc_command*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @sd_ctrl_write16(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i32 @tmio_mmc_enable_mmc_irqs(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @sd_ctrl_write32_as_16_and_16(%struct.tmio_mmc_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
