; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_vpd_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_vpd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i32 }

@PCI_VPD_ADDR = common dso_local global i64 0, align 8
@PCI_VPD_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sky2_hw*, i32, i8*, i32, i64)* @sky2_vpd_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_vpd_read(%struct.sky2_hw* %0, i32 %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.sky2_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %30, %5
  %14 = load i64, i64* %10, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %13
  %17 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @PCI_VPD_ADDR, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @sky2_pci_write16(%struct.sky2_hw* %17, i64 %21, i32 %22)
  %24 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @sky2_vpd_wait(%struct.sky2_hw* %24, i32 %25, i32 0)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %49

30:                                               ; preds = %16
  %31 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @PCI_VPD_DATA, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @sky2_pci_read32(%struct.sky2_hw* %31, i64 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @min(i32 4, i64 %38)
  %40 = call i32 @memcpy(i8* %37, i32* %12, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, 4
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr i8, i8* %45, i64 4
  store i8* %46, i8** %8, align 8
  %47 = load i64, i64* %10, align 8
  %48 = sub i64 %47, 4
  store i64 %48, i64* %10, align 8
  br label %13

49:                                               ; preds = %29, %13
  %50 = load i32, i32* %11, align 4
  ret i32 %50
}

declare dso_local i32 @sky2_pci_write16(%struct.sky2_hw*, i64, i32) #1

declare dso_local i32 @sky2_vpd_wait(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_pci_read32(%struct.sky2_hw*, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
