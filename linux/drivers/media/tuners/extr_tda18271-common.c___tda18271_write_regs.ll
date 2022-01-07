; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-common.c___tda18271_write_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-common.c___tda18271_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_msg = type { i8*, i32, i32, i32 }

@TDA18271_NUM_REGS = common dso_local global i32 0, align 4
@I2C_LOCK_SEGMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"ERROR: idx = 0x%x, len = %d, i2c_transfer returned: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32, i32)* @__tda18271_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tda18271_write_regs(%struct.dvb_frontend* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tda18271_priv*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.i2c_msg, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 0
  %19 = load %struct.tda18271_priv*, %struct.tda18271_priv** %18, align 8
  store %struct.tda18271_priv* %19, %struct.tda18271_priv** %9, align 8
  %20 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  %21 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %10, align 8
  %23 = load i32, i32* @TDA18271_NUM_REGS, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %11, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 1
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 2
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 3
  %32 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  %33 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %31, align 8
  store i32 1, i32* %15, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = icmp ugt i64 %42, %25
  br label %44

44:                                               ; preds = %38, %4
  %45 = phi i1 [ true, %4 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  %49 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %55 [
    i32 131, label %51
    i32 130, label %52
    i32 129, label %53
    i32 128, label %54
  ]

51:                                               ; preds = %44
  store i32 3, i32* %16, align 4
  br label %56

52:                                               ; preds = %44
  store i32 8, i32* %16, align 4
  br label %56

53:                                               ; preds = %44
  store i32 16, i32* %16, align 4
  br label %56

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %44, %54
  store i32 39, i32* %16, align 4
  br label %56

56:                                               ; preds = %55, %53, %52, %51
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %61 = call i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend* %60, i32 1)
  %62 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  %63 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @I2C_LOCK_SEGMENT, align 4
  %67 = call i32 @i2c_lock_bus(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %56
  br label %69

69:                                               ; preds = %113, %68
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %120

72:                                               ; preds = %69
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %76, %72
  %79 = load i32, i32* %6, align 4
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 %80, i8* %81, align 16
  store i32 1, i32* %14, align 4
  br label %82

82:                                               ; preds = %98, %78
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = load i8*, i8** %10, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %88, 1
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %87, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %27, i64 %96
  store i8 %94, i8* %97, align 1
  br label %98

98:                                               ; preds = %86
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %82

101:                                              ; preds = %82
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, 1
  %104 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 1
  store i32 %103, i32* %104, align 8
  %105 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  %106 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @__i2c_transfer(i32 %108, %struct.i2c_msg* %13, i32 1)
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 1
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  br label %120

113:                                              ; preds = %101
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %7, align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* %7, align 4
  br label %69

120:                                              ; preds = %112, %69
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  %125 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @I2C_LOCK_SEGMENT, align 4
  %129 = call i32 @i2c_unlock_bus(i32 %127, i32 %128)
  %130 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %131 = call i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend* %130, i32 0)
  br label %132

132:                                              ; preds = %123, %120
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 1
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @tda_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %135, %132
  %141 = load i32, i32* %15, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %146

144:                                              ; preds = %140
  %145 = load i32, i32* %15, align 4
  br label %146

146:                                              ; preds = %144, %143
  %147 = phi i32 [ 0, %143 ], [ %145, %144 ]
  %148 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %148)
  ret i32 %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend*, i32) #2

declare dso_local i32 @i2c_lock_bus(i32, i32) #2

declare dso_local i32 @__i2c_transfer(i32, %struct.i2c_msg*, i32) #2

declare dso_local i32 @i2c_unlock_bus(i32, i32) #2

declare dso_local i32 @tda_err(i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
