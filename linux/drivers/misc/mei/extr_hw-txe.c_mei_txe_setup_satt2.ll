; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_setup_satt2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_setup_satt2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.mei_txe_hw = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SATT_RANGE_MAX = common dso_local global i32 0, align 4
@SATT2_CTRL_VALID_MSK = common dso_local global i32 0, align 4
@SATT2_CTRL_BR_BASE_ADDR_REG_SHIFT = common dso_local global i32 0, align 4
@SATT2_SAP_SIZE_REG = common dso_local global i32 0, align 4
@SATT2_BRG_BA_LSB_REG = common dso_local global i32 0, align 4
@SATT2_CTRL_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"SATT2: SAP_SIZE_OFFSET=0x%08X, BRG_BA_LSB_OFFSET=0x%08X, CTRL_OFFSET=0x%08X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_txe_setup_satt2(%struct.mei_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mei_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mei_txe_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %13 = call %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device* %12)
  store %struct.mei_txe_hw* %13, %struct.mei_txe_hw** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @lower_32_bits(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @upper_32_bits(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = and i32 %18, -16
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %71

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 15
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %71

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %71

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @SATT_RANGE_MAX, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %71

45:                                               ; preds = %38
  %46 = load i32, i32* @SATT2_CTRL_VALID_MSK, align 4
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @SATT2_CTRL_BR_BASE_ADDR_REG_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  %52 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %8, align 8
  %53 = load i32, i32* @SATT2_SAP_SIZE_REG, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @mei_txe_br_reg_write(%struct.mei_txe_hw* %52, i32 %53, i32 %54)
  %56 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %8, align 8
  %57 = load i32, i32* @SATT2_BRG_BA_LSB_REG, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @mei_txe_br_reg_write(%struct.mei_txe_hw* %56, i32 %57, i32 %58)
  %60 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %8, align 8
  %61 = load i32, i32* @SATT2_CTRL_REG, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @mei_txe_br_reg_write(%struct.mei_txe_hw* %60, i32 %61, i32 %62)
  %64 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %65 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @dev_dbg(i32 %66, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68, i32 %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %45, %42, %35, %28, %21
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @mei_txe_br_reg_write(%struct.mei_txe_hw*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
