; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-simple.c_simple_dvb_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-simple.c_simple_dvb_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tuner_simple_priv* }
%struct.tuner_simple_priv = type { %struct.tunertype*, i32 }
%struct.tunertype = type { i32, i32 }
%struct.tuner_params = type { i32 }

@.str = private unnamed_addr constant [75 x i8] c"attempt to treat tuner %d (%s) as digital tuner without stepsize defined.\0A\00", align 1
@TUNER_PARAM_TYPE_DIGITAL = common dso_local global i32 0, align 4
@offset = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: div=%d | buf=0x%02x,0x%02x,0x%02x,0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*, i32, i32, i32)* @simple_dvb_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_dvb_configure(%struct.dvb_frontend* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_frontend*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tuner_simple_priv*, align 8
  %13 = alloca %struct.tunertype*, align 8
  %14 = alloca %struct.tuner_params*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 0
  %22 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %21, align 8
  store %struct.tuner_simple_priv* %22, %struct.tuner_simple_priv** %12, align 8
  %23 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %12, align 8
  %24 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %23, i32 0, i32 0
  %25 = load %struct.tunertype*, %struct.tunertype** %24, align 8
  store %struct.tunertype* %25, %struct.tunertype** %13, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sdiv i32 %26, 62500
  store i32 %27, i32* %19, align 4
  %28 = load %struct.tunertype*, %struct.tunertype** %13, align 8
  %29 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %5
  %33 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %12, align 8
  %34 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %12, align 8
  %37 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %36, i32 0, i32 0
  %38 = load %struct.tunertype*, %struct.tunertype** %37, align 8
  %39 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @tuner_err(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %40)
  store i32 0, i32* %6, align 4
  br label %116

42:                                               ; preds = %5
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %44 = load i32, i32* @TUNER_PARAM_TYPE_DIGITAL, align 4
  %45 = call %struct.tuner_params* @simple_tuner_params(%struct.dvb_frontend* %43, i32 %44)
  store %struct.tuner_params* %45, %struct.tuner_params** %14, align 8
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %47 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %48 = call i32 @simple_config_lookup(%struct.dvb_frontend* %46, %struct.tuner_params* %47, i32* %19, i32* %15, i32* %16)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %116

52:                                               ; preds = %42
  %53 = load i32, i32* %19, align 4
  %54 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %55 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %53, %56
  %58 = mul nsw i32 %57, 62500
  %59 = load i32, i32* @offset, align 4
  %60 = add nsw i32 %58, %59
  %61 = load %struct.tunertype*, %struct.tunertype** %13, align 8
  %62 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 2
  %65 = add nsw i32 %60, %64
  %66 = load %struct.tunertype*, %struct.tunertype** %13, align 8
  %67 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sdiv i32 %65, %68
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = ashr i32 %70, 8
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %17, align 4
  %75 = and i32 %74, 255
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @simple_set_dvb(%struct.dvb_frontend* %84, i32* %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.tunertype*, %struct.tunertype** %13, align 8
  %91 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %17, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @tuner_dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %93, i32 %96, i32 %99, i32 %102, i32 %105)
  %107 = load i32, i32* %17, align 4
  %108 = load %struct.tunertype*, %struct.tunertype** %13, align 8
  %109 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %107, %110
  %112 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %113 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %111, %114
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %52, %51, %32
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @tuner_err(i8*, i32, i32) #1

declare dso_local %struct.tuner_params* @simple_tuner_params(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @simple_config_lookup(%struct.dvb_frontend*, %struct.tuner_params*, i32*, i32*, i32*) #1

declare dso_local i32 @simple_set_dvb(%struct.dvb_frontend*, i32*, i32, i32, i32) #1

declare dso_local i32 @tuner_dbg(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
