; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_write_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_write_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@HAIMR_WRITE_START = common dso_local global i32 0, align 4
@RTSX_HAIMR = common dso_local global i32 0, align 4
@MAX_RW_REG_CNT = common dso_local global i32 0, align 4
@HAIMR_TRANS_END = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtsx_pcr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @HAIMR_WRITE_START, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 16383
  %15 = shl i32 %14, 16
  %16 = load i32, i32* %11, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %11, align 4
  %18 = load i64, i64* %8, align 8
  %19 = trunc i64 %18 to i32
  %20 = shl i32 %19, 8
  %21 = load i32, i32* %11, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %11, align 4
  %23 = load i64, i64* %9, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* %11, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %11, align 4
  %27 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %28 = load i32, i32* @RTSX_HAIMR, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @rtsx_pci_writel(%struct.rtsx_pcr* %27, i32 %28, i32 %29)
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %53, %4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @MAX_RW_REG_CNT, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %37 = load i32, i32* @RTSX_HAIMR, align 4
  %38 = call i32 @rtsx_pci_readl(%struct.rtsx_pcr* %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @HAIMR_TRANS_END, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load i64, i64* %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ne i64 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %59

51:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %59

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %31

56:                                               ; preds = %31
  %57 = load i32, i32* @ETIMEDOUT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %51, %48
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @rtsx_pci_writel(%struct.rtsx_pcr*, i32, i32) #1

declare dso_local i32 @rtsx_pci_readl(%struct.rtsx_pcr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
