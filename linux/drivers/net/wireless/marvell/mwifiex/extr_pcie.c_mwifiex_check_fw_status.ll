; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_check_fw_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_check_fw_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mwifiex_pcie_card_reg* }
%struct.mwifiex_pcie_card_reg = type { i32, i32 }

@PCIE_HOST_INT_STATUS_MASK = common dso_local global i32 0, align 4
@HOST_INTR_MASK = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Write register failed\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Setting driver ready signature\0A\00", align 1
@FIRMWARE_READY_PCIE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to write driver ready signature\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Try %d if FW is ready <%d,%#x>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*, i64)* @mwifiex_check_fw_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_check_fw_status(%struct.mwifiex_adapter* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pcie_service_card*, align 8
  %9 = alloca %struct.mwifiex_pcie_card_reg*, align 8
  %10 = alloca i64, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %11, i32 0, i32 0
  %13 = load %struct.pcie_service_card*, %struct.pcie_service_card** %12, align 8
  store %struct.pcie_service_card* %13, %struct.pcie_service_card** %8, align 8
  %14 = load %struct.pcie_service_card*, %struct.pcie_service_card** %8, align 8
  %15 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %16, align 8
  store %struct.mwifiex_pcie_card_reg* %17, %struct.mwifiex_pcie_card_reg** %9, align 8
  %18 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %19 = load i32, i32* @PCIE_HOST_INT_STATUS_MASK, align 4
  %20 = load i64, i64* @HOST_INTR_MASK, align 8
  %21 = call i64 @mwifiex_write_reg(%struct.mwifiex_adapter* %18, i32 %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %25 = load i32, i32* @ERROR, align 4
  %26 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %24, i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %79

27:                                               ; preds = %2
  %28 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %29 = load i32, i32* @INFO, align 4
  %30 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %28, i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %32 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %9, align 8
  %33 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @FIRMWARE_READY_PCIE, align 8
  %36 = call i64 @mwifiex_write_reg(%struct.mwifiex_adapter* %31, i32 %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %40 = load i32, i32* @ERROR, align 4
  %41 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %39, i32 %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %79

42:                                               ; preds = %27
  store i64 0, i64* %10, align 8
  br label %43

43:                                               ; preds = %74, %42
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %43
  %48 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %49 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %9, align 8
  %50 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @mwifiex_read_reg(%struct.mwifiex_adapter* %48, i32 %51, i64* %7)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 -1, i32* %6, align 4
  br label %56

55:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %54
  %57 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %58 = load i32, i32* @INFO, align 4
  %59 = load i64, i64* %10, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i64, i64* %7, align 8
  %62 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %57, i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %59, i32 %60, i64 %61)
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %74

66:                                               ; preds = %56
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @FIRMWARE_READY_PCIE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %77

71:                                               ; preds = %66
  %72 = call i32 @msleep(i32 100)
  store i32 -1, i32* %6, align 4
  br label %73

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %73, %65
  %75 = load i64, i64* %10, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %10, align 8
  br label %43

77:                                               ; preds = %70, %43
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %38, %23
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @mwifiex_write_reg(%struct.mwifiex_adapter*, i32, i64) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i64 @mwifiex_read_reg(%struct.mwifiex_adapter*, i32, i64*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
