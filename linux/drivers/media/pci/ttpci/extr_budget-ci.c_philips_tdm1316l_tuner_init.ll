; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-ci.c_philips_tdm1316l_tuner_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-ci.c_philips_tdm1316l_tuner_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_4__ = type { i64 }
%struct.budget_ci = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@philips_tdm1316l_tuner_init.td1316_init = internal global [4 x i32] [i32 11, i32 245, i32 133, i32 171], align 16
@philips_tdm1316l_tuner_init.disable_mc44BC374c = internal global [4 x i32] [i32 29, i32 116, i32 160, i32 104], align 16
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @philips_tdm1316l_tuner_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @philips_tdm1316l_tuner_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.budget_ci*, align 8
  %5 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.budget_ci*
  store %struct.budget_ci* %11, %struct.budget_ci** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 0
  %13 = load %struct.budget_ci*, %struct.budget_ci** %4, align 8
  %14 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @philips_tdm1316l_tuner_init.td1316_init, i64 0, i64 0), i32** %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 2
  store i32 16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 3
  store i32 0, i32* %18, align 4
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %27, align 8
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %30 = bitcast %struct.dvb_frontend* %29 to %struct.dvb_frontend.0*
  %31 = call i32 %28(%struct.dvb_frontend.0* %30, i32 1)
  br label %32

32:                                               ; preds = %24, %1
  %33 = load %struct.budget_ci*, %struct.budget_ci** %4, align 8
  %34 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @i2c_transfer(i32* %35, %struct.i2c_msg* %5, i32 1)
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %85

41:                                               ; preds = %32
  %42 = call i32 @msleep(i32 1)
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 0
  store i32 101, i32* %43, align 8
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @philips_tdm1316l_tuner_init.disable_mc44BC374c, i64 0, i64 0), i32** %44, align 8
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 2
  store i32 16, i32* %45, align 8
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %47 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %48, align 8
  %50 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %41
  %52 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %53 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %54, align 8
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %57 = bitcast %struct.dvb_frontend* %56 to %struct.dvb_frontend.0*
  %58 = call i32 %55(%struct.dvb_frontend.0* %57, i32 1)
  br label %59

59:                                               ; preds = %51, %41
  %60 = load %struct.budget_ci*, %struct.budget_ci** %4, align 8
  %61 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = call i32 @i2c_transfer(i32* %62, %struct.i2c_msg* %5, i32 1)
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %84

65:                                               ; preds = %59
  %66 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %67 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %68, align 8
  %70 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %73 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %74, align 8
  %76 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %77 = bitcast %struct.dvb_frontend* %76 to %struct.dvb_frontend.0*
  %78 = call i32 %75(%struct.dvb_frontend.0* %77, i32 1)
  br label %79

79:                                               ; preds = %71, %65
  %80 = load %struct.budget_ci*, %struct.budget_ci** %4, align 8
  %81 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = call i32 @i2c_transfer(i32* %82, %struct.i2c_msg* %5, i32 1)
  br label %84

84:                                               ; preds = %79, %59
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %38
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
