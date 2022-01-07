; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_pio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_pio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denali_controller = type { i32 (%struct.denali_controller*, i32, i32)* }

@DENALI_MAP01 = common dso_local global i32 0, align 4
@INTR__PROGRAM_COMP = common dso_local global i32 0, align 4
@INTR__PROGRAM_FAIL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.denali_controller*, i32*, i64, i32)* @denali_pio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @denali_pio_write(%struct.denali_controller* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.denali_controller*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.denali_controller* %0, %struct.denali_controller** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @DENALI_MAP01, align 4
  %14 = load %struct.denali_controller*, %struct.denali_controller** %6, align 8
  %15 = call i32 @DENALI_BANK(%struct.denali_controller* %14)
  %16 = or i32 %13, %15
  %17 = load i32, i32* %9, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.denali_controller*, %struct.denali_controller** %6, align 8
  %20 = call i32 @denali_reset_irq(%struct.denali_controller* %19)
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %39, %4
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %8, align 8
  %25 = udiv i64 %24, 4
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load %struct.denali_controller*, %struct.denali_controller** %6, align 8
  %29 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %28, i32 0, i32 0
  %30 = load i32 (%struct.denali_controller*, i32, i32)*, i32 (%struct.denali_controller*, i32, i32)** %29, align 8
  %31 = load %struct.denali_controller*, %struct.denali_controller** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 %30(%struct.denali_controller* %31, i32 %32, i32 %37)
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  br label %21

42:                                               ; preds = %21
  %43 = load %struct.denali_controller*, %struct.denali_controller** %6, align 8
  %44 = load i32, i32* @INTR__PROGRAM_COMP, align 4
  %45 = load i32, i32* @INTR__PROGRAM_FAIL, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @denali_wait_for_irq(%struct.denali_controller* %43, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @INTR__PROGRAM_COMP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %56

55:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @DENALI_BANK(%struct.denali_controller*) #1

declare dso_local i32 @denali_reset_irq(%struct.denali_controller*) #1

declare dso_local i32 @denali_wait_for_irq(%struct.denali_controller*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
