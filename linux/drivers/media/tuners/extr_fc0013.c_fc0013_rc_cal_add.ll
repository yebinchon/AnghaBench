; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_fc0013.c_fc0013_rc_cal_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_fc0013.c_fc0013_rc_cal_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.fc0013_priv* }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.fc0013_priv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc0013_rc_cal_add(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fc0013_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1
  %11 = load %struct.fc0013_priv*, %struct.fc0013_priv** %10, align 8
  store %struct.fc0013_priv* %11, %struct.fc0013_priv** %5, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %20, align 8
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %23 = bitcast %struct.dvb_frontend* %22 to %struct.dvb_frontend.0*
  %24 = call i32 %21(%struct.dvb_frontend.0* %23, i32 1)
  br label %25

25:                                               ; preds = %17, %2
  %26 = load %struct.fc0013_priv*, %struct.fc0013_priv** %5, align 8
  %27 = call i32 @fc0013_writereg(%struct.fc0013_priv* %26, i32 16, i32 0)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %66

31:                                               ; preds = %25
  %32 = load %struct.fc0013_priv*, %struct.fc0013_priv** %5, align 8
  %33 = call i32 @fc0013_readreg(%struct.fc0013_priv* %32, i32 16, i32* %7)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %66

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 15
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load %struct.fc0013_priv*, %struct.fc0013_priv** %5, align 8
  %44 = call i32 @fc0013_writereg(%struct.fc0013_priv* %43, i32 13, i32 17)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %66

48:                                               ; preds = %37
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %49, 15
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.fc0013_priv*, %struct.fc0013_priv** %5, align 8
  %53 = call i32 @fc0013_writereg(%struct.fc0013_priv* %52, i32 16, i32 15)
  store i32 %53, i32* %6, align 4
  br label %65

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.fc0013_priv*, %struct.fc0013_priv** %5, align 8
  %59 = call i32 @fc0013_writereg(%struct.fc0013_priv* %58, i32 16, i32 0)
  store i32 %59, i32* %6, align 4
  br label %64

60:                                               ; preds = %54
  %61 = load %struct.fc0013_priv*, %struct.fc0013_priv** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @fc0013_writereg(%struct.fc0013_priv* %61, i32 16, i32 %62)
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %57
  br label %65

65:                                               ; preds = %64, %51
  br label %66

66:                                               ; preds = %65, %47, %36, %30
  %67 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %68 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %69, align 8
  %71 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %74 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %75, align 8
  %77 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %78 = bitcast %struct.dvb_frontend* %77 to %struct.dvb_frontend.0*
  %79 = call i32 %76(%struct.dvb_frontend.0* %78, i32 0)
  br label %80

80:                                               ; preds = %72, %66
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @fc0013_writereg(%struct.fc0013_priv*, i32, i32) #1

declare dso_local i32 @fc0013_readreg(%struct.fc0013_priv*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
