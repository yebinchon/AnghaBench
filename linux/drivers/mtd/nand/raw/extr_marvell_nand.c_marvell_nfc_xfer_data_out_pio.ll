; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_xfer_data_out_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_xfer_data_out_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.marvell_nfc = type { i64 }

@FIFO_DEPTH = common dso_local global i32 0, align 4
@NDDB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.marvell_nfc*, i32*, i32)* @marvell_nfc_xfer_data_out_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nfc_xfer_data_out_pio(%struct.marvell_nfc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.marvell_nfc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.marvell_nfc* %0, %struct.marvell_nfc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @FIFO_DEPTH, align 4
  %14 = urem i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @FIFO_DEPTH, align 4
  %17 = call i32 @round_down(i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %35, %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load %struct.marvell_nfc*, %struct.marvell_nfc** %4, align 8
  %24 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NDDB, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* @FIFO_DEPTH, align 4
  %33 = call i32 @FIFO_REP(i32 %32)
  %34 = call i32 @iowrite32_rep(i64 %27, i32* %31, i32 %33)
  br label %35

35:                                               ; preds = %22
  %36 = load i32, i32* @FIFO_DEPTH, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %18

39:                                               ; preds = %18
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  %43 = load i32, i32* @FIFO_DEPTH, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %10, align 8
  %46 = alloca i32, i64 %44, align 16
  store i64 %44, i64* %11, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @memcpy(i32* %46, i32* %50, i32 %51)
  %53 = load %struct.marvell_nfc*, %struct.marvell_nfc** %4, align 8
  %54 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NDDB, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i32, i32* @FIFO_DEPTH, align 4
  %59 = call i32 @FIFO_REP(i32 %58)
  %60 = call i32 @iowrite32_rep(i64 %57, i32* %46, i32 %59)
  %61 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %61)
  br label %62

62:                                               ; preds = %42, %39
  ret i32 0
}

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @iowrite32_rep(i64, i32*, i32) #1

declare dso_local i32 @FIFO_REP(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
