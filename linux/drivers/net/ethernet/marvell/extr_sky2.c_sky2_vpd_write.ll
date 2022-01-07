; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_vpd_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_vpd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i32 }

@PCI_VPD_DATA = common dso_local global i64 0, align 8
@PCI_VPD_ADDR = common dso_local global i64 0, align 8
@PCI_VPD_ADDR_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sky2_hw*, i32, i8*, i32, i32)* @sky2_vpd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_vpd_write(%struct.sky2_hw* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sky2_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %49, %5
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %14
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %11, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr i8, i8* %19, i64 %21
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @PCI_VPD_DATA, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @sky2_pci_write32(%struct.sky2_hw* %25, i64 %29, i32 %30)
  %32 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @PCI_VPD_ADDR, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @PCI_VPD_ADDR_F, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @sky2_pci_write32(%struct.sky2_hw* %32, i64 %36, i32 %39)
  %41 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @PCI_VPD_ADDR_F, align 4
  %44 = call i32 @sky2_vpd_wait(%struct.sky2_hw* %41, i32 %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %18
  br label %54

48:                                               ; preds = %18
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = add i64 %51, 4
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %11, align 4
  br label %14

54:                                               ; preds = %47, %14
  %55 = load i32, i32* %12, align 4
  ret i32 %55
}

declare dso_local i32 @sky2_pci_write32(%struct.sky2_hw*, i64, i32) #1

declare dso_local i32 @sky2_vpd_wait(%struct.sky2_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
