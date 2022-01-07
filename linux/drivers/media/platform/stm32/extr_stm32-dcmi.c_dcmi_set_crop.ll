; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_set_crop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_set_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dcmi = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@DCMI_CWSIZE = common dso_local global i32 0, align 4
@DCMI_CWSTRT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Cropping to %ux%u@%u:%u\0A\00", align 1
@DCMI_CR = common dso_local global i32 0, align 4
@CR_CROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_dcmi*)* @dcmi_set_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcmi_set_crop(%struct.stm32_dcmi* %0) #0 {
  %2 = alloca %struct.stm32_dcmi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stm32_dcmi* %0, %struct.stm32_dcmi** %2, align 8
  %5 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %2, align 8
  %6 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sub nsw i32 %8, 1
  %10 = shl i32 %9, 16
  %11 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %2, align 8
  %12 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 1
  %16 = sub nsw i32 %15, 1
  %17 = or i32 %10, %16
  store i32 %17, i32* %3, align 4
  %18 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %2, align 8
  %19 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DCMI_CWSIZE, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @reg_write(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %2, align 8
  %25 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 16
  %29 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %2, align 8
  %30 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 1
  %34 = or i32 %28, %33
  store i32 %34, i32* %4, align 4
  %35 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %2, align 8
  %36 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DCMI_CWSTRT, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @reg_write(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %2, align 8
  %42 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %2, align 8
  %45 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %2, align 8
  %49 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %2, align 8
  %53 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %2, align 8
  %57 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %51, i32 %55, i32 %59)
  %61 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %2, align 8
  %62 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DCMI_CR, align 4
  %65 = load i32, i32* @CR_CROP, align 4
  %66 = call i32 @reg_set(i32 %63, i32 %64, i32 %65)
  ret void
}

declare dso_local i32 @reg_write(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @reg_set(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
