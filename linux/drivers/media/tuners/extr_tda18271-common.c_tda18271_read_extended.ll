; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-common.c_tda18271_read_extended.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-common.c_tda18271_read_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_msg = type { i8*, i32, i32, i32 }

@TDA18271_NUM_REGS = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ERROR: i2c_transfer returned: %d\0A\00", align 1
@R_EB9 = common dso_local global i32 0, align 4
@R_EB16 = common dso_local global i32 0, align 4
@R_EB17 = common dso_local global i32 0, align 4
@R_EB19 = common dso_local global i32 0, align 4
@R_EB20 = common dso_local global i32 0, align 4
@tda18271_debug = common dso_local global i32 0, align 4
@DBG_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tda18271_read_extended(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda18271_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.tda18271_priv*, %struct.tda18271_priv** %12, align 8
  store %struct.tda18271_priv* %13, %struct.tda18271_priv** %3, align 8
  %14 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %15 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %4, align 8
  %17 = load i32, i32* @TDA18271_NUM_REGS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  store i8 0, i8* %7, align 1
  %21 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 0
  store i8* %7, i8** %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 1
  store i32 1, i32* %23, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 2
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 3
  %26 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %27 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %25, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i64 1
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 0
  store i8* %20, i8** %31, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 1
  %33 = load i32, i32* @TDA18271_NUM_REGS, align 4
  store i32 %33, i32* %32, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 2
  %35 = load i32, i32* @I2C_M_RD, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 3
  %37 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %38 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %36, align 8
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %42 = call i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend* %41, i32 1)
  %43 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %44 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %48 = call i32 @i2c_transfer(i32 %46, %struct.i2c_msg* %47, i32 2)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %50 = call i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend* %49, i32 0)
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 2
  br i1 %52, label %53, label %56

53:                                               ; preds = %1
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @tda_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %53, %1
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %91, %56
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @TDA18271_NUM_REGS, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %94

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @R_EB9, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %90

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @R_EB16, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %65
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @R_EB17, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @R_EB19, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @R_EB20, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %20, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = load i8*, i8** %4, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 %85, i8* %89, align 1
  br label %90

90:                                               ; preds = %81, %77, %73, %69, %65, %61
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %57

94:                                               ; preds = %57
  %95 = load i32, i32* @tda18271_debug, align 4
  %96 = load i32, i32* @DBG_REG, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %101 = call i32 @tda18271_dump_regs(%struct.dvb_frontend* %100, i32 1)
  br label %102

102:                                              ; preds = %99, %94
  %103 = load i32, i32* %8, align 4
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %108

106:                                              ; preds = %102
  %107 = load i32, i32* %8, align 4
  br label %108

108:                                              ; preds = %106, %105
  %109 = phi i32 [ 0, %105 ], [ %107, %106 ]
  %110 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %110)
  ret i32 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend*, i32) #2

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

declare dso_local i32 @tda_err(i8*, i32) #2

declare dso_local i32 @tda18271_dump_regs(%struct.dvb_frontend*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
