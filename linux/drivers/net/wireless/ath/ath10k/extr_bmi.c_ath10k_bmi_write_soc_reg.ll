; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_bmi.c_ath10k_bmi_write_soc_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_bmi.c_ath10k_bmi_write_soc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.bmi_cmd = type { %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i8*, i8* }

@ATH10K_DBG_BMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"bmi write soc register 0x%08x val 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"bmi write soc register command in progress\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BMI_WRITE_SOC_REGISTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Unable to write soc register to device: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_bmi_write_soc_reg(%struct.ath10k* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bmi_cmd, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 24, i32* %9, align 4
  %11 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %12 = load i32, i32* @ATH10K_DBG_BMI, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @ath10k_dbg(%struct.ath10k* %11, i32 %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %17 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %23 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %49

26:                                               ; preds = %3
  %27 = load i32, i32* @BMI_WRITE_SOC_REGISTER, align 4
  %28 = call i8* @__cpu_to_le32(i32 %27)
  %29 = getelementptr inbounds %struct.bmi_cmd, %struct.bmi_cmd* %8, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i8* @__cpu_to_le32(i32 %30)
  %32 = getelementptr inbounds %struct.bmi_cmd, %struct.bmi_cmd* %8, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i8* @__cpu_to_le32(i32 %34)
  %36 = getelementptr inbounds %struct.bmi_cmd, %struct.bmi_cmd* %8, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @ath10k_hif_exchange_bmi_msg(%struct.ath10k* %38, %struct.bmi_cmd* %8, i32 %39, i32* null, i32* null)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %26
  %44 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %43, %21
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_hif_exchange_bmi_msg(%struct.ath10k*, %struct.bmi_cmd*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
