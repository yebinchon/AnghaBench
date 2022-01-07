; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18218.c_tda18218_wr_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18218.c_tda18218_wr_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda18218_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@MAX_XFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: i2c wr reg=%04x: len=%d is too big!\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: i2c wr failed=%d reg=%02x len=%d\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda18218_priv*, i32, i32*, i32)* @tda18218_wr_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18218_wr_regs(%struct.tda18218_priv* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tda18218_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [1 x %struct.i2c_msg], align 16
  %16 = alloca i32, align 4
  store %struct.tda18218_priv* %0, %struct.tda18218_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* @MAX_XFER_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %15, i64 0, i64 0
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 1
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 2
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 3
  %26 = load %struct.tda18218_priv*, %struct.tda18218_priv** %6, align 8
  %27 = getelementptr inbounds %struct.tda18218_priv, %struct.tda18218_priv* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %25, align 8
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 1, %31
  %33 = sext i32 %32 to i64
  %34 = mul nuw i64 4, %18
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %4
  %37 = load %struct.tda18218_priv*, %struct.tda18218_priv** %6, align 8
  %38 = getelementptr inbounds %struct.tda18218_priv, %struct.tda18218_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* @KBUILD_MODNAME, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i32*, i8*, i32, i32, i32, ...) @dev_warn(i32* %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %125

47:                                               ; preds = %4
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %98, %47
  %50 = load i32, i32* %12, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %107

52:                                               ; preds = %49
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.tda18218_priv*, %struct.tda18218_priv** %6, align 8
  %56 = getelementptr inbounds %struct.tda18218_priv, %struct.tda18218_priv* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp sgt i32 %54, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %52
  %63 = load %struct.tda18218_priv*, %struct.tda18218_priv** %6, align 8
  %64 = getelementptr inbounds %struct.tda18218_priv, %struct.tda18218_priv* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %62, %52
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 1, %70
  %72 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %15, i64 0, i64 0
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* %12, align 4
  %78 = sub nsw i32 %76, %77
  %79 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %78, i32* %79, align 16
  %80 = getelementptr inbounds i32, i32* %20, i64 1
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %12, align 4
  %84 = sub nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @memcpy(i32* %80, i32* %86, i32 %87)
  %89 = load %struct.tda18218_priv*, %struct.tda18218_priv** %6, align 8
  %90 = getelementptr inbounds %struct.tda18218_priv, %struct.tda18218_priv* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %15, i64 0, i64 0
  %93 = call i32 @i2c_transfer(%struct.TYPE_4__* %91, %struct.i2c_msg* %92, i32 1)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %69
  br label %107

97:                                               ; preds = %69
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.tda18218_priv*, %struct.tda18218_priv** %6, align 8
  %100 = getelementptr inbounds %struct.tda18218_priv, %struct.tda18218_priv* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %103, 1
  %105 = load i32, i32* %12, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %12, align 4
  br label %49

107:                                              ; preds = %96, %49
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 0, i32* %10, align 4
  br label %123

111:                                              ; preds = %107
  %112 = load %struct.tda18218_priv*, %struct.tda18218_priv** %6, align 8
  %113 = getelementptr inbounds %struct.tda18218_priv, %struct.tda18218_priv* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* @KBUILD_MODNAME, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i32 (i32*, i8*, i32, i32, i32, ...) @dev_warn(i32* %115, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %116, i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* @EREMOTEIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %111, %110
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %125

125:                                              ; preds = %123, %36
  %126 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, i32, ...) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @i2c_transfer(%struct.TYPE_4__*, %struct.i2c_msg*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
