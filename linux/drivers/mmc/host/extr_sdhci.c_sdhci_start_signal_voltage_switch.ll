; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_start_signal_voltage_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_start_signal_voltage_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mmc_ios = type { i32 }
%struct.sdhci_host = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.sdhci_host*)* }

@SDHCI_SPEC_300 = common dso_local global i64 0, align 8
@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@SDHCI_SIGNALING_330 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SDHCI_CTRL_VDD_180 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s: Switching to 3.3V signalling voltage failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"%s: 3.3V regulator output did not became stable\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@SDHCI_SIGNALING_180 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"%s: Switching to 1.8V signalling voltage failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"%s: 1.8V regulator output did not became stable\0A\00", align 1
@SDHCI_SIGNALING_120 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"%s: Switching to 1.2V signalling voltage failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdhci_start_signal_voltage_switch(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_ios*, align 8
  %6 = alloca %struct.sdhci_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %5, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %10 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %9)
  store %struct.sdhci_host* %10, %struct.sdhci_host** %6, align 8
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %12 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SDHCI_SPEC_300, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %177

17:                                               ; preds = %2
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %19 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %20 = call i32 @sdhci_readw(%struct.sdhci_host* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %22 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %176 [
    i32 128, label %24
    i32 129, label %78
    i32 130, label %145
  ]

24:                                               ; preds = %17
  %25 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %26 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SDHCI_SIGNALING_330, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %177

34:                                               ; preds = %24
  %35 = load i32, i32* @SDHCI_CTRL_VDD_180, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %42 = call i32 @sdhci_writew(%struct.sdhci_host* %39, i32 %40, i32 %41)
  %43 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %44 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @IS_ERR(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %34
  %50 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %51 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %52 = call i32 @mmc_regulator_set_vqmmc(%struct.mmc_host* %50, %struct.mmc_ios* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %57 = call i32 @mmc_hostname(%struct.mmc_host* %56)
  %58 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %177

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %34
  %63 = call i32 @usleep_range(i32 5000, i32 5500)
  %64 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %65 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %66 = call i32 @sdhci_readw(%struct.sdhci_host* %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @SDHCI_CTRL_VDD_180, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %177

72:                                               ; preds = %62
  %73 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %74 = call i32 @mmc_hostname(%struct.mmc_host* %73)
  %75 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EAGAIN, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %177

78:                                               ; preds = %17
  %79 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %80 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SDHCI_SIGNALING_180, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %177

88:                                               ; preds = %78
  %89 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %90 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @IS_ERR(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %108, label %95

95:                                               ; preds = %88
  %96 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %97 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %98 = call i32 @mmc_regulator_set_vqmmc(%struct.mmc_host* %96, %struct.mmc_ios* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %103 = call i32 @mmc_hostname(%struct.mmc_host* %102)
  %104 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %177

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107, %88
  %109 = load i32, i32* @SDHCI_CTRL_VDD_180, align 4
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %7, align 4
  %112 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %115 = call i32 @sdhci_writew(%struct.sdhci_host* %112, i32 %113, i32 %114)
  %116 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %117 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %116, i32 0, i32 2
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32 (%struct.sdhci_host*)*, i32 (%struct.sdhci_host*)** %119, align 8
  %121 = icmp ne i32 (%struct.sdhci_host*)* %120, null
  br i1 %121, label %122, label %130

122:                                              ; preds = %108
  %123 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %124 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %123, i32 0, i32 2
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32 (%struct.sdhci_host*)*, i32 (%struct.sdhci_host*)** %126, align 8
  %128 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %129 = call i32 %127(%struct.sdhci_host* %128)
  br label %130

130:                                              ; preds = %122, %108
  %131 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %132 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %133 = call i32 @sdhci_readw(%struct.sdhci_host* %131, i32 %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @SDHCI_CTRL_VDD_180, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  store i32 0, i32* %3, align 4
  br label %177

139:                                              ; preds = %130
  %140 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %141 = call i32 @mmc_hostname(%struct.mmc_host* %140)
  %142 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @EAGAIN, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %3, align 4
  br label %177

145:                                              ; preds = %17
  %146 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %147 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @SDHCI_SIGNALING_120, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %145
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %3, align 4
  br label %177

155:                                              ; preds = %145
  %156 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %157 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @IS_ERR(i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %175, label %162

162:                                              ; preds = %155
  %163 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %164 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %165 = call i32 @mmc_regulator_set_vqmmc(%struct.mmc_host* %163, %struct.mmc_ios* %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %162
  %169 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %170 = call i32 @mmc_hostname(%struct.mmc_host* %169)
  %171 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* @EIO, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %3, align 4
  br label %177

174:                                              ; preds = %162
  br label %175

175:                                              ; preds = %174, %155
  store i32 0, i32* %3, align 4
  br label %177

176:                                              ; preds = %17
  store i32 0, i32* %3, align 4
  br label %177

177:                                              ; preds = %176, %175, %168, %152, %139, %138, %101, %85, %72, %71, %55, %31, %16
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @mmc_regulator_set_vqmmc(%struct.mmc_host*, %struct.mmc_ios*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
