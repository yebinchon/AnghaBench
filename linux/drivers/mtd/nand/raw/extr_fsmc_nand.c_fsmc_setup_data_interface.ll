; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_fsmc_setup_data_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_fsmc_setup_data_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_data_interface = type { i32 }
%struct.fsmc_nand_data = type { i32 }
%struct.fsmc_nand_timings = type { i32 }
%struct.nand_sdr_timings = type { i32 }

@NAND_DATA_IFACE_CHECK_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, %struct.nand_data_interface*)* @fsmc_setup_data_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsmc_setup_data_interface(%struct.nand_chip* %0, i32 %1, %struct.nand_data_interface* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_data_interface*, align 8
  %8 = alloca %struct.fsmc_nand_data*, align 8
  %9 = alloca %struct.fsmc_nand_timings, align 4
  %10 = alloca %struct.nand_sdr_timings*, align 8
  %11 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nand_data_interface* %2, %struct.nand_data_interface** %7, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %13 = call %struct.fsmc_nand_data* @nand_to_fsmc(%struct.nand_chip* %12)
  store %struct.fsmc_nand_data* %13, %struct.fsmc_nand_data** %8, align 8
  %14 = load %struct.nand_data_interface*, %struct.nand_data_interface** %7, align 8
  %15 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_data_interface* %14)
  store %struct.nand_sdr_timings* %15, %struct.nand_sdr_timings** %10, align 8
  %16 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %17 = call i64 @IS_ERR(%struct.nand_sdr_timings* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %21 = call i32 @PTR_ERR(%struct.nand_sdr_timings* %20)
  store i32 %21, i32* %4, align 4
  br label %38

22:                                               ; preds = %3
  %23 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %8, align 8
  %24 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %25 = call i32 @fsmc_calc_timings(%struct.fsmc_nand_data* %23, %struct.nand_sdr_timings* %24, %struct.fsmc_nand_timings* %9)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %38

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @NAND_DATA_IFACE_CHECK_ONLY, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %38

35:                                               ; preds = %30
  %36 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %8, align 8
  %37 = call i32 @fsmc_nand_setup(%struct.fsmc_nand_data* %36, %struct.fsmc_nand_timings* %9)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %34, %28, %19
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.fsmc_nand_data* @nand_to_fsmc(%struct.nand_chip*) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_data_interface*) #1

declare dso_local i64 @IS_ERR(%struct.nand_sdr_timings*) #1

declare dso_local i32 @PTR_ERR(%struct.nand_sdr_timings*) #1

declare dso_local i32 @fsmc_calc_timings(%struct.fsmc_nand_data*, %struct.nand_sdr_timings*, %struct.fsmc_nand_timings*) #1

declare dso_local i32 @fsmc_nand_setup(%struct.fsmc_nand_data*, %struct.fsmc_nand_timings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
