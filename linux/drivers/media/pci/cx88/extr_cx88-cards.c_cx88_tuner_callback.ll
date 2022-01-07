; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-cards.c_cx88_tuner_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-cards.c_cx88_tuner_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_bit_data = type { %struct.cx88_core* }
%struct.cx88_core = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Error - i2c private data undefined.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Error - device struct undefined.\0A\00", align 1
@DVB_FRONTEND_COMPONENT_TUNER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Calling XC2028/3028 callback\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Calling XC4000 callback\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Calling XC5000 callback\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Error: Calling callback for tuner %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_tuner_callback(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_algo_bit_data*, align 8
  %11 = alloca %struct.cx88_core*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.i2c_algo_bit_data*
  store %struct.i2c_algo_bit_data* %13, %struct.i2c_algo_bit_data** %10, align 8
  %14 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %10, align 8
  %15 = icmp ne %struct.i2c_algo_bit_data* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %68

20:                                               ; preds = %4
  %21 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %10, align 8
  %22 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %21, i32 0, i32 0
  %23 = load %struct.cx88_core*, %struct.cx88_core** %22, align 8
  store %struct.cx88_core* %23, %struct.cx88_core** %11, align 8
  %24 = load %struct.cx88_core*, %struct.cx88_core** %11, align 8
  %25 = icmp ne %struct.cx88_core* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %68

30:                                               ; preds = %20
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @DVB_FRONTEND_COMPONENT_TUNER, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %68

37:                                               ; preds = %30
  %38 = load %struct.cx88_core*, %struct.cx88_core** %11, align 8
  %39 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %60 [
    i32 130, label %42
    i32 129, label %48
    i32 128, label %54
  ]

42:                                               ; preds = %37
  %43 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.cx88_core*, %struct.cx88_core** %11, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @cx88_xc2028_tuner_callback(%struct.cx88_core* %44, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %68

48:                                               ; preds = %37
  %49 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.cx88_core*, %struct.cx88_core** %11, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @cx88_xc4000_tuner_callback(%struct.cx88_core* %50, i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  br label %68

54:                                               ; preds = %37
  %55 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %56 = load %struct.cx88_core*, %struct.cx88_core** %11, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @cx88_xc5000_tuner_callback(%struct.cx88_core* %56, i32 %57, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %68

60:                                               ; preds = %37
  %61 = load %struct.cx88_core*, %struct.cx88_core** %11, align 8
  %62 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %60, %54, %48, %42, %34, %26, %16
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @cx88_xc2028_tuner_callback(%struct.cx88_core*, i32, i32) #1

declare dso_local i32 @cx88_xc4000_tuner_callback(%struct.cx88_core*, i32, i32) #1

declare dso_local i32 @cx88_xc5000_tuner_callback(%struct.cx88_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
