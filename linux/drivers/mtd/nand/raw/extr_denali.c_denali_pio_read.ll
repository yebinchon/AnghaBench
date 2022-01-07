; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_pio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_pio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denali_controller = type { i32, i32 (%struct.denali_controller*, i32)* }

@DENALI_MAP01 = common dso_local global i32 0, align 4
@DENALI_CAP_HW_ECC_FIXUP = common dso_local global i32 0, align 4
@INTR__ECC_UNCOR_ERR = common dso_local global i32 0, align 4
@INTR__ECC_ERR = common dso_local global i32 0, align 4
@INTR__PAGE_XFER_INC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@INTR__ERASED_PAGE = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.denali_controller*, i32*, i64, i32)* @denali_pio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @denali_pio_read(%struct.denali_controller* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.denali_controller*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.denali_controller* %0, %struct.denali_controller** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @DENALI_MAP01, align 4
  %15 = load %struct.denali_controller*, %struct.denali_controller** %6, align 8
  %16 = call i32 @DENALI_BANK(%struct.denali_controller* %15)
  %17 = or i32 %14, %16
  %18 = load i32, i32* %9, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.denali_controller*, %struct.denali_controller** %6, align 8
  %21 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DENALI_CAP_HW_ECC_FIXUP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @INTR__ECC_UNCOR_ERR, align 4
  store i32 %27, i32* %12, align 4
  br label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @INTR__ECC_ERR, align 4
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load %struct.denali_controller*, %struct.denali_controller** %6, align 8
  %32 = call i32 @denali_reset_irq(%struct.denali_controller* %31)
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %50, %30
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %8, align 8
  %37 = udiv i64 %36, 4
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.denali_controller*, %struct.denali_controller** %6, align 8
  %41 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %40, i32 0, i32 1
  %42 = load i32 (%struct.denali_controller*, i32)*, i32 (%struct.denali_controller*, i32)** %41, align 8
  %43 = load %struct.denali_controller*, %struct.denali_controller** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 %42(%struct.denali_controller* %43, i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %33

53:                                               ; preds = %33
  %54 = load %struct.denali_controller*, %struct.denali_controller** %6, align 8
  %55 = load i32, i32* @INTR__PAGE_XFER_INC, align 4
  %56 = call i32 @denali_wait_for_irq(%struct.denali_controller* %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @INTR__PAGE_XFER_INC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %84

64:                                               ; preds = %53
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @INTR__ERASED_PAGE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32*, i32** %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @memset(i32* %70, i32 255, i64 %71)
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @EBADMSG, align 4
  %80 = sub nsw i32 0, %79
  br label %82

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %78
  %83 = phi i32 [ %80, %78 ], [ 0, %81 ]
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %61
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @DENALI_BANK(%struct.denali_controller*) #1

declare dso_local i32 @denali_reset_irq(%struct.denali_controller*) #1

declare dso_local i32 @denali_wait_for_irq(%struct.denali_controller*, i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
