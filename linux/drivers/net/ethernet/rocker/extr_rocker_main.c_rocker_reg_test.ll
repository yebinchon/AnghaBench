; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_reg_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_reg_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@TEST_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"unexpected 32bit register value %08llx, expected %08llx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TEST_REG64 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"unexpected 64bit register value %16llx, expected %16llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker*)* @rocker_reg_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_reg_test(%struct.rocker* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rocker*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rocker* %0, %struct.rocker** %3, align 8
  %7 = load %struct.rocker*, %struct.rocker** %3, align 8
  %8 = getelementptr inbounds %struct.rocker, %struct.rocker* %7, i32 0, i32 0
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = call i32 (...) @prandom_u32()
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = ashr i32 %11, 1
  store i32 %12, i32* %6, align 4
  %13 = load %struct.rocker*, %struct.rocker** %3, align 8
  %14 = load i32, i32* @TEST_REG, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @rocker_write32(%struct.rocker* %13, i32 %14, i32 %15)
  %17 = load %struct.rocker*, %struct.rocker** %3, align 8
  %18 = load i32, i32* @TEST_REG, align 4
  %19 = call i32 @rocker_read32(%struct.rocker* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %21, 2
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 %28, 2
  %30 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29)
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %61

33:                                               ; preds = %1
  %34 = call i32 (...) @prandom_u32()
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 %35, 31
  store i32 %36, i32* %6, align 4
  %37 = call i32 (...) @prandom_u32()
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load %struct.rocker*, %struct.rocker** %3, align 8
  %41 = load i32, i32* @TEST_REG64, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @rocker_write64(%struct.rocker* %40, i32 %41, i32 %42)
  %44 = load %struct.rocker*, %struct.rocker** %3, align 8
  %45 = load i32, i32* @TEST_REG64, align 4
  %46 = call i32 @rocker_read64(%struct.rocker* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = mul nsw i32 %48, 2
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %33
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 %55, 2
  %57 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %61

60:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %51, %24
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @rocker_write32(%struct.rocker*, i32, i32) #1

declare dso_local i32 @rocker_read32(%struct.rocker*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @rocker_write64(%struct.rocker*, i32, i32) #1

declare dso_local i32 @rocker_read64(%struct.rocker*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
