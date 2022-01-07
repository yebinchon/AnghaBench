; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nfc_exec_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nfc_exec_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_hsmc_nand_controller = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32*, i32, i64, i64, i32, i32, i32* }
%struct.TYPE_3__ = type { i32, i32 }

@ATMEL_HSMC_NFC_SR_CMDDONE = common dso_local global i32 0, align 4
@ATMEL_NFC_MAX_ADDR_CYCLES = common dso_local global i64 0, align 8
@ATMEL_HSMC_NFC_ADDR = common dso_local global i32 0, align 4
@ATMEL_NFC_VCMD2 = common dso_local global i32 0, align 4
@ATMEL_NFC_NO_DATA = common dso_local global i64 0, align 8
@ATMEL_NFC_DATAEN = common dso_local global i32 0, align 4
@ATMEL_HSMC_NFC_SR_XFRDONE = common dso_local global i32 0, align 4
@ATMEL_NFC_WRITE_DATA = common dso_local global i64 0, align 8
@ATMEL_NFC_NFCWR = common dso_local global i32 0, align 4
@ATMEL_HSMC_NFC_SR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to send NAND command (err = %d)!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_hsmc_nand_controller*, i32)* @atmel_nfc_exec_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_nfc_exec_op(%struct.atmel_hsmc_nand_controller* %0, i32 %1) #0 {
  %3 = alloca %struct.atmel_hsmc_nand_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.atmel_hsmc_nand_controller* %0, %struct.atmel_hsmc_nand_controller** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %3, align 8
  %12 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load i32, i32* @ATMEL_HSMC_NFC_SR_CMDDONE, align 4
  %16 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %3, align 8
  %17 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 4
  store i32 %15, i32* %18, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %39, %2
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %3, align 8
  %22 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %19
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %3, align 8
  %29 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ATMEL_NFC_CMD(i32 %27, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %19

42:                                               ; preds = %19
  %43 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %3, align 8
  %44 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ATMEL_NFC_MAX_ADDR_CYCLES, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %3, align 8
  %51 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ATMEL_HSMC_NFC_ADDR, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %5, align 8
  %57 = load i32, i32* %55, align 4
  %58 = call i32 @regmap_write(i32 %53, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %49, %42
  %60 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %3, align 8
  %61 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ATMEL_NFC_CSID(i32 %63)
  %65 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %3, align 8
  %66 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @ATMEL_NFC_ACYCLE(i64 %68)
  %70 = or i32 %64, %69
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  %73 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %3, align 8
  %74 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %82

78:                                               ; preds = %59
  %79 = load i32, i32* @ATMEL_NFC_VCMD2, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %78, %59
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 8
  %90 = or i32 %85, %89
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 16
  %95 = or i32 %90, %94
  %96 = load i32*, i32** %5, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 24
  %100 = or i32 %95, %99
  store i32 %100, i32* %7, align 4
  %101 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %3, align 8
  %102 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @ATMEL_NFC_NO_DATA, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %128

107:                                              ; preds = %82
  %108 = load i32, i32* @ATMEL_NFC_DATAEN, align 4
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* @ATMEL_HSMC_NFC_SR_XFRDONE, align 4
  %112 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %3, align 8
  %113 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %111
  store i32 %116, i32* %114, align 8
  %117 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %3, align 8
  %118 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ATMEL_NFC_WRITE_DATA, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %107
  %124 = load i32, i32* @ATMEL_NFC_NFCWR, align 4
  %125 = load i32, i32* %6, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %123, %107
  br label %128

128:                                              ; preds = %127, %82
  %129 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %3, align 8
  %130 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @ATMEL_HSMC_NFC_SR, align 4
  %134 = call i32 @regmap_read(i32 %132, i32 %133, i32* %8)
  %135 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %3, align 8
  %136 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @regmap_write(i32 %137, i32 %138, i32 %139)
  %141 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %3, align 8
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @atmel_nfc_wait(%struct.atmel_hsmc_nand_controller* %141, i32 %142, i32 0)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %128
  %147 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %3, align 8
  %148 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @dev_err(i32 %150, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %146, %128
  %154 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %3, align 8
  %155 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %154, i32 0, i32 0
  %156 = call i32 @memset(%struct.TYPE_4__* %155, i32 0, i32 48)
  %157 = load i32, i32* %10, align 4
  ret i32 %157
}

declare dso_local i32 @ATMEL_NFC_CMD(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @ATMEL_NFC_CSID(i32) #1

declare dso_local i32 @ATMEL_NFC_ACYCLE(i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @atmel_nfc_wait(%struct.atmel_hsmc_nand_controller*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
