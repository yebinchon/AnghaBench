; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5209.c_rts5209_switch_output_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5209.c_rts5209_switch_output_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, i32 }

@OUTPUT_3V3 = common dso_local global i64 0, align 8
@SD30_DRIVE_SEL = common dso_local global i32 0, align 4
@OUTPUT_1V8 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*, i64)* @rts5209_switch_output_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts5209_switch_output_voltage(%struct.rtsx_pcr* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_pcr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @OUTPUT_3V3, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %12 = load i32, i32* @SD30_DRIVE_SEL, align 4
  %13 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %14 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %11, i32 %12, i32 7, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %57

21:                                               ; preds = %10
  %22 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %23 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %22, i32 8, i32 20452)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %57

28:                                               ; preds = %21
  br label %56

29:                                               ; preds = %2
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @OUTPUT_1V8, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %35 = load i32, i32* @SD30_DRIVE_SEL, align 4
  %36 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %37 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %34, i32 %35, i32 7, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %57

44:                                               ; preds = %33
  %45 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %46 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %45, i32 8, i32 19556)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %57

51:                                               ; preds = %44
  br label %55

52:                                               ; preds = %29
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55, %28
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %52, %49, %42, %26, %19
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
