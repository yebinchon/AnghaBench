; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_hw.c_atl1e_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_hw.c_atl1e_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_hw = type { i32 }

@REG_VPD_DATA = common dso_local global i32 0, align 4
@VPD_CAP_VPD_ADDR_MASK = common dso_local global i32 0, align 4
@VPD_CAP_VPD_ADDR_SHIFT = common dso_local global i32 0, align 4
@REG_VPD_CAP = common dso_local global i32 0, align 4
@VPD_CAP_VPD_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atl1e_read_eeprom(%struct.atl1e_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atl1e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atl1e_hw* %0, %struct.atl1e_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, 3
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %55

14:                                               ; preds = %3
  %15 = load %struct.atl1e_hw*, %struct.atl1e_hw** %5, align 8
  %16 = load i32, i32* @REG_VPD_DATA, align 4
  %17 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %15, i32 %16, i32 0)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @VPD_CAP_VPD_ADDR_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @VPD_CAP_VPD_ADDR_SHIFT, align 4
  %22 = shl i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.atl1e_hw*, %struct.atl1e_hw** %5, align 8
  %24 = load i32, i32* @REG_VPD_CAP, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %23, i32 %24, i32 %25)
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %41, %14
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 10
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = call i32 @msleep(i32 2)
  %32 = load %struct.atl1e_hw*, %struct.atl1e_hw** %5, align 8
  %33 = load i32, i32* @REG_VPD_CAP, align 4
  %34 = call i32 @AT_READ_REG(%struct.atl1e_hw* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @VPD_CAP_VPD_FLAG, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %44

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %27

44:                                               ; preds = %39, %27
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @VPD_CAP_VPD_FLAG, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.atl1e_hw*, %struct.atl1e_hw** %5, align 8
  %51 = load i32, i32* @REG_VPD_DATA, align 4
  %52 = call i32 @AT_READ_REG(%struct.atl1e_hw* %50, i32 %51)
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  store i32 1, i32* %4, align 4
  br label %55

54:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %49, %13
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @AT_WRITE_REG(%struct.atl1e_hw*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @AT_READ_REG(%struct.atl1e_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
