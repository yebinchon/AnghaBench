; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_nvram_read_using_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_nvram_read_using_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@EEPROM_ADDR_ADDR_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GRC_EEPROM_ADDR = common dso_local global i32 0, align 4
@EEPROM_ADDR_DEVID_MASK = common dso_local global i32 0, align 4
@EEPROM_ADDR_READ = common dso_local global i32 0, align 4
@EEPROM_ADDR_DEVID_SHIFT = common dso_local global i32 0, align 4
@EEPROM_ADDR_ADDR_SHIFT = common dso_local global i32 0, align 4
@EEPROM_ADDR_START = common dso_local global i32 0, align 4
@EEPROM_ADDR_COMPLETE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GRC_EEPROM_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32, i32*)* @tg3_nvram_read_using_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_nvram_read_using_eeprom(%struct.tg3* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tg3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @EEPROM_ADDR_ADDR_MASK, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = srem i32 %14, 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %76

20:                                               ; preds = %13
  %21 = load i32, i32* @GRC_EEPROM_ADDR, align 4
  %22 = call i32 @tr32(i32 %21)
  %23 = load i32, i32* @EEPROM_ADDR_ADDR_MASK, align 4
  %24 = load i32, i32* @EEPROM_ADDR_DEVID_MASK, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @EEPROM_ADDR_READ, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %22, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @GRC_EEPROM_ADDR, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @EEPROM_ADDR_DEVID_SHIFT, align 4
  %33 = shl i32 0, %32
  %34 = or i32 %31, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @EEPROM_ADDR_ADDR_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* @EEPROM_ADDR_ADDR_MASK, align 4
  %39 = and i32 %37, %38
  %40 = or i32 %34, %39
  %41 = load i32, i32* @EEPROM_ADDR_READ, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @EEPROM_ADDR_START, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @tw32(i32 %30, i32 %44)
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %59, %20
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 1000
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load i32, i32* @GRC_EEPROM_ADDR, align 4
  %51 = call i32 @tr32(i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @EEPROM_ADDR_COMPLETE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %62

57:                                               ; preds = %49
  %58 = call i32 @msleep(i32 1)
  br label %59

59:                                               ; preds = %57
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %46

62:                                               ; preds = %56, %46
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @EEPROM_ADDR_COMPLETE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %76

70:                                               ; preds = %62
  %71 = load i32, i32* @GRC_EEPROM_DATA, align 4
  %72 = call i32 @tr32(i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @swab32(i32 %73)
  %75 = load i32*, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %70, %67, %17
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @swab32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
