; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_set_uhs_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_set_uhs_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.mmc_host*)*, i32 }
%struct.mmc_command = type { i32, i32*, i64, i32 }

@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: cannot verify signal voltage switch\0A\00", align 1
@SD_SWITCH_VOLTAGE = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4
@R1_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"%s: Signal voltage switch failed, power cycling card\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_set_uhs_voltage(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_command, align 8
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast %struct.mmc_command* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 32, i1 false)
  store i32 0, i32* %7, align 4
  %9 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %118

18:                                               ; preds = %2
  %19 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64 (%struct.mmc_host*)*, i64 (%struct.mmc_host*)** %22, align 8
  %24 = icmp ne i64 (%struct.mmc_host*)* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %27 = call i32 @mmc_hostname(%struct.mmc_host* %26)
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %18
  %30 = load i32, i32* @SD_SWITCH_VOLTAGE, align 4
  %31 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 3
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @MMC_RSP_R1, align 4
  %34 = load i32, i32* @MMC_CMD_AC, align 4
  %35 = or i32 %33, %34
  %36 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %38 = call i32 @mmc_wait_for_cmd(%struct.mmc_host* %37, %struct.mmc_command* %6, i32 0)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %118

43:                                               ; preds = %29
  %44 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %45 = call i32 @mmc_host_is_spi(%struct.mmc_host* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @R1_ERROR, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %118

58:                                               ; preds = %47, %43
  %59 = call i32 @mmc_delay(i32 1)
  %60 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %61 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64 (%struct.mmc_host*)*, i64 (%struct.mmc_host*)** %63, align 8
  %65 = icmp ne i64 (%struct.mmc_host*)* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %58
  %67 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %68 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64 (%struct.mmc_host*)*, i64 (%struct.mmc_host*)** %70, align 8
  %72 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %73 = call i64 %71(%struct.mmc_host* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* @EAGAIN, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %106

78:                                               ; preds = %66, %58
  %79 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %80 = call i64 @mmc_host_set_uhs_voltage(%struct.mmc_host* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* @EAGAIN, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  br label %106

85:                                               ; preds = %78
  %86 = call i32 @mmc_delay(i32 1)
  %87 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %88 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64 (%struct.mmc_host*)*, i64 (%struct.mmc_host*)** %90, align 8
  %92 = icmp ne i64 (%struct.mmc_host*)* %91, null
  br i1 %92, label %93, label %105

93:                                               ; preds = %85
  %94 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %95 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64 (%struct.mmc_host*)*, i64 (%struct.mmc_host*)** %97, align 8
  %99 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %100 = call i64 %98(%struct.mmc_host* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %93
  %103 = load i32, i32* @EAGAIN, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %102, %93, %85
  br label %106

106:                                              ; preds = %105, %82, %75
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %111 = call i32 @mmc_hostname(%struct.mmc_host* %110)
  %112 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  %113 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @mmc_power_cycle(%struct.mmc_host* %113, i32 %114)
  br label %116

116:                                              ; preds = %109, %106
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %55, %41, %15
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pr_warn(i8*, i32) #2

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #2

declare dso_local i32 @mmc_wait_for_cmd(%struct.mmc_host*, %struct.mmc_command*, i32) #2

declare dso_local i32 @mmc_host_is_spi(%struct.mmc_host*) #2

declare dso_local i32 @mmc_delay(i32) #2

declare dso_local i64 @mmc_host_set_uhs_voltage(%struct.mmc_host*) #2

declare dso_local i32 @pr_debug(i8*, i32) #2

declare dso_local i32 @mmc_power_cycle(%struct.mmc_host*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
