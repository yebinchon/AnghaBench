; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxic_nand.c_mxic_nfc_setup_data_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxic_nand.c_mxic_nfc_setup_data_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_data_interface = type { i32 }
%struct.mxic_nand_ctlr = type { i64, i32 }
%struct.nand_sdr_timings = type { i32 }

@NAND_DATA_IFACE_CHECK_ONLY = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"set freq:%ld failed\0A\00", align 1
@DATA_STROB_EDO_EN = common dso_local global i32 0, align 4
@DATA_STROB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, %struct.nand_data_interface*)* @mxic_nfc_setup_data_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxic_nfc_setup_data_interface(%struct.nand_chip* %0, i32 %1, %struct.nand_data_interface* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_data_interface*, align 8
  %8 = alloca %struct.mxic_nand_ctlr*, align 8
  %9 = alloca %struct.nand_sdr_timings*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nand_data_interface* %2, %struct.nand_data_interface** %7, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %13 = call %struct.mxic_nand_ctlr* @nand_get_controller_data(%struct.nand_chip* %12)
  store %struct.mxic_nand_ctlr* %13, %struct.mxic_nand_ctlr** %8, align 8
  %14 = load %struct.nand_data_interface*, %struct.nand_data_interface** %7, align 8
  %15 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_data_interface* %14)
  store %struct.nand_sdr_timings* %15, %struct.nand_sdr_timings** %9, align 8
  %16 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %17 = call i64 @IS_ERR(%struct.nand_sdr_timings* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %21 = call i32 @PTR_ERR(%struct.nand_sdr_timings* %20)
  store i32 %21, i32* %4, align 4
  br label %60

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @NAND_DATA_IFACE_CHECK_ONLY, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %60

27:                                               ; preds = %22
  %28 = load i32, i32* @NSEC_PER_SEC, align 4
  %29 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %30 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 1000
  %33 = sdiv i32 %28, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %10, align 8
  %35 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %8, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @mxic_nfc_set_freq(%struct.mxic_nand_ctlr* %35, i64 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  %41 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %8, align 8
  %42 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %40, %27
  %47 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %48 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 30000
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load i32, i32* @DATA_STROB_EDO_EN, align 4
  %53 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %8, align 8
  %54 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DATA_STROB, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  br label %59

59:                                               ; preds = %51, %46
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %26, %19
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.mxic_nand_ctlr* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_data_interface*) #1

declare dso_local i64 @IS_ERR(%struct.nand_sdr_timings*) #1

declare dso_local i32 @PTR_ERR(%struct.nand_sdr_timings*) #1

declare dso_local i32 @mxic_nfc_set_freq(%struct.mxic_nand_ctlr*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
