; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_read_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_read_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@HAIMR_READ_START = common dso_local global i32 0, align 4
@RTSX_HAIMR = common dso_local global i32 0, align 4
@MAX_RW_REG_CNT = common dso_local global i32 0, align 4
@HAIMR_TRANS_END = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_pci_read_register(%struct.rtsx_pcr* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_pcr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %10 = load i32, i32* @HAIMR_READ_START, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, 16383
  %13 = shl i32 %12, 16
  %14 = load i32, i32* %8, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %8, align 4
  %16 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %17 = load i32, i32* @RTSX_HAIMR, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @rtsx_pci_writel(%struct.rtsx_pcr* %16, i32 %17, i32 %18)
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %34, %3
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @MAX_RW_REG_CNT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %26 = load i32, i32* @RTSX_HAIMR, align 4
  %27 = call i32 @rtsx_pci_readl(%struct.rtsx_pcr* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @HAIMR_TRANS_END, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %37

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %20

37:                                               ; preds = %32, %20
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @MAX_RW_REG_CNT, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @ETIMEDOUT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %53

44:                                               ; preds = %37
  %45 = load i64*, i64** %7, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 255
  %50 = sext i32 %49 to i64
  %51 = load i64*, i64** %7, align 8
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %47, %44
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @rtsx_pci_writel(%struct.rtsx_pcr*, i32, i32) #1

declare dso_local i32 @rtsx_pci_readl(%struct.rtsx_pcr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
