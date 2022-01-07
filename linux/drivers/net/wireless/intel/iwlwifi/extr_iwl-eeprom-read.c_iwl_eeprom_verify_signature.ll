; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-eeprom-read.c_iwl_eeprom_verify_signature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-eeprom-read.c_iwl_eeprom_verify_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }

@CSR_EEPROM_GP = common dso_local global i32 0, align 4
@CSR_EEPROM_GP_VALID_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"EEPROM signature=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"EEPROM with bad signature: 0x%08x\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"OTP with bad signature: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"bad EEPROM/OTP signature, type=%s, EEPROM_GP=0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"OTP\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"EEPROM\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, i32)* @iwl_eeprom_verify_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_eeprom_verify_signature(%struct.iwl_trans* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %8 = load i32, i32* @CSR_EEPROM_GP, align 4
  %9 = call i32 @iwl_read32(%struct.iwl_trans* %7, i32 %8)
  %10 = load i32, i32* @CSR_EEPROM_GP_VALID_MSK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @IWL_DEBUG_EEPROM(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %39 [
    i32 130, label %18
    i32 129, label %28
    i32 128, label %28
    i32 131, label %38
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %49

27:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %49

28:                                               ; preds = %2, %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %49

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %2, %38
  %40 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %40, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %44, i32 %45)
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %39, %37, %31, %27, %21
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @IWL_DEBUG_EEPROM(i32, i8*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
