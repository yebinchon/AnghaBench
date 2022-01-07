; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_fc0011.c_fc0011_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_fc0011.c_fc0011_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 (%struct.TYPE_3__*, i32, i32, i32)*, %struct.fc0011_priv* }
%struct.TYPE_3__ = type { i32 }
%struct.fc0011_priv = type { %struct.TYPE_3__*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DVB_FRONTEND_COMPONENT_TUNER = common dso_local global i32 0, align 4
@FC0011_FE_CALLBACK_POWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Power-on callback failed\0A\00", align 1
@FC0011_FE_CALLBACK_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Reset callback failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @fc0011_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc0011_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.fc0011_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1
  %8 = load %struct.fc0011_priv*, %struct.fc0011_priv** %7, align 8
  store %struct.fc0011_priv* %8, %struct.fc0011_priv** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load i32 (%struct.TYPE_3__*, i32, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32)** %10, align 8
  %12 = icmp ne i32 (%struct.TYPE_3__*, i32, i32, i32)* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %65

20:                                               ; preds = %1
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_3__*, i32, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32)** %22, align 8
  %24 = load %struct.fc0011_priv*, %struct.fc0011_priv** %4, align 8
  %25 = getelementptr inbounds %struct.fc0011_priv, %struct.fc0011_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* @DVB_FRONTEND_COMPONENT_TUNER, align 4
  %28 = load i32, i32* @FC0011_FE_CALLBACK_POWER, align 4
  %29 = load %struct.fc0011_priv*, %struct.fc0011_priv** %4, align 8
  %30 = getelementptr inbounds %struct.fc0011_priv, %struct.fc0011_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %23(%struct.TYPE_3__* %26, i32 %27, i32 %28, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %20
  %36 = load %struct.fc0011_priv*, %struct.fc0011_priv** %4, align 8
  %37 = getelementptr inbounds %struct.fc0011_priv, %struct.fc0011_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %65

42:                                               ; preds = %20
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %44 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_3__*, i32, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32)** %44, align 8
  %46 = load %struct.fc0011_priv*, %struct.fc0011_priv** %4, align 8
  %47 = getelementptr inbounds %struct.fc0011_priv, %struct.fc0011_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* @DVB_FRONTEND_COMPONENT_TUNER, align 4
  %50 = load i32, i32* @FC0011_FE_CALLBACK_RESET, align 4
  %51 = load %struct.fc0011_priv*, %struct.fc0011_priv** %4, align 8
  %52 = getelementptr inbounds %struct.fc0011_priv, %struct.fc0011_priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 %45(%struct.TYPE_3__* %48, i32 %49, i32 %50, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %42
  %58 = load %struct.fc0011_priv*, %struct.fc0011_priv** %4, align 8
  %59 = getelementptr inbounds %struct.fc0011_priv, %struct.fc0011_priv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %65

64:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %57, %35, %17
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
