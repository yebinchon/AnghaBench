; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-xc2028.c_xc2028_get_afc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-xc2028.c_xc2028_get_afc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.xc2028_data* }
%struct.xc2028_data = type { i32 }

@XREG_LOCK = common dso_local global i32 0, align 4
@XREG_FREQ_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"AFC is %d Hz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @xc2028_get_afc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xc2028_get_afc(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.xc2028_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.xc2028_data*, %struct.xc2028_data** %12, align 8
  store %struct.xc2028_data* %13, %struct.xc2028_data** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.xc2028_data*, %struct.xc2028_data** %6, align 8
  %15 = call i32 @check_device_status(%struct.xc2028_data* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %71

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %3, align 4
  br label %71

25:                                               ; preds = %20
  %26 = load %struct.xc2028_data*, %struct.xc2028_data** %6, align 8
  %27 = getelementptr inbounds %struct.xc2028_data, %struct.xc2028_data* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %45, %25
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load %struct.xc2028_data*, %struct.xc2028_data** %6, align 8
  %34 = load i32, i32* @XREG_LOCK, align 4
  %35 = call i32 @xc2028_get_reg(%struct.xc2028_data* %33, i32 %34, i32* %9)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %66

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %48

43:                                               ; preds = %39
  %44 = call i32 @msleep(i32 6)
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %29

48:                                               ; preds = %42, %29
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %66

52:                                               ; preds = %48
  %53 = load %struct.xc2028_data*, %struct.xc2028_data** %6, align 8
  %54 = load i32, i32* @XREG_FREQ_ERROR, align 4
  %55 = call i32 @xc2028_get_reg(%struct.xc2028_data* %53, i32 %54, i32* %10)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %66

59:                                               ; preds = %52
  %60 = load i32, i32* %10, align 4
  %61 = mul nsw i32 %60, 15625
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @tuner_dbg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %59, %58, %51, %38
  %67 = load %struct.xc2028_data*, %struct.xc2028_data** %6, align 8
  %68 = getelementptr inbounds %struct.xc2028_data, %struct.xc2028_data* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %66, %23, %18
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @check_device_status(%struct.xc2028_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @xc2028_get_reg(%struct.xc2028_data*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @tuner_dbg(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
