; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_compare_fw_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_compare_fw_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@FW_MSG_CODE_DRV_LOAD_COMMON_CHIP = common dso_local global i64 0, align 8
@FW_MSG_CODE_DRV_LOAD_COMMON = common dso_local global i64 0, align 8
@BCM_5710_FW_MINOR_VERSION = common dso_local global i32 0, align 4
@BCM_5710_FW_REVISION_VERSION = common dso_local global i32 0, align 4
@BCM_5710_FW_ENGINEERING_VERSION = common dso_local global i32 0, align 4
@XSEM_REG_PRAM = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"loaded fw %x, my fw %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"bnx2x with FW %x was already loaded which mismatches my %x FW. Aborting\0A\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"bnx2x with FW %x was already loaded which mismatches my %x FW, possibly due to MF UNDI\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_compare_fw_ver(%struct.bnx2x* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @FW_MSG_CODE_DRV_LOAD_COMMON_CHIP, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %54

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @FW_MSG_CODE_DRV_LOAD_COMMON, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %13
  %18 = load i32, i32* @BCM_5710_FW_MINOR_VERSION, align 4
  %19 = shl i32 %18, 8
  %20 = sext i32 %19 to i64
  %21 = load i32, i32* @BCM_5710_FW_REVISION_VERSION, align 4
  %22 = shl i32 %21, 16
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = load i32, i32* @BCM_5710_FW_ENGINEERING_VERSION, align 4
  %26 = shl i32 %25, 24
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  store i64 %28, i64* %8, align 8
  %29 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %30 = load i32, i32* @XSEM_REG_PRAM, align 4
  %31 = call i64 @REG_RD(%struct.bnx2x* %29, i32 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i32, i32* @BNX2X_MSG_SP, align 4
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @DP(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %34)
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %17
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %44)
  br label %50

46:                                               ; preds = %39
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0), i64 %47, i64 %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %55

53:                                               ; preds = %17
  br label %54

54:                                               ; preds = %53, %13, %3
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %50
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @DP(i32, i8*, i64, i64) #1

declare dso_local i32 @BNX2X_ERR(i8*, i64, i64) #1

declare dso_local i32 @BNX2X_DEV_INFO(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
