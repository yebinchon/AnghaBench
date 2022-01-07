; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_pci_vpd_fetch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_pci_vpd_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@ESPC_EEPROM_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*, i64)* @niu_pci_vpd_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_pci_vpd_fetch(%struct.niu* %0, i64 %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.niu* %0, %struct.niu** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.niu*, %struct.niu** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = add nsw i64 %10, 1
  %12 = call i32 @niu_pci_eeprom_read16_swp(%struct.niu* %9, i64 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %70

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 3
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %69, %16
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i64, i64* @ESPC_EEPROM_SIZE, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %70

26:                                               ; preds = %20
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = add nsw i64 %27, %28
  store i64 %29, i64* %7, align 8
  %30 = load %struct.niu*, %struct.niu** %3, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @niu_pci_eeprom_read(%struct.niu* %30, i64 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 144
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %70

36:                                               ; preds = %26
  %37 = load %struct.niu*, %struct.niu** %3, align 8
  %38 = load i64, i64* %7, align 8
  %39 = add nsw i64 %38, 1
  %40 = call i32 @niu_pci_eeprom_read16_swp(%struct.niu* %37, i64 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %70

44:                                               ; preds = %36
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = add nsw i64 %45, %46
  %48 = add nsw i64 %47, 3
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  store i64 %54, i64* %8, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %5, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %5, align 8
  %59 = load %struct.niu*, %struct.niu** %3, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @niu_pci_vpd_scan_props(%struct.niu* %59, i64 %60, i64 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %44
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %44
  br label %70

69:                                               ; preds = %65
  br label %20

70:                                               ; preds = %15, %35, %43, %68, %20
  ret void
}

declare dso_local i32 @niu_pci_eeprom_read16_swp(%struct.niu*, i64) #1

declare dso_local i32 @niu_pci_eeprom_read(%struct.niu*, i64) #1

declare dso_local i32 @niu_pci_vpd_scan_props(%struct.niu*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
