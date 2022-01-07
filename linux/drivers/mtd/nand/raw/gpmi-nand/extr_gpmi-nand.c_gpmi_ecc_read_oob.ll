; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_ecc_read_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_ecc_read_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32, i32 }
%struct.gpmi_nand_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32)* @gpmi_ecc_read_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmi_ecc_read_oob(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.gpmi_nand_data*, align 8
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %9)
  store %struct.mtd_info* %10, %struct.mtd_info** %6, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %12 = call %struct.gpmi_nand_data* @nand_get_controller_data(%struct.nand_chip* %11)
  store %struct.gpmi_nand_data* %12, %struct.gpmi_nand_data** %7, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %17 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memset(i32 %15, i32 -1, i32 %18)
  %20 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %23 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %26 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %29 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nand_read_page_op(%struct.nand_chip* %20, i32 %21, i32 %24, i32 %27, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %53

36:                                               ; preds = %2
  %37 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %7, align 8
  %38 = call i64 @GPMI_IS_MX23(%struct.gpmi_nand_data* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %44 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nand_read_page_op(%struct.nand_chip* %41, i32 %42, i32 0, i32 %45, i32 1)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %53

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %36
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %49, %34
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.gpmi_nand_data* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i32, i32) #1

declare dso_local i64 @GPMI_IS_MX23(%struct.gpmi_nand_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
