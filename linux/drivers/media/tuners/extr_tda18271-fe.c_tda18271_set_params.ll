; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-fe.c_tda18271_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-fe.c_tda18271_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.tda18271_priv*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.dvb_frontend.0*)* }
%struct.dvb_frontend.0 = type opaque
%struct.tda18271_priv = type { i32, i32, i32, i32, %struct.tda18271_std_map }
%struct.tda18271_std_map = type { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }
%struct.tda18271_std_map_item = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32 }

@TDA18271_DIGITAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"modulation type not supported!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda18271_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18271_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tda18271_priv*, align 8
  %9 = alloca %struct.tda18271_std_map*, align 8
  %10 = alloca %struct.tda18271_std_map_item*, align 8
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 2
  store %struct.dtv_frontend_properties* %13, %struct.dtv_frontend_properties** %4, align 8
  %14 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %15 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %18 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %21 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %24 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %23, i32 0, i32 1
  %25 = load %struct.tda18271_priv*, %struct.tda18271_priv** %24, align 8
  store %struct.tda18271_priv* %25, %struct.tda18271_priv** %8, align 8
  %26 = load %struct.tda18271_priv*, %struct.tda18271_priv** %8, align 8
  %27 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %26, i32 0, i32 4
  store %struct.tda18271_std_map* %27, %struct.tda18271_std_map** %9, align 8
  %28 = load i32, i32* @TDA18271_DIGITAL, align 4
  %29 = load %struct.tda18271_priv*, %struct.tda18271_priv** %8, align 8
  %30 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %70 [
    i32 134, label %32
    i32 128, label %35
    i32 130, label %35
    i32 129, label %35
    i32 132, label %52
    i32 133, label %53
    i32 131, label %53
  ]

32:                                               ; preds = %1
  %33 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %9, align 8
  %34 = getelementptr inbounds %struct.tda18271_std_map, %struct.tda18271_std_map* %33, i32 0, i32 6
  store %struct.tda18271_std_map_item* %34, %struct.tda18271_std_map_item** %10, align 8
  store i32 6000000, i32* %6, align 4
  br label %74

35:                                               ; preds = %1, %1, %1
  %36 = load i32, i32* %6, align 4
  %37 = icmp sle i32 %36, 6000000
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %9, align 8
  %40 = getelementptr inbounds %struct.tda18271_std_map, %struct.tda18271_std_map* %39, i32 0, i32 5
  store %struct.tda18271_std_map_item* %40, %struct.tda18271_std_map_item** %10, align 8
  br label %51

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = icmp sle i32 %42, 7000000
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %9, align 8
  %46 = getelementptr inbounds %struct.tda18271_std_map, %struct.tda18271_std_map* %45, i32 0, i32 4
  store %struct.tda18271_std_map_item* %46, %struct.tda18271_std_map_item** %10, align 8
  br label %50

47:                                               ; preds = %41
  %48 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %9, align 8
  %49 = getelementptr inbounds %struct.tda18271_std_map, %struct.tda18271_std_map* %48, i32 0, i32 3
  store %struct.tda18271_std_map_item* %49, %struct.tda18271_std_map_item** %10, align 8
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %38
  br label %74

52:                                               ; preds = %1
  store i32 6000000, i32* %6, align 4
  br label %53

53:                                               ; preds = %1, %1, %52
  %54 = load i32, i32* %6, align 4
  %55 = icmp sle i32 %54, 6000000
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %9, align 8
  %58 = getelementptr inbounds %struct.tda18271_std_map, %struct.tda18271_std_map* %57, i32 0, i32 2
  store %struct.tda18271_std_map_item* %58, %struct.tda18271_std_map_item** %10, align 8
  br label %69

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = icmp sle i32 %60, 7000000
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %9, align 8
  %64 = getelementptr inbounds %struct.tda18271_std_map, %struct.tda18271_std_map* %63, i32 0, i32 1
  store %struct.tda18271_std_map_item* %64, %struct.tda18271_std_map_item** %10, align 8
  br label %68

65:                                               ; preds = %59
  %66 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %9, align 8
  %67 = getelementptr inbounds %struct.tda18271_std_map, %struct.tda18271_std_map* %66, i32 0, i32 0
  store %struct.tda18271_std_map_item* %67, %struct.tda18271_std_map_item** %10, align 8
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %56
  br label %74

70:                                               ; preds = %1
  %71 = call i32 @tda_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %114

74:                                               ; preds = %69, %51, %32
  %75 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %76 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %78, align 8
  %80 = icmp ne i32 (%struct.dvb_frontend.0*)* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %83 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %85, align 8
  %87 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %88 = bitcast %struct.dvb_frontend* %87 to %struct.dvb_frontend.0*
  %89 = call i32 %86(%struct.dvb_frontend.0* %88)
  br label %90

90:                                               ; preds = %81, %74
  %91 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %92 = load %struct.tda18271_std_map_item*, %struct.tda18271_std_map_item** %10, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @tda18271_tune(%struct.dvb_frontend* %91, %struct.tda18271_std_map_item* %92, i32 %93, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i64 @tda_fail(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %112

100:                                              ; preds = %90
  %101 = load %struct.tda18271_std_map_item*, %struct.tda18271_std_map_item** %10, align 8
  %102 = getelementptr inbounds %struct.tda18271_std_map_item, %struct.tda18271_std_map_item* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.tda18271_priv*, %struct.tda18271_priv** %8, align 8
  %105 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.tda18271_priv*, %struct.tda18271_priv** %8, align 8
  %108 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.tda18271_priv*, %struct.tda18271_priv** %8, align 8
  %111 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %100, %99
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %70
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @tda_warn(i8*) #1

declare dso_local i32 @tda18271_tune(%struct.dvb_frontend*, %struct.tda18271_std_map_item*, i32, i32) #1

declare dso_local i64 @tda_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
