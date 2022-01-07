; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_bmi.c_ath10k_bmi_lz_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_bmi.c_ath10k_bmi_lz_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.bmi_cmd = type { %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i32, i8* }

@ATH10K_DBG_BMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"bmi lz data buffer 0x%pK length %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"command disallowed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BMI_MAX_DATA_SIZE = common dso_local global i32 0, align 4
@BMI_LZ_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"unable to write to the device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_bmi_lz_data(%struct.ath10k* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bmi_cmd, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 24, i32* %9, align 4
  %12 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %13 = load i32, i32* @ATH10K_DBG_BMI, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @ath10k_dbg(%struct.ath10k* %12, i32 %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %15)
  %17 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %18 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %24 = call i32 @ath10k_warn(%struct.ath10k* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %73

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %64, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @BMI_MAX_DATA_SIZE, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %33, %34
  %36 = call i32 @min(i32 %32, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, 3
  %39 = call i32 @WARN_ON_ONCE(i32 %38)
  %40 = load i32, i32* @BMI_LZ_DATA, align 4
  %41 = call i8* @__cpu_to_le32(i32 %40)
  %42 = getelementptr inbounds %struct.bmi_cmd, %struct.bmi_cmd* %8, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i8* @__cpu_to_le32(i32 %43)
  %45 = getelementptr inbounds %struct.bmi_cmd, %struct.bmi_cmd* %8, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = getelementptr inbounds %struct.bmi_cmd, %struct.bmi_cmd* %8, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @memcpy(i32 %49, i8* %50, i32 %51)
  %53 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %54, %55
  %57 = call i32 @ath10k_hif_exchange_bmi_msg(%struct.ath10k* %53, %struct.bmi_cmd* %8, i32 %56, i32* null, i32* null)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %31
  %61 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %62 = call i32 @ath10k_warn(%struct.ath10k* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %4, align 4
  br label %73

64:                                               ; preds = %31
  %65 = load i32, i32* %10, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr i8, i8* %66, i64 %67
  store i8* %68, i8** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %28

72:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %60, %22
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i8*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @ath10k_hif_exchange_bmi_msg(%struct.ath10k*, %struct.bmi_cmd*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
