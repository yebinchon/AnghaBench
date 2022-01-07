; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-simple.c_simple_set_dvb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-simple.c_simple_set_dvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tuner_simple_priv* }
%struct.tuner_simple_priv = type { i32, i64 }

@dtv_input = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*, i32*, i32, i32, i32)* @simple_set_dvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simple_set_dvb(%struct.dvb_frontend* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tuner_simple_priv*, align 8
  %12 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  %15 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %14, align 8
  store %struct.tuner_simple_priv* %15, %struct.tuner_simple_priv** %11, align 8
  %16 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %11, align 8
  %17 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %83 [
    i32 130, label %19
    i32 131, label %19
    i32 129, label %31
    i32 128, label %54
    i32 132, label %54
  ]

19:                                               ; preds = %5, %5
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 8000000
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = icmp sge i32 %23, 158870000
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, 8
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %25, %22, %19
  br label %84

31:                                               ; preds = %5
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 161000000
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %40

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 444000000
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 2, i32 4
  br label %40

40:                                               ; preds = %35, %34
  %41 = phi i32 [ 1, %34 ], [ %39, %35 ]
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 8000000
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, 8
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %48, %40
  br label %84

54:                                               ; preds = %5, %5
  %55 = load i32*, i32** @dtv_input, align 8
  %56 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %11, align 8
  %57 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = load i32*, i32** @dtv_input, align 8
  %64 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %11, align 8
  %65 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %12, align 4
  br label %75

69:                                               ; preds = %54
  %70 = load i32, i32* %8, align 4
  switch i32 %70, label %73 [
    i32 133, label %71
    i32 134, label %72
  ]

71:                                               ; preds = %69
  store i32 1, i32* %12, align 4
  br label %74

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %69, %72
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %73, %71
  br label %75

75:                                               ; preds = %74, %62
  %76 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @simple_set_rf_input(%struct.dvb_frontend* %76, i32* %78, i32* %80, i32 %81)
  br label %84

83:                                               ; preds = %5
  br label %84

84:                                               ; preds = %83, %75, %53, %30
  ret void
}

declare dso_local i32 @simple_set_rf_input(%struct.dvb_frontend*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
