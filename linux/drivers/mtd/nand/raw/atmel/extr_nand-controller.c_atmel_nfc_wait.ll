; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nfc_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nfc_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_hsmc_nand_controller = type { %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@DEFAULT_TIMEOUT_MS = common dso_local global i32 0, align 4
@ATMEL_HSMC_NFC_SR = common dso_local global i32 0, align 4
@ATMEL_HSMC_NFC_IER = common dso_local global i32 0, align 4
@ATMEL_HSMC_NFC_SR_ERRORS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ATMEL_HSMC_NFC_IDR = common dso_local global i32 0, align 4
@ATMEL_HSMC_NFC_SR_DTOE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Waiting NAND R/B Timeout\0A\00", align 1
@ATMEL_HSMC_NFC_SR_UNDEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Access to an undefined area\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ATMEL_HSMC_NFC_SR_AWB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Access while busy\0A\00", align 1
@ATMEL_HSMC_NFC_SR_NFCASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Wrong access size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_hsmc_nand_controller*, i32, i32)* @atmel_nfc_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_nfc_wait(%struct.atmel_hsmc_nand_controller* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.atmel_hsmc_nand_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.atmel_hsmc_nand_controller* %0, %struct.atmel_hsmc_nand_controller** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @DEFAULT_TIMEOUT_MS, align 4
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %11, %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %4, align 8
  %18 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ATMEL_HSMC_NFC_SR, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %4, align 8
  %24 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %23, i32 0, i32 1
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @atmel_nfc_op_done(%struct.TYPE_4__* %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = mul i32 %27, 1000
  %29 = call i32 @regmap_read_poll_timeout(i32 %20, i32 %21, i32 %22, i32 %26, i32 0, i32 %28)
  store i32 %29, i32* %7, align 4
  br label %64

30:                                               ; preds = %13
  %31 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %4, align 8
  %32 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %31, i32 0, i32 2
  %33 = call i32 @init_completion(i32* %32)
  %34 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %4, align 8
  %35 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ATMEL_HSMC_NFC_IER, align 4
  %39 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %4, align 8
  %40 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ATMEL_HSMC_NFC_SR_ERRORS, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @regmap_write(i32 %37, i32 %38, i32 %44)
  %46 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %4, align 8
  %47 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %46, i32 0, i32 2
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @msecs_to_jiffies(i32 %48)
  %50 = call i32 @wait_for_completion_timeout(i32* %47, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %30
  %54 = load i32, i32* @ETIMEDOUT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %57

56:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %4, align 8
  %59 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ATMEL_HSMC_NFC_IDR, align 4
  %63 = call i32 @regmap_write(i32 %61, i32 %62, i32 -1)
  br label %64

64:                                               ; preds = %57, %16
  %65 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %4, align 8
  %66 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ATMEL_HSMC_NFC_SR_DTOE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %64
  %73 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %4, align 8
  %74 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @ETIMEDOUT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %72, %64
  %81 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %4, align 8
  %82 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ATMEL_HSMC_NFC_SR_UNDEF, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %80
  %89 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %4, align 8
  %90 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %88, %80
  %97 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %4, align 8
  %98 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ATMEL_HSMC_NFC_SR_AWB, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %96
  %105 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %4, align 8
  %106 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %104, %96
  %113 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %4, align 8
  %114 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ATMEL_HSMC_NFC_SR_NFCASE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %112
  %121 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %4, align 8
  %122 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dev_err(i32 %124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i32, i32* @EIO, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %120, %112
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atmel_nfc_op_done(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
