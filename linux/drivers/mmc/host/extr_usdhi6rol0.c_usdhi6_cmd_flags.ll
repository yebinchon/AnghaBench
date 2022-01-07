; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_cmd_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_cmd_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usdhi6_host = type { i32, i32, %struct.mmc_request* }
%struct.mmc_request = type { i32, %struct.TYPE_2__*, %struct.mmc_command* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mmc_command = type { i32 }

@USDHI6_SD_CMD_APP = common dso_local global i32 0, align 4
@USDHI6_SD_CMD_DATA = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@USDHI6_SD_CMD_READ = common dso_local global i32 0, align 4
@MMC_READ_MULTIPLE_BLOCK = common dso_local global i64 0, align 8
@MMC_WRITE_MULTIPLE_BLOCK = common dso_local global i64 0, align 8
@SD_IO_RW_EXTENDED = common dso_local global i64 0, align 8
@USDHI6_SD_CMD_MULTI = common dso_local global i32 0, align 4
@USDHI6_SD_CMD_CMD12_AUTO_OFF = common dso_local global i32 0, align 4
@USDHI6_SD_CMD_MODE_RSP_NONE = common dso_local global i32 0, align 4
@USDHI6_SD_CMD_MODE_RSP_R1 = common dso_local global i32 0, align 4
@USDHI6_SD_CMD_MODE_RSP_R1B = common dso_local global i32 0, align 4
@USDHI6_SD_CMD_MODE_RSP_R2 = common dso_local global i32 0, align 4
@USDHI6_SD_CMD_MODE_RSP_R3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown response type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usdhi6_host*)* @usdhi6_cmd_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usdhi6_cmd_flags(%struct.usdhi6_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usdhi6_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca i32, align 4
  store %struct.usdhi6_host* %0, %struct.usdhi6_host** %3, align 8
  %7 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %8 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %7, i32 0, i32 2
  %9 = load %struct.mmc_request*, %struct.mmc_request** %8, align 8
  store %struct.mmc_request* %9, %struct.mmc_request** %4, align 8
  %10 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %10, i32 0, i32 2
  %12 = load %struct.mmc_command*, %struct.mmc_command** %11, align 8
  store %struct.mmc_command* %12, %struct.mmc_command** %5, align 8
  %13 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %14 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %17 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %22 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load i32, i32* @USDHI6_SD_CMD_APP, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %28 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %122

31:                                               ; preds = %26
  %32 = load i32, i32* @USDHI6_SD_CMD_DATA, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MMC_DATA_READ, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load i32, i32* @USDHI6_SD_CMD_READ, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %43, %31
  %48 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %49 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* @MMC_READ_MULTIPLE_BLOCK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %75, label %54

54:                                               ; preds = %47
  %55 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %56 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @MMC_WRITE_MULTIPLE_BLOCK, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %75, label %61

61:                                               ; preds = %54
  %62 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %63 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @SD_IO_RW_EXTENDED, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %61
  %69 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %70 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %88

75:                                               ; preds = %68, %54, %47
  %76 = load i32, i32* @USDHI6_SD_CMD_MULTI, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %80 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %75
  %84 = load i32, i32* @USDHI6_SD_CMD_CMD12_AUTO_OFF, align 4
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %75
  br label %88

88:                                               ; preds = %87, %68, %61
  %89 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %90 = call i32 @mmc_resp_type(%struct.mmc_command* %89)
  switch i32 %90, label %111 [
    i32 132, label %91
    i32 131, label %95
    i32 130, label %99
    i32 129, label %103
    i32 128, label %107
  ]

91:                                               ; preds = %88
  %92 = load i32, i32* @USDHI6_SD_CMD_MODE_RSP_NONE, align 4
  %93 = load i32, i32* %6, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %6, align 4
  br label %121

95:                                               ; preds = %88
  %96 = load i32, i32* @USDHI6_SD_CMD_MODE_RSP_R1, align 4
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %121

99:                                               ; preds = %88
  %100 = load i32, i32* @USDHI6_SD_CMD_MODE_RSP_R1B, align 4
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %6, align 4
  br label %121

103:                                              ; preds = %88
  %104 = load i32, i32* @USDHI6_SD_CMD_MODE_RSP_R2, align 4
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %6, align 4
  br label %121

107:                                              ; preds = %88
  %108 = load i32, i32* @USDHI6_SD_CMD_MODE_RSP_R3, align 4
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  br label %121

111:                                              ; preds = %88
  %112 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %113 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @mmc_dev(i32 %114)
  %116 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %117 = call i32 @mmc_resp_type(%struct.mmc_command* %116)
  %118 = call i32 @dev_warn(i32 %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %124

121:                                              ; preds = %107, %103, %99, %95, %91
  br label %122

122:                                              ; preds = %121, %26
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %122, %111
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @mmc_resp_type(%struct.mmc_command*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
