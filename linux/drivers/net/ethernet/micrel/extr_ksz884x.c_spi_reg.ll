; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_spi_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_spi_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i32 }

@EEPROM_DATA_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*, i32, i32)* @spi_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_reg(%struct.ksz_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ksz_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %9 = load i32, i32* @EEPROM_DATA_OUT, align 4
  %10 = call i32 @raise_gpio(%struct.ksz_hw* %8, i32 %9)
  %11 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %12 = call i32 @eeprom_clk(%struct.ksz_hw* %11)
  store i32 1, i32* %7, align 4
  br label %13

13:                                               ; preds = %34, %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %24 = load i32, i32* @EEPROM_DATA_OUT, align 4
  %25 = call i32 @raise_gpio(%struct.ksz_hw* %23, i32 %24)
  br label %30

26:                                               ; preds = %16
  %27 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %28 = load i32, i32* @EEPROM_DATA_OUT, align 4
  %29 = call i32 @drop_gpio(%struct.ksz_hw* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i32 [ %25, %22 ], [ %29, %26 ]
  %32 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %33 = call i32 @eeprom_clk(%struct.ksz_hw* %32)
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %7, align 4
  br label %13

37:                                               ; preds = %13
  store i32 5, i32* %7, align 4
  br label %38

38:                                               ; preds = %59, %37
  %39 = load i32, i32* %7, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 1, %43
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %49 = load i32, i32* @EEPROM_DATA_OUT, align 4
  %50 = call i32 @raise_gpio(%struct.ksz_hw* %48, i32 %49)
  br label %55

51:                                               ; preds = %41
  %52 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %53 = load i32, i32* @EEPROM_DATA_OUT, align 4
  %54 = call i32 @drop_gpio(%struct.ksz_hw* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i32 [ %50, %47 ], [ %54, %51 ]
  %57 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %58 = call i32 @eeprom_clk(%struct.ksz_hw* %57)
  br label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %7, align 4
  br label %38

62:                                               ; preds = %38
  ret void
}

declare dso_local i32 @raise_gpio(%struct.ksz_hw*, i32) #1

declare dso_local i32 @eeprom_clk(%struct.ksz_hw*) #1

declare dso_local i32 @drop_gpio(%struct.ksz_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
