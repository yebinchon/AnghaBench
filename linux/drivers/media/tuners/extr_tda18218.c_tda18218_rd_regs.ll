; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18218.c_tda18218_rd_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18218.c_tda18218_rd_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda18218_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_msg = type { i32, i8*, i32, i32 }

@MAX_XFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: i2c wr reg=%04x: len=%d is too big!\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: i2c rd failed=%d reg=%02x len=%d\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda18218_priv*, i64, i64*, i64)* @tda18218_rd_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18218_rd_regs(%struct.tda18218_priv* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tda18218_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [2 x %struct.i2c_msg], align 16
  %14 = alloca i32, align 4
  store %struct.tda18218_priv* %0, %struct.tda18218_priv** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* @MAX_XFER_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i64, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %13, i64 0, i64 0
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 2
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 3
  %24 = load %struct.tda18218_priv*, %struct.tda18218_priv** %6, align 8
  %25 = getelementptr inbounds %struct.tda18218_priv, %struct.tda18218_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %23, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i64 1
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 0
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 1
  %36 = bitcast i64* %18 to i8*
  store i8* %36, i8** %35, align 8
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 2
  %38 = load i32, i32* @I2C_M_RD, align 4
  store i32 %38, i32* %37, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 3
  %40 = load %struct.tda18218_priv*, %struct.tda18218_priv** %6, align 8
  %41 = getelementptr inbounds %struct.tda18218_priv, %struct.tda18218_priv* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %39, align 4
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %45, %46
  %48 = mul nuw i64 8, %16
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %4
  %51 = load %struct.tda18218_priv*, %struct.tda18218_priv** %6, align 8
  %52 = getelementptr inbounds %struct.tda18218_priv, %struct.tda18218_priv* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* @KBUILD_MODNAME, align 4
  %56 = load i64, i64* %7, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i64, i64* %9, align 8
  %59 = call i32 (i32*, i8*, i32, i32, i64, ...) @dev_warn(i32* %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %57, i64 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %90

62:                                               ; preds = %4
  %63 = load %struct.tda18218_priv*, %struct.tda18218_priv** %6, align 8
  %64 = getelementptr inbounds %struct.tda18218_priv, %struct.tda18218_priv* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %13, i64 0, i64 0
  %67 = call i32 @i2c_transfer(%struct.TYPE_4__* %65, %struct.i2c_msg* %66, i32 2)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load i64*, i64** %8, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds i64, i64* %18, i64 %72
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @memcpy(i64* %71, i64* %73, i64 %74)
  store i32 0, i32* %10, align 4
  br label %88

76:                                               ; preds = %62
  %77 = load %struct.tda18218_priv*, %struct.tda18218_priv** %6, align 8
  %78 = getelementptr inbounds %struct.tda18218_priv, %struct.tda18218_priv* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* @KBUILD_MODNAME, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i32 (i32*, i8*, i32, i32, i64, ...) @dev_warn(i32* %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %82, i64 %83, i64 %84)
  %86 = load i32, i32* @EREMOTEIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %76, %70
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %90

90:                                               ; preds = %88, %50
  %91 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, i64, ...) #2

declare dso_local i32 @i2c_transfer(%struct.TYPE_4__*, %struct.i2c_msg*, i32) #2

declare dso_local i32 @memcpy(i64*, i64*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
