; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-ci.c_philips_tdm1316l_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-ci.c_philips_tdm1316l_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.TYPE_4__*, %struct.dtv_frontend_properties }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_4__ = type { i64 }
%struct.dtv_frontend_properties = type { i32, i32 }
%struct.budget_ci = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @philips_tdm1316l_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @philips_tdm1316l_tuner_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.budget_ci*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca %struct.i2c_msg, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 2
  store %struct.dtv_frontend_properties* %13, %struct.dtv_frontend_properties** %4, align 8
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.budget_ci*
  store %struct.budget_ci* %19, %struct.budget_ci** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32* %21, i32** %20, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1
  store i32 16, i32* %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 3
  %25 = load %struct.budget_ci*, %struct.budget_ci** %5, align 8
  %26 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 8
  store i32 0, i32* %8, align 4
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %29 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 36130000
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 87000000
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %180

37:                                               ; preds = %1
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 130000000
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 3, i32* %10, align 4
  br label %84

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 160000000
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 5, i32* %10, align 4
  br label %83

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 200000000
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 6, i32* %10, align 4
  br label %82

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 290000000
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 3, i32* %10, align 4
  br label %81

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 420000000
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 5, i32* %10, align 4
  br label %80

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 480000000
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 6, i32* %10, align 4
  br label %79

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 620000000
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 3, i32* %10, align 4
  br label %78

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 830000000
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 5, i32* %10, align 4
  br label %77

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 895000000
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 7, i32* %10, align 4
  br label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %180

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76, %68
  br label %78

78:                                               ; preds = %77, %64
  br label %79

79:                                               ; preds = %78, %60
  br label %80

80:                                               ; preds = %79, %56
  br label %81

81:                                               ; preds = %80, %52
  br label %82

82:                                               ; preds = %81, %48
  br label %83

83:                                               ; preds = %82, %44
  br label %84

84:                                               ; preds = %83, %40
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %87 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 49000000
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %180

93:                                               ; preds = %85
  %94 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %95 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %96, 159000000
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 1, i32* %9, align 4
  br label %116

99:                                               ; preds = %93
  %100 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %101 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %102, 444000000
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 2, i32* %9, align 4
  br label %115

105:                                              ; preds = %99
  %106 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %107 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %108, 861000000
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 4, i32* %9, align 4
  br label %114

111:                                              ; preds = %105
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %180

114:                                              ; preds = %110
  br label %115

115:                                              ; preds = %114, %104
  br label %116

116:                                              ; preds = %115, %98
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %119 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %130 [
    i32 6000000, label %121
    i32 7000000, label %124
    i32 8000000, label %127
  ]

121:                                              ; preds = %117
  %122 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %123 = call i32 @tda1004x_writereg(%struct.dvb_frontend* %122, i32 12, i32 20)
  store i32 0, i32* %11, align 4
  br label %133

124:                                              ; preds = %117
  %125 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %126 = call i32 @tda1004x_writereg(%struct.dvb_frontend* %125, i32 12, i32 128)
  store i32 0, i32* %11, align 4
  br label %133

127:                                              ; preds = %117
  %128 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %129 = call i32 @tda1004x_writereg(%struct.dvb_frontend* %128, i32 12, i32 20)
  store i32 1, i32* %11, align 4
  br label %133

130:                                              ; preds = %117
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %180

133:                                              ; preds = %127, %124, %121
  %134 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %135 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = sdiv i32 %136, 1000
  %138 = mul nsw i32 %137, 6
  %139 = add nsw i32 %138, 217280
  %140 = sdiv i32 %139, 1000
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = ashr i32 %141, 8
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %142, i32* %143, align 16
  %144 = load i32, i32* %8, align 4
  %145 = and i32 %144, 255
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %145, i32* %146, align 4
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 202, i32* %147, align 8
  %148 = load i32, i32* %10, align 4
  %149 = shl i32 %148, 5
  %150 = load i32, i32* %11, align 4
  %151 = shl i32 %150, 3
  %152 = or i32 %149, %151
  %153 = load i32, i32* %9, align 4
  %154 = or i32 %152, %153
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %154, i32* %155, align 4
  %156 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %157 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %158, align 8
  %160 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %159, null
  br i1 %160, label %161, label %169

161:                                              ; preds = %133
  %162 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %163 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %164, align 8
  %166 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %167 = bitcast %struct.dvb_frontend* %166 to %struct.dvb_frontend.0*
  %168 = call i32 %165(%struct.dvb_frontend.0* %167, i32 1)
  br label %169

169:                                              ; preds = %161, %133
  %170 = load %struct.budget_ci*, %struct.budget_ci** %5, align 8
  %171 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = call i32 @i2c_transfer(i32* %172, %struct.i2c_msg* %7, i32 1)
  %174 = icmp ne i32 %173, 1
  br i1 %174, label %175, label %178

175:                                              ; preds = %169
  %176 = load i32, i32* @EIO, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %2, align 4
  br label %180

178:                                              ; preds = %169
  %179 = call i32 @msleep(i32 1)
  store i32 0, i32* %2, align 4
  br label %180

180:                                              ; preds = %178, %175, %130, %111, %90, %73, %34
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @tda1004x_writereg(%struct.dvb_frontend*, i32, i32) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
