; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_bmi.c_ath10k_bmi_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_bmi.c_ath10k_bmi_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.bmi_cmd = type { %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { i8*, i8* }
%union.bmi_resp = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ATH10K_DBG_BMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"bmi execute address 0x%x param 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"command disallowed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BMI_EXECUTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"unable to read from the device\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"invalid execute response length (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"bmi execute result 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_bmi_execute(%struct.ath10k* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.bmi_cmd, align 8
  %11 = alloca %union.bmi_resp, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 24, i32* %12, align 4
  store i32 4, i32* %13, align 4
  %15 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %16 = load i32, i32* @ATH10K_DBG_BMI, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 (%struct.ath10k*, i32, i8*, i32, ...) @ath10k_dbg(%struct.ath10k* %15, i32 %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %21 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %27 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %72

30:                                               ; preds = %4
  %31 = load i32, i32* @BMI_EXECUTE, align 4
  %32 = call i8* @__cpu_to_le32(i32 %31)
  %33 = getelementptr inbounds %struct.bmi_cmd, %struct.bmi_cmd* %10, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i8* @__cpu_to_le32(i32 %34)
  %36 = getelementptr inbounds %struct.bmi_cmd, %struct.bmi_cmd* %10, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i8* @__cpu_to_le32(i32 %38)
  %40 = getelementptr inbounds %struct.bmi_cmd, %struct.bmi_cmd* %10, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @ath10k_hif_exchange_bmi_msg(%struct.ath10k* %42, %struct.bmi_cmd* %10, i32 %43, %union.bmi_resp* %11, i32* %13)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %30
  %48 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %49 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %5, align 4
  br label %72

51:                                               ; preds = %30
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %53, 4
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %72

61:                                               ; preds = %51
  %62 = bitcast %union.bmi_resp* %11 to %struct.TYPE_6__*
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @__le32_to_cpu(i32 %64)
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %68 = load i32, i32* @ATH10K_DBG_BMI, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (%struct.ath10k*, i32, i8*, i32, ...) @ath10k_dbg(%struct.ath10k* %67, i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %61, %55, %47, %25
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, ...) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_hif_exchange_bmi_msg(%struct.ath10k*, %struct.bmi_cmd*, i32, %union.bmi_resp*, i32*) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
