; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget.c_grundig_29504_401_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget.c_grundig_29504_401_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { %struct.budget* }
%struct.budget = type { i32 }
%struct.dtv_frontend_properties = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @grundig_29504_401_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grundig_29504_401_tuner_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.budget*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 3
  store %struct.dtv_frontend_properties* %14, %struct.dtv_frontend_properties** %4, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.budget*, %struct.budget** %18, align 8
  store %struct.budget* %19, %struct.budget** %5, align 8
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %6, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32* %24, i32** %23, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  store i32 16, i32* %25, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 3
  store i32 0, i32* %27, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  br label %36

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  store i32 97, i32* %35, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %38 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 36125000, %39
  %41 = sdiv i32 %40, 166666
  store i32 %41, i32* %7, align 4
  store i32 136, i32* %8, align 4
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %43 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 175000000
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 2, i32* %9, align 4
  br label %69

47:                                               ; preds = %36
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 390000000
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 1, i32* %9, align 4
  br label %68

53:                                               ; preds = %47
  %54 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %55 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 470000000
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 2, i32* %9, align 4
  br label %67

59:                                               ; preds = %53
  %60 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %61 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 750000000
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 1, i32* %9, align 4
  br label %66

65:                                               ; preds = %59
  store i32 3, i32* %9, align 4
  br label %66

66:                                               ; preds = %65, %64
  br label %67

67:                                               ; preds = %66, %58
  br label %68

68:                                               ; preds = %67, %52
  br label %69

69:                                               ; preds = %68, %46
  %70 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %71 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 175000000
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 14, i32* %10, align 4
  br label %83

75:                                               ; preds = %69
  %76 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %78, 470000000
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 5, i32* %10, align 4
  br label %82

81:                                               ; preds = %75
  store i32 3, i32* %10, align 4
  br label %82

82:                                               ; preds = %81, %80
  br label %83

83:                                               ; preds = %82, %74
  %84 = load i32, i32* %7, align 4
  %85 = ashr i32 %84, 8
  %86 = and i32 %85, 127
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %86, i32* %87, align 16
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %88, 255
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %7, align 4
  %92 = ashr i32 %91, 10
  %93 = and i32 %92, 96
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %93, %94
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  store i32 %95, i32* %96, align 8
  %97 = load i32, i32* %9, align 4
  %98 = shl i32 %97, 6
  %99 = load i32, i32* %10, align 4
  %100 = or i32 %98, %99
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  store i32 %100, i32* %101, align 4
  %102 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %103 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %104, align 8
  %106 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %83
  %108 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %109 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %110, align 8
  %112 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %113 = bitcast %struct.dvb_frontend* %112 to %struct.dvb_frontend.0*
  %114 = call i32 %111(%struct.dvb_frontend.0* %113, i32 1)
  br label %115

115:                                              ; preds = %107, %83
  %116 = load %struct.budget*, %struct.budget** %5, align 8
  %117 = getelementptr inbounds %struct.budget, %struct.budget* %116, i32 0, i32 0
  %118 = call i32 @i2c_transfer(i32* %117, %struct.i2c_msg* %12, i32 1)
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %124

123:                                              ; preds = %115
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %123, %120
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
