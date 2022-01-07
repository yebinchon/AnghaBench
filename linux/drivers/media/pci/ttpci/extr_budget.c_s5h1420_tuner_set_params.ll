; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget.c_s5h1420_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget.c_s5h1420_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i64 }
%struct.dtv_frontend_properties = type { i32 }
%struct.budget = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @s5h1420_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5h1420_tuner_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.budget*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 2
  store %struct.dtv_frontend_properties* %10, %struct.dtv_frontend_properties** %4, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.budget*
  store %struct.budget* %16, %struct.budget** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  store i32 97, i32* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32* %19, i32** %18, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32 16, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %23 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 1000
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 127
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %28, i32* %29, align 16
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 194, i32* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 1450
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 0, i32* %37, align 4
  br label %52

38:                                               ; preds = %1
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 1850
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 64, i32* %42, align 4
  br label %51

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 2000
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 128, i32* %47, align 4
  br label %50

48:                                               ; preds = %43
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 192, i32* %49, align 4
  br label %50

50:                                               ; preds = %48, %46
  br label %51

51:                                               ; preds = %50, %41
  br label %52

52:                                               ; preds = %51, %36
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %54 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %55, align 8
  %57 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %60 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %61, align 8
  %63 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %64 = bitcast %struct.dvb_frontend* %63 to %struct.dvb_frontend.0*
  %65 = call i32 %62(%struct.dvb_frontend.0* %64, i32 1)
  br label %66

66:                                               ; preds = %58, %52
  %67 = load %struct.budget*, %struct.budget** %5, align 8
  %68 = getelementptr inbounds %struct.budget, %struct.budget* %67, i32 0, i32 0
  %69 = call i32 @i2c_transfer(i32* %68, %struct.i2c_msg* %8, i32 1)
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %75

74:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %71
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
