; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_cmd_is_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_cmd_is_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdc_host = type { i32, i32, i64 }
%struct.mmc_request = type { i32 }
%struct.mmc_command = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@SDC_STS = common dso_local global i64 0, align 8
@SDC_STS_CMDBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"CMD bus busy detected\0A\00", align 1
@REQ_CMD_BUSY = common dso_local global i32 0, align 4
@MSDC_INT_CMDTMO = common dso_local global i32 0, align 4
@MMC_RSP_R1B = common dso_local global i64 0, align 8
@SDC_STS_SDCBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Controller busy detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msdc_host*, %struct.mmc_request*, %struct.mmc_command*)* @msdc_cmd_is_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdc_cmd_is_ready(%struct.msdc_host* %0, %struct.mmc_request* %1, %struct.mmc_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msdc_host*, align 8
  %6 = alloca %struct.mmc_request*, align 8
  %7 = alloca %struct.mmc_command*, align 8
  %8 = alloca i64, align 8
  store %struct.msdc_host* %0, %struct.msdc_host** %5, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %6, align 8
  store %struct.mmc_command* %2, %struct.mmc_command** %7, align 8
  %9 = load i64, i64* @jiffies, align 8
  %10 = call i64 @msecs_to_jiffies(i32 20)
  %11 = add i64 %9, %10
  store i64 %11, i64* %8, align 8
  br label %12

12:                                               ; preds = %29, %3
  %13 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %14 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SDC_STS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  %19 = load i32, i32* @SDC_STS_CMDBUSY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @time_before(i64 %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %12
  %28 = phi i1 [ false, %12 ], [ %26, %22 ]
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = call i32 (...) @cpu_relax()
  br label %12

31:                                               ; preds = %27
  %32 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %33 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SDC_STS, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  %38 = load i32, i32* @SDC_STS_CMDBUSY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %31
  %42 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %43 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @REQ_CMD_BUSY, align 4
  %47 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %48 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %52 = load i32, i32* @MSDC_INT_CMDTMO, align 4
  %53 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %54 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %55 = call i32 @msdc_cmd_done(%struct.msdc_host* %51, i32 %52, %struct.mmc_request* %53, %struct.mmc_command* %54)
  store i32 0, i32* %4, align 4
  br label %116

56:                                               ; preds = %31
  %57 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %58 = call i64 @mmc_resp_type(%struct.mmc_command* %57)
  %59 = load i64, i64* @MMC_RSP_R1B, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %63 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %115

66:                                               ; preds = %61, %56
  %67 = load i64, i64* @jiffies, align 8
  %68 = call i64 @msecs_to_jiffies(i32 20)
  %69 = add i64 %67, %68
  store i64 %69, i64* %8, align 8
  br label %70

70:                                               ; preds = %87, %66
  %71 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %72 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SDC_STS, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @readl(i64 %75)
  %77 = load i32, i32* @SDC_STS_SDCBUSY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = load i64, i64* @jiffies, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i64 @time_before(i64 %81, i64 %82)
  %84 = icmp ne i64 %83, 0
  br label %85

85:                                               ; preds = %80, %70
  %86 = phi i1 [ false, %70 ], [ %84, %80 ]
  br i1 %86, label %87, label %89

87:                                               ; preds = %85
  %88 = call i32 (...) @cpu_relax()
  br label %70

89:                                               ; preds = %85
  %90 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %91 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SDC_STS, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @readl(i64 %94)
  %96 = load i32, i32* @SDC_STS_SDCBUSY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %89
  %100 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %101 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32, i32* @REQ_CMD_BUSY, align 4
  %105 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %106 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %110 = load i32, i32* @MSDC_INT_CMDTMO, align 4
  %111 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %112 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %113 = call i32 @msdc_cmd_done(%struct.msdc_host* %109, i32 %110, %struct.mmc_request* %111, %struct.mmc_command* %112)
  store i32 0, i32* %4, align 4
  br label %116

114:                                              ; preds = %89
  br label %115

115:                                              ; preds = %114, %61
  store i32 1, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %99, %41
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @msdc_cmd_done(%struct.msdc_host*, i32, %struct.mmc_request*, %struct.mmc_command*) #1

declare dso_local i64 @mmc_resp_type(%struct.mmc_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
