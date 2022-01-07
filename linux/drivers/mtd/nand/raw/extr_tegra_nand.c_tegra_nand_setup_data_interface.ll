; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_setup_data_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_setup_data_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_data_interface = type { i32 }
%struct.tegra_nand_controller = type { i32 }
%struct.nand_sdr_timings = type { i32 }

@NAND_DATA_IFACE_CHECK_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, %struct.nand_data_interface*)* @tegra_nand_setup_data_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_nand_setup_data_interface(%struct.nand_chip* %0, i32 %1, %struct.nand_data_interface* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_data_interface*, align 8
  %8 = alloca %struct.tegra_nand_controller*, align 8
  %9 = alloca %struct.nand_sdr_timings*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nand_data_interface* %2, %struct.nand_data_interface** %7, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.tegra_nand_controller* @to_tegra_ctrl(i32 %12)
  store %struct.tegra_nand_controller* %13, %struct.tegra_nand_controller** %8, align 8
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
  br label %31

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @NAND_DATA_IFACE_CHECK_ONLY, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %31

27:                                               ; preds = %22
  %28 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %8, align 8
  %29 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %30 = call i32 @tegra_nand_setup_timing(%struct.tegra_nand_controller* %28, %struct.nand_sdr_timings* %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %26, %19
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.tegra_nand_controller* @to_tegra_ctrl(i32) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_data_interface*) #1

declare dso_local i64 @IS_ERR(%struct.nand_sdr_timings*) #1

declare dso_local i32 @PTR_ERR(%struct.nand_sdr_timings*) #1

declare dso_local i32 @tegra_nand_setup_timing(%struct.tegra_nand_controller*, %struct.nand_sdr_timings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
