; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_flash_read32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_flash_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Illegal addr = 0x%x\0A\00", align 1
@QLC_83XX_FLASH_DIRECT_WINDOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_flash_read32(%struct.qlcnic_adapter* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %18 = call i64 @qlcnic_83xx_lock_flash(%struct.qlcnic_adapter* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %80

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  %25 = and i32 %24, 3
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %29 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %35 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %34)
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %80

38:                                               ; preds = %23
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %74, %38
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %77

43:                                               ; preds = %39
  %44 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %45 = load i32, i32* @QLC_83XX_FLASH_DIRECT_WINDOW, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %44, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %51 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %50)
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %80

54:                                               ; preds = %43
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @QLC_83XX_FLASH_DIRECT_DATA(i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @QLCRD32(%struct.qlcnic_adapter* %57, i32 %58, i32* %15)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %5, align 4
  br label %80

66:                                               ; preds = %54
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32*, i32** %8, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  store i32* %71, i32** %8, align 8
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 4
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %14, align 4
  br label %39

77:                                               ; preds = %39
  %78 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %79 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %78)
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %64, %49, %27, %20
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i64 @qlcnic_83xx_lock_flash(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @QLC_83XX_FLASH_DIRECT_DATA(i32) #1

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
