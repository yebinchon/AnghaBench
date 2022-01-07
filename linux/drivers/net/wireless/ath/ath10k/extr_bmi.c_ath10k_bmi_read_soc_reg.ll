; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_bmi.c_ath10k_bmi_read_soc_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_bmi.c_ath10k_bmi_read_soc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.bmi_cmd = type { %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { i8* }
%union.bmi_resp = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ATH10K_DBG_BMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"bmi read soc register 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"bmi read soc register command in progress\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BMI_READ_SOC_REGISTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Unable to read soc register from device: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"bmi read soc register value 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_bmi_read_soc_reg(%struct.ath10k* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bmi_cmd, align 8
  %9 = alloca %union.bmi_resp, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 16, i32* %10, align 4
  store i32 4, i32* %11, align 4
  %13 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %14 = load i32, i32* @ATH10K_DBG_BMI, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ath10k_dbg(%struct.ath10k* %13, i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %18 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %24 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %56

27:                                               ; preds = %3
  %28 = load i32, i32* @BMI_READ_SOC_REGISTER, align 4
  %29 = call i8* @__cpu_to_le32(i32 %28)
  %30 = getelementptr inbounds %struct.bmi_cmd, %struct.bmi_cmd* %8, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i8* @__cpu_to_le32(i32 %31)
  %33 = getelementptr inbounds %struct.bmi_cmd, %struct.bmi_cmd* %8, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @ath10k_hif_exchange_bmi_msg(%struct.ath10k* %35, %struct.bmi_cmd* %8, i32 %36, %union.bmi_resp* %9, i32* %11)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %27
  %41 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %4, align 4
  br label %56

45:                                               ; preds = %27
  %46 = bitcast %union.bmi_resp* %9 to %struct.TYPE_6__*
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @__le32_to_cpu(i32 %48)
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %52 = load i32, i32* @ATH10K_DBG_BMI, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ath10k_dbg(%struct.ath10k* %51, i32 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %45, %40, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

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
