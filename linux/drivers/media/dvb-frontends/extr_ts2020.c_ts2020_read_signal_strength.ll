; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ts2020.c_ts2020_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ts2020.c_ts2020_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.ts2020_priv*, %struct.dtv_frontend_properties }
%struct.ts2020_priv = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.dtv_frontend_properties = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@FE_SCALE_NOT_AVAILABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @ts2020_read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts2020_read_signal_strength(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca %struct.ts2020_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1
  store %struct.dtv_frontend_properties* %11, %struct.dtv_frontend_properties** %6, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.ts2020_priv*, %struct.ts2020_priv** %13, align 8
  store %struct.ts2020_priv* %14, %struct.ts2020_priv** %7, align 8
  %15 = load %struct.ts2020_priv*, %struct.ts2020_priv** %7, align 8
  %16 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.ts2020_priv*, %struct.ts2020_priv** %7, align 8
  %21 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @ts2020_stat_work(i32* %22)
  br label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FE_SCALE_NOT_AVAILABLE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32*, i32** %5, align 8
  store i32 0, i32* %35, align 4
  store i32 0, i32* %3, align 4
  br label %77

36:                                               ; preds = %24
  %37 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %38 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, -85000
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %72

47:                                               ; preds = %36
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, -65000
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 85000, %51
  %53 = mul nsw i32 %52, 3
  %54 = call i32 @div64_s64(i32 %53, i32 1000)
  %55 = add nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %71

56:                                               ; preds = %47
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, -45000
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 65000, %60
  %62 = mul nsw i32 %61, 3
  %63 = call i32 @div64_s64(i32 %62, i32 2000)
  %64 = add nsw i32 60, %63
  store i32 %64, i32* %8, align 4
  br label %70

65:                                               ; preds = %56
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 45000, %66
  %68 = call i32 @div64_s64(i32 %67, i32 5000)
  %69 = add nsw i32 90, %68
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %65, %59
  br label %71

71:                                               ; preds = %70, %50
  br label %72

72:                                               ; preds = %71, %46
  %73 = load i32, i32* %8, align 4
  %74 = mul i32 %73, 65535
  %75 = udiv i32 %74, 100
  %76 = load i32*, i32** %5, align 8
  store i32 %75, i32* %76, align 4
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %72, %34
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @ts2020_stat_work(i32*) #1

declare dso_local i32 @div64_s64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
