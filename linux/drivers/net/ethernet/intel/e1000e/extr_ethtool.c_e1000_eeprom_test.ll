; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_eeprom_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_eeprom_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32 }

@NVM_CHECKSUM_REG = common dso_local global i64 0, align 8
@NVM_SUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, i32*)* @e1000_eeprom_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_eeprom_test(%struct.e1000_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %7, align 8
  %9 = load i32*, i32** %5, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %29, %2
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* @NVM_CHECKSUM_REG, align 8
  %13 = add nsw i64 %12, 1
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %16, i32 0, i32 0
  %18 = load i64, i64* %8, align 8
  %19 = call i64 @e1000_read_nvm(i32* %17, i64 %18, i32 1, i64* %6)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32*, i32** %5, align 8
  store i32 1, i32* %22, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  br label %45

25:                                               ; preds = %15
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %8, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %8, align 8
  br label %10

32:                                               ; preds = %10
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @NVM_SUM, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load i32*, i32** %5, align 8
  store i32 2, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %36, %32
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %21
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @e1000_read_nvm(i32*, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
