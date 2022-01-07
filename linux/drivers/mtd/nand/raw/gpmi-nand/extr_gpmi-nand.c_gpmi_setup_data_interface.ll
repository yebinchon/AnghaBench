; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_setup_data_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_setup_data_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_data_interface = type { i32 }
%struct.gpmi_nand_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nand_sdr_timings = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, %struct.nand_data_interface*)* @gpmi_setup_data_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmi_setup_data_interface(%struct.nand_chip* %0, i32 %1, %struct.nand_data_interface* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_data_interface*, align 8
  %8 = alloca %struct.gpmi_nand_data*, align 8
  %9 = alloca %struct.nand_sdr_timings*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nand_data_interface* %2, %struct.nand_data_interface** %7, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %11 = call %struct.gpmi_nand_data* @nand_get_controller_data(%struct.nand_chip* %10)
  store %struct.gpmi_nand_data* %11, %struct.gpmi_nand_data** %8, align 8
  %12 = load %struct.nand_data_interface*, %struct.nand_data_interface** %7, align 8
  %13 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_data_interface* %12)
  store %struct.nand_sdr_timings* %13, %struct.nand_sdr_timings** %9, align 8
  %14 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %15 = call i64 @IS_ERR(%struct.nand_sdr_timings* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %19 = call i32 @PTR_ERR(%struct.nand_sdr_timings* %18)
  store i32 %19, i32* %4, align 4
  br label %43

20:                                               ; preds = %3
  %21 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %22 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %23, 25000
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %8, align 8
  %27 = call i32 @GPMI_IS_MX6(%struct.gpmi_nand_data* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @ENOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %43

32:                                               ; preds = %25, %20
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %43

36:                                               ; preds = %32
  %37 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %8, align 8
  %38 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %39 = call i32 @gpmi_nfc_compute_timings(%struct.gpmi_nand_data* %37, %struct.nand_sdr_timings* %38)
  %40 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %8, align 8
  %41 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %36, %35, %29, %17
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.gpmi_nand_data* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_data_interface*) #1

declare dso_local i64 @IS_ERR(%struct.nand_sdr_timings*) #1

declare dso_local i32 @PTR_ERR(%struct.nand_sdr_timings*) #1

declare dso_local i32 @GPMI_IS_MX6(%struct.gpmi_nand_data*) #1

declare dso_local i32 @gpmi_nfc_compute_timings(%struct.gpmi_nand_data*, %struct.nand_sdr_timings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
