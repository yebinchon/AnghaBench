; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_bmi.c_ath10k_bmi_write_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_bmi.c_ath10k_bmi_write_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.bmi_cmd = type { %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i8*, i8*, i32 }

@ATH10K_DBG_BMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"bmi write address 0x%x length %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"command disallowed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BMI_MAX_DATA_SIZE = common dso_local global i32 0, align 4
@BMI_WRITE_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"unable to write to the device (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_bmi_write_memory(%struct.ath10k* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bmi_cmd, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 32, i32* %11, align 4
  %14 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %15 = load i32, i32* @ATH10K_DBG_BMI, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @ath10k_dbg(%struct.ath10k* %14, i32 %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %20 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %26 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %85

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %70, %29
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %84

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @BMI_MAX_DATA_SIZE, align 4
  %36 = load i32, i32* %11, align 4
  %37 = sub nsw i32 %35, %36
  %38 = call i32 @min(i32 %34, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = getelementptr inbounds %struct.bmi_cmd, %struct.bmi_cmd* %10, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @memcpy(i32 %41, i8* %42, i32 %43)
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @roundup(i32 %45, i32 4)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* @BMI_WRITE_MEMORY, align 4
  %48 = call i8* @__cpu_to_le32(i32 %47)
  %49 = getelementptr inbounds %struct.bmi_cmd, %struct.bmi_cmd* %10, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i8* @__cpu_to_le32(i32 %50)
  %52 = getelementptr inbounds %struct.bmi_cmd, %struct.bmi_cmd* %10, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i8* @__cpu_to_le32(i32 %54)
  %56 = getelementptr inbounds %struct.bmi_cmd, %struct.bmi_cmd* %10, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %59, %60
  %62 = call i32 @ath10k_hif_exchange_bmi_msg(%struct.ath10k* %58, %struct.bmi_cmd* %10, i32 %61, i32* null, i32* null)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %33
  %66 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %5, align 4
  br label %85

70:                                               ; preds = %33
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @min(i32 %71, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr i8, i8* %78, i64 %79
  store i8* %80, i8** %8, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %30

84:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %65, %24
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_hif_exchange_bmi_msg(%struct.ath10k*, %struct.bmi_cmd*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
