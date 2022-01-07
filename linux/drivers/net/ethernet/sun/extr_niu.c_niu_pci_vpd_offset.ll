; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_pci_vpd_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_pci_vpd_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@ESPC_EEPROM_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.niu*)* @niu_pci_vpd_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @niu_pci_vpd_offset(%struct.niu* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load i64, i64* @ESPC_EEPROM_SIZE, align 8
  store i64 %8, i64* %5, align 8
  br label %9

9:                                                ; preds = %69, %1
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %99

13:                                               ; preds = %9
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.niu*, %struct.niu** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = add nsw i64 %16, 0
  %18 = call i32 @niu_pci_eeprom_read16(%struct.niu* %15, i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 21930
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i64 0, i64* %2, align 8
  br label %100

22:                                               ; preds = %13
  %23 = load %struct.niu*, %struct.niu** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = add nsw i64 %24, 23
  %26 = call i32 @niu_pci_eeprom_read16(%struct.niu* %23, i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i64 0, i64* %2, align 8
  br label %100

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %4, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* %4, align 8
  %35 = load %struct.niu*, %struct.niu** %3, align 8
  %36 = load i64, i64* %4, align 8
  %37 = add nsw i64 %36, 0
  %38 = call i32 @niu_pci_eeprom_read16(%struct.niu* %35, i64 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 20547
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i64 0, i64* %2, align 8
  br label %100

42:                                               ; preds = %30
  %43 = load %struct.niu*, %struct.niu** %3, align 8
  %44 = load i64, i64* %4, align 8
  %45 = add nsw i64 %44, 2
  %46 = call i32 @niu_pci_eeprom_read16(%struct.niu* %43, i64 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 18770
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i64 0, i64* %2, align 8
  br label %100

50:                                               ; preds = %42
  %51 = load %struct.niu*, %struct.niu** %3, align 8
  %52 = load i64, i64* %4, align 8
  %53 = add nsw i64 %52, 20
  %54 = call i32 @niu_pci_eeprom_read(%struct.niu* %51, i64 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i64 0, i64* %2, align 8
  br label %100

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load %struct.niu*, %struct.niu** %3, align 8
  %63 = load i64, i64* %6, align 8
  %64 = add nsw i64 %63, 2
  %65 = call i32 @niu_pci_eeprom_read(%struct.niu* %62, i64 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i64 0, i64* %2, align 8
  br label %100

69:                                               ; preds = %61
  %70 = load i64, i64* %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 %71, 512
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %70, %73
  store i64 %74, i64* %4, align 8
  br label %9

75:                                               ; preds = %58
  %76 = load %struct.niu*, %struct.niu** %3, align 8
  %77 = load i64, i64* %4, align 8
  %78 = add nsw i64 %77, 8
  %79 = call i32 @niu_pci_eeprom_read16_swp(%struct.niu* %76, i64 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %2, align 8
  br label %100

85:                                               ; preds = %75
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %6, align 8
  %89 = add nsw i64 %88, %87
  store i64 %89, i64* %6, align 8
  %90 = load %struct.niu*, %struct.niu** %3, align 8
  %91 = load i64, i64* %6, align 8
  %92 = add nsw i64 %91, 0
  %93 = call i32 @niu_pci_eeprom_read(%struct.niu* %90, i64 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 130
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  store i64 0, i64* %2, align 8
  br label %100

97:                                               ; preds = %85
  %98 = load i64, i64* %6, align 8
  store i64 %98, i64* %2, align 8
  br label %100

99:                                               ; preds = %9
  store i64 0, i64* %2, align 8
  br label %100

100:                                              ; preds = %99, %97, %96, %82, %68, %57, %49, %41, %29, %21
  %101 = load i64, i64* %2, align 8
  ret i64 %101
}

declare dso_local i32 @niu_pci_eeprom_read16(%struct.niu*, i64) #1

declare dso_local i32 @niu_pci_eeprom_read(%struct.niu*, i64) #1

declare dso_local i32 @niu_pci_eeprom_read16_swp(%struct.niu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
