; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtl8411.c_rtl8411_do_switch_output_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtl8411.c_rtl8411_do_switch_output_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i64, i64 }

@BPP_REG_TUNED18 = common dso_local global i32 0, align 4
@BPP_PAD_MASK = common dso_local global i32 0, align 4
@OUTPUT_3V3 = common dso_local global i64 0, align 8
@SD30_DRIVE_SEL = common dso_local global i32 0, align 4
@BPP_ASIC_3V3 = common dso_local global i32 0, align 4
@BPP_PAD_3V3 = common dso_local global i32 0, align 4
@OUTPUT_1V8 = common dso_local global i64 0, align 8
@BPP_PAD_1V8 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LDO_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*, i64, i32, i32)* @rtl8411_do_switch_output_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8411_do_switch_output_voltage(%struct.rtsx_pcr* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtsx_pcr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @BPP_REG_TUNED18, align 4
  %14 = load i32, i32* %8, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* @BPP_PAD_MASK, align 4
  %17 = or i32 %15, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @OUTPUT_3V3, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %4
  %23 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %24 = load i32, i32* @SD30_DRIVE_SEL, align 4
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %26 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %23, i32 %24, i64 7, i64 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %72

33:                                               ; preds = %22
  %34 = load i32, i32* @BPP_ASIC_3V3, align 4
  %35 = load i32, i32* %8, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* @BPP_PAD_3V3, align 4
  %38 = or i32 %36, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %11, align 8
  br label %66

40:                                               ; preds = %4
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @OUTPUT_1V8, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %46 = load i32, i32* @SD30_DRIVE_SEL, align 4
  %47 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %48 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %45, i32 %46, i64 7, i64 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %72

55:                                               ; preds = %44
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* @BPP_PAD_1V8, align 4
  %60 = or i32 %58, %59
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %11, align 8
  br label %65

62:                                               ; preds = %40
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %72

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %33
  %67 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %68 = load i32, i32* @LDO_CTL, align 4
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %67, i32 %68, i64 %69, i64 %70)
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %66, %62, %53, %31
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
