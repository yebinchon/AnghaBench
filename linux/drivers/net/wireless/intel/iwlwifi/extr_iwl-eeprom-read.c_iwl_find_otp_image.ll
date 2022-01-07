; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-eeprom-read.c_iwl_find_otp_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-eeprom-read.c_iwl_find_otp_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"OTP blocks %d addr 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"OTP has no valid blocks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, i32*)* @iwl_find_otp_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_find_otp_image(%struct.iwl_trans* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %11 = call i32 @iwl_set_otp_access_absolute(%struct.iwl_trans* %10)
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %13 = call i64 @iwl_is_otp_empty(%struct.iwl_trans* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %68

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %51, %18
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @le16_to_cpu(i64 %21)
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %27 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i32, i8*, ...) @IWL_DEBUG_EEPROM(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @iwl_read_otp_word(%struct.iwl_trans* %32, i32 %33, i64* %8)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %19
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %68

39:                                               ; preds = %19
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 2
  store i32 %47, i32* %45, align 4
  store i32 0, i32* %3, align 4
  br label %68

48:                                               ; preds = %39
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %54 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sle i32 %52, %59
  br i1 %60, label %19, label %61

61:                                               ; preds = %51
  %62 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %63 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i32, i8*, ...) @IWL_DEBUG_EEPROM(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %61, %42, %36, %15
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @iwl_set_otp_access_absolute(%struct.iwl_trans*) #1

declare dso_local i64 @iwl_is_otp_empty(%struct.iwl_trans*) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @IWL_DEBUG_EEPROM(i32, i8*, ...) #1

declare dso_local i64 @iwl_read_otp_word(%struct.iwl_trans*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
