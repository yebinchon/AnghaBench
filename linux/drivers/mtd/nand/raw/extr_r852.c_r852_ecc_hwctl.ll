; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_ecc_hwctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_ecc_hwctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.r852_device = type { i32, i64 }

@R852_CTL_ECC_ENABLE = common dso_local global i32 0, align 4
@R852_CTL = common dso_local global i32 0, align 4
@R852_CTL_ECC_ACCESS = common dso_local global i32 0, align 4
@R852_DATALINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @r852_ecc_hwctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r852_ecc_hwctl(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r852_device*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %7 = call i32 @nand_to_mtd(%struct.nand_chip* %6)
  %8 = call %struct.r852_device* @r852_get_dev(i32 %7)
  store %struct.r852_device* %8, %struct.r852_device** %5, align 8
  %9 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %10 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %52

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %52 [
    i32 130, label %16
    i32 128, label %16
    i32 129, label %39
  ]

16:                                               ; preds = %14, %14
  %17 = load i32, i32* @R852_CTL_ECC_ENABLE, align 4
  %18 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %19 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %23 = load i32, i32* @R852_CTL, align 4
  %24 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %25 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @R852_CTL_ECC_ACCESS, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @r852_write_reg(%struct.r852_device* %22, i32 %23, i32 %28)
  %30 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %31 = load i32, i32* @R852_DATALINE, align 4
  %32 = call i32 @r852_read_reg_dword(%struct.r852_device* %30, i32 %31)
  %33 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %34 = load i32, i32* @R852_CTL, align 4
  %35 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %36 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @r852_write_reg(%struct.r852_device* %33, i32 %34, i32 %37)
  br label %52

39:                                               ; preds = %14
  %40 = load i32, i32* @R852_CTL_ECC_ENABLE, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %43 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %47 = load i32, i32* @R852_CTL, align 4
  %48 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %49 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @r852_write_reg(%struct.r852_device* %46, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %13, %16, %39, %14
  ret void
}

declare dso_local %struct.r852_device* @r852_get_dev(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @r852_write_reg(%struct.r852_device*, i32, i32) #1

declare dso_local i32 @r852_read_reg_dword(%struct.r852_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
