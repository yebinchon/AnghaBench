; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_release_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_release_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@EECD = common dso_local global i32 0, align 4
@e1000_eeprom_spi = common dso_local global i64 0, align 8
@E1000_EECD_CS = common dso_local global i32 0, align 4
@E1000_EECD_SK = common dso_local global i32 0, align 4
@e1000_eeprom_microwire = common dso_local global i64 0, align 8
@E1000_EECD_DI = common dso_local global i32 0, align 4
@e1000_82544 = common dso_local global i64 0, align 8
@E1000_EECD_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_release_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_release_eeprom(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load i32, i32* @EECD, align 4
  %5 = call i32 @er32(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @e1000_eeprom_spi, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load i32, i32* @E1000_EECD_CS, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @E1000_EECD_SK, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @EECD, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @ew32(i32 %20, i32 %21)
  %23 = call i32 (...) @E1000_WRITE_FLUSH()
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @udelay(i32 %27)
  br label %72

29:                                               ; preds = %1
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @e1000_eeprom_microwire, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %71

36:                                               ; preds = %29
  %37 = load i32, i32* @E1000_EECD_CS, align 4
  %38 = load i32, i32* @E1000_EECD_DI, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @EECD, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @ew32(i32 %43, i32 %44)
  %46 = load i32, i32* @E1000_EECD_SK, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* @EECD, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @ew32(i32 %49, i32 %50)
  %52 = call i32 (...) @E1000_WRITE_FLUSH()
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %54 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @udelay(i32 %56)
  %58 = load i32, i32* @E1000_EECD_SK, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %3, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* @EECD, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @ew32(i32 %62, i32 %63)
  %65 = call i32 (...) @E1000_WRITE_FLUSH()
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %67 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @udelay(i32 %69)
  br label %71

71:                                               ; preds = %36, %29
  br label %72

72:                                               ; preds = %71, %12
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %74 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @e1000_82544, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load i32, i32* @E1000_EECD_REQ, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %3, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* @EECD, align 4
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @ew32(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %72
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
