; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10086.c_tda10086_get_tune_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10086.c_tda10086_get_tune_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i32 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @tda10086_get_tune_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10086_get_tune_settings(%struct.dvb_frontend* %0, %struct.dvb_frontend_tune_settings* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_tune_settings*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_tune_settings* %1, %struct.dvb_frontend_tune_settings** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  store %struct.dtv_frontend_properties* %7, %struct.dtv_frontend_properties** %5, align 8
  %8 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %9 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %10, 20000000
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %13, i32 0, i32 0
  store i32 50, i32* %14, align 4
  %15 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %15, i32 0, i32 1
  store i32 2000, i32* %16, align 4
  %17 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %17, i32 0, i32 2
  store i32 8000, i32* %18, align 4
  br label %94

19:                                               ; preds = %2
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %21 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 12000000
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %25, i32 0, i32 0
  store i32 100, i32* %26, align 4
  %27 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %27, i32 0, i32 1
  store i32 1500, i32* %28, align 4
  %29 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %30 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %29, i32 0, i32 2
  store i32 9000, i32* %30, align 4
  br label %93

31:                                               ; preds = %19
  %32 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %33 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 8000000
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %38 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %37, i32 0, i32 0
  store i32 100, i32* %38, align 4
  %39 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %40 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %39, i32 0, i32 1
  store i32 1000, i32* %40, align 4
  %41 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %42 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %41, i32 0, i32 2
  store i32 8000, i32* %42, align 4
  br label %92

43:                                               ; preds = %31
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %45 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 4000000
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %50 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %49, i32 0, i32 0
  store i32 100, i32* %50, align 4
  %51 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %52 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %51, i32 0, i32 1
  store i32 500, i32* %52, align 4
  %53 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %54 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %53, i32 0, i32 2
  store i32 7000, i32* %54, align 4
  br label %91

55:                                               ; preds = %43
  %56 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %57 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 2000000
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %62 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %61, i32 0, i32 0
  store i32 200, i32* %62, align 4
  %63 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %64 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %65, 8000
  %67 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %68 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %70 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 14, %71
  %73 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %74 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  br label %90

75:                                               ; preds = %55
  %76 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %77 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %76, i32 0, i32 0
  store i32 200, i32* %77, align 4
  %78 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %79 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %80, 8000
  %82 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %83 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %85 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 18, %86
  %88 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %89 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %75, %60
  br label %91

91:                                               ; preds = %90, %48
  br label %92

92:                                               ; preds = %91, %36
  br label %93

93:                                               ; preds = %92, %24
  br label %94

94:                                               ; preds = %93, %12
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
