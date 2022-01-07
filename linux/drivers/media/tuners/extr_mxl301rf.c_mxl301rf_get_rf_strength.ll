; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl301rf.c_mxl301rf_get_rf_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl301rf.c_mxl301rf_get_rf_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mxl301rf_state*, %struct.TYPE_3__ }
%struct.mxl301rf_state = type { i32 }
%struct.TYPE_3__ = type { %struct.dtv_fe_stats }
%struct.dtv_fe_stats = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@FE_SCALE_NOT_AVAILABLE = common dso_local global i32 0, align 4
@FE_SCALE_DECIBEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @mxl301rf_get_rf_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl301rf_get_rf_strength(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mxl301rf_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dtv_fe_stats*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.dtv_fe_stats* %18, %struct.dtv_fe_stats** %15, align 8
  %19 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %15, align 8
  %20 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* @FE_SCALE_NOT_AVAILABLE, align 4
  %22 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %15, align 8
  %23 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 %21, i32* %26, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 0, i32* %27, align 4
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 0
  %30 = load %struct.mxl301rf_state*, %struct.mxl301rf_state** %29, align 8
  store %struct.mxl301rf_state* %30, %struct.mxl301rf_state** %6, align 8
  %31 = load %struct.mxl301rf_state*, %struct.mxl301rf_state** %6, align 8
  %32 = call i32 @reg_write(%struct.mxl301rf_state* %31, i32 20, i32 1)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %102

37:                                               ; preds = %2
  %38 = call i32 @usleep_range(i32 1000, i32 2000)
  %39 = load %struct.mxl301rf_state*, %struct.mxl301rf_state** %6, align 8
  %40 = call i32 @reg_read(%struct.mxl301rf_state* %39, i32 24, i32* %8)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.mxl301rf_state*, %struct.mxl301rf_state** %6, align 8
  %45 = call i32 @reg_read(%struct.mxl301rf_state* %44, i32 25, i32* %9)
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.mxl301rf_state*, %struct.mxl301rf_state** %6, align 8
  %51 = call i32 @reg_read(%struct.mxl301rf_state* %50, i32 214, i32* %10)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.mxl301rf_state*, %struct.mxl301rf_state** %6, align 8
  %57 = call i32 @reg_read(%struct.mxl301rf_state* %56, i32 215, i32* %11)
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %102

63:                                               ; preds = %58
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, 7
  %66 = shl i32 %65, 8
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, 15
  %71 = shl i32 %70, 5
  %72 = load i32, i32* %10, align 4
  %73 = ashr i32 %72, 3
  %74 = or i32 %71, %73
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = sub nsw i32 %75, %76
  %78 = sub nsw i32 %77, 904
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = mul nsw i32 %79, 1000
  %81 = sdiv i32 %80, 8
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %15, align 8
  %84 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %82, i32* %87, align 4
  %88 = load i32, i32* @FE_SCALE_DECIBEL, align 4
  %89 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %15, align 8
  %90 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32 %88, i32* %93, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = sub nsw i32 %94, %95
  %97 = add nsw i32 %96, 512
  %98 = sub nsw i32 %97, 1
  %99 = mul nsw i32 %98, 100
  %100 = sdiv i32 %99, 2558
  %101 = load i32*, i32** %5, align 8
  store i32 %100, i32* %101, align 4
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %63, %61, %35
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @reg_write(%struct.mxl301rf_state*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @reg_read(%struct.mxl301rf_state*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
