; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_rdwr_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_rdwr_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mwifiex_pcie_card_reg* }
%struct.mwifiex_pcie_card_reg = type { i64, i32, i32 }

@RDWR_STATUS_FAILURE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"PCIE write err\0A\00", align 1
@MAX_POLL_TRIES = common dso_local global i32 0, align 4
@FW_DUMP_DONE = common dso_local global i64 0, align 8
@RDWR_STATUS_SUCCESS = common dso_local global i32 0, align 4
@RDWR_STATUS_DONE = common dso_local global i32 0, align 4
@WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"The ctrl reg was changed, re-try again!\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Fail to pull ctrl_data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*, i64)* @mwifiex_pcie_rdwr_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_pcie_rdwr_firmware(%struct.mwifiex_adapter* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pcie_service_card*, align 8
  %11 = alloca %struct.mwifiex_pcie_card_reg*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %12, i32 0, i32 0
  %14 = load %struct.pcie_service_card*, %struct.pcie_service_card** %13, align 8
  store %struct.pcie_service_card* %14, %struct.pcie_service_card** %10, align 8
  %15 = load %struct.pcie_service_card*, %struct.pcie_service_card** %10, align 8
  %16 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %17, align 8
  store %struct.mwifiex_pcie_card_reg* %18, %struct.mwifiex_pcie_card_reg** %11, align 8
  %19 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %20 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %11, align 8
  %21 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @mwifiex_read_reg(%struct.mwifiex_adapter* %19, i32 %22, i32* %9)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  store i32 %26, i32* %3, align 4
  br label %104

27:                                               ; preds = %2
  %28 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %29 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %11, align 8
  %30 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %11, align 8
  %33 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @mwifiex_write_reg(%struct.mwifiex_adapter* %28, i32 %31, i64 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %40 = load i32, i32* @ERROR, align 4
  %41 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %39, i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  store i32 %42, i32* %3, align 4
  br label %104

43:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %96, %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @MAX_POLL_TRIES, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %99

48:                                               ; preds = %44
  %49 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %50 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %11, align 8
  %51 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @mwifiex_read_reg_byte(%struct.mwifiex_adapter* %49, i32 %52, i64* %8)
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @FW_DUMP_DONE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @RDWR_STATUS_SUCCESS, align 4
  store i32 %58, i32* %3, align 4
  br label %104

59:                                               ; preds = %48
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @RDWR_STATUS_DONE, align 4
  store i32 %67, i32* %3, align 4
  br label %104

68:                                               ; preds = %62, %59
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %11, align 8
  %71 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %68
  %75 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %76 = load i32, i32* @WARN, align 4
  %77 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %75, i32 %76, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %79 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %11, align 8
  %80 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %11, align 8
  %83 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @mwifiex_write_reg(%struct.mwifiex_adapter* %78, i32 %81, i64 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %74
  %89 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %90 = load i32, i32* @ERROR, align 4
  %91 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %89, i32 %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  store i32 %92, i32* %3, align 4
  br label %104

93:                                               ; preds = %74
  br label %94

94:                                               ; preds = %93, %68
  %95 = call i32 @usleep_range(i32 100, i32 200)
  br label %96

96:                                               ; preds = %94
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %44

99:                                               ; preds = %44
  %100 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %101 = load i32, i32* @ERROR, align 4
  %102 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %100, i32 %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %99, %88, %66, %57, %38, %25
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i64 @mwifiex_read_reg(%struct.mwifiex_adapter*, i32, i32*) #1

declare dso_local i32 @mwifiex_write_reg(%struct.mwifiex_adapter*, i32, i64) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @mwifiex_read_reg_byte(%struct.mwifiex_adapter*, i32, i64*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
