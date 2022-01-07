; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_microtune_mt7202dtf_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_microtune_mt7202dtf_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i64 }
%struct.dtv_frontend_properties = type { i32 }
%struct.dvb_bt8xx_card = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @microtune_mt7202dtf_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @microtune_mt7202dtf_tuner_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca %struct.dvb_bt8xx_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 2
  store %struct.dtv_frontend_properties* %12, %struct.dtv_frontend_properties** %3, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.dvb_bt8xx_card*
  store %struct.dvb_bt8xx_card* %18, %struct.dvb_bt8xx_card** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  store i32 96, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32* %21, i32** %20, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  store i32 16, i32* %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %25 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 36000000, %26
  %28 = add nsw i32 %27, 83333
  %29 = sdiv i32 %28, 166666
  store i32 %29, i32* %9, align 4
  store i32 136, i32* %5, align 4
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %31 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 175000000
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  store i32 2, i32* %6, align 4
  br label %57

35:                                               ; preds = %1
  %36 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %37 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 390000000
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 1, i32* %6, align 4
  br label %56

41:                                               ; preds = %35
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %43 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 470000000
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 2, i32* %6, align 4
  br label %55

47:                                               ; preds = %41
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 750000000
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 2, i32* %6, align 4
  br label %54

53:                                               ; preds = %47
  store i32 3, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %52
  br label %55

55:                                               ; preds = %54, %46
  br label %56

56:                                               ; preds = %55, %40
  br label %57

57:                                               ; preds = %56, %34
  %58 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %59 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 175000000
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 14, i32* %7, align 4
  br label %71

63:                                               ; preds = %57
  %64 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %65 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %66, 470000000
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 5, i32* %7, align 4
  br label %70

69:                                               ; preds = %63
  store i32 3, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %68
  br label %71

71:                                               ; preds = %70, %62
  %72 = load i32, i32* %9, align 4
  %73 = ashr i32 %72, 8
  %74 = and i32 %73, 127
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %74, i32* %75, align 16
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, 255
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %9, align 4
  %80 = ashr i32 %79, 10
  %81 = and i32 %80, 96
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %81, %82
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %83, i32* %84, align 8
  %85 = load i32, i32* %6, align 4
  %86 = shl i32 %85, 6
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %86, %87
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %88, i32* %89, align 4
  %90 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %91 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %92, align 8
  %94 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %71
  %96 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %97 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %98, align 8
  %100 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %101 = bitcast %struct.dvb_frontend* %100 to %struct.dvb_frontend.0*
  %102 = call i32 %99(%struct.dvb_frontend.0* %101, i32 1)
  br label %103

103:                                              ; preds = %95, %71
  %104 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %105 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @i2c_transfer(i32 %106, %struct.i2c_msg* %10, i32 1)
  %108 = load i32, i32* %9, align 4
  %109 = mul nsw i32 %108, 166666
  %110 = sub nsw i32 %109, 36000000
  ret i32 %110
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
