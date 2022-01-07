; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_get_eeprom_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_get_eeprom_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@EEPROM_CHIP_SIZE = common dso_local global i32 0, align 4
@TG3_EEPROM_MAGIC = common dso_local global i32 0, align 4
@TG3_EEPROM_MAGIC_FW_MSK = common dso_local global i32 0, align 4
@TG3_EEPROM_MAGIC_FW = common dso_local global i32 0, align 4
@TG3_EEPROM_MAGIC_HW_MSK = common dso_local global i32 0, align 4
@TG3_EEPROM_MAGIC_HW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_get_eeprom_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_get_eeprom_size(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %6 = load i32, i32* @EEPROM_CHIP_SIZE, align 4
  %7 = load %struct.tg3*, %struct.tg3** %2, align 8
  %8 = getelementptr inbounds %struct.tg3, %struct.tg3* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.tg3*, %struct.tg3** %2, align 8
  %10 = call i64 @tg3_nvram_read(%struct.tg3* %9, i32 0, i32* %5)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %55

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @TG3_EEPROM_MAGIC, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @TG3_EEPROM_MAGIC_FW_MSK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @TG3_EEPROM_MAGIC_FW, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @TG3_EEPROM_MAGIC_HW_MSK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @TG3_EEPROM_MAGIC_HW, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %55

30:                                               ; preds = %23, %17, %13
  store i32 16, i32* %3, align 4
  br label %31

31:                                               ; preds = %48, %30
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.tg3*, %struct.tg3** %2, align 8
  %34 = getelementptr inbounds %struct.tg3, %struct.tg3* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load %struct.tg3*, %struct.tg3** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @tg3_nvram_read(%struct.tg3* %38, i32 %39, i32* %4)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %55

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %3, align 4
  %50 = shl i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %31

51:                                               ; preds = %47, %31
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.tg3*, %struct.tg3** %2, align 8
  %54 = getelementptr inbounds %struct.tg3, %struct.tg3* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %42, %29, %12
  ret void
}

declare dso_local i64 @tg3_nvram_read(%struct.tg3*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
