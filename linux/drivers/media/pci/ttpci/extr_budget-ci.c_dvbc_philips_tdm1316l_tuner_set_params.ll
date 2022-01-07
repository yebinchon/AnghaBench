; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-ci.c_dvbc_philips_tdm1316l_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-ci.c_dvbc_philips_tdm1316l_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.TYPE_4__*, %struct.dtv_frontend_properties }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_4__ = type { i64 }
%struct.dtv_frontend_properties = type { i32 }
%struct.budget_ci = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dvbc_philips_tdm1316l_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbc_philips_tdm1316l_tuner_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.budget_ci*, align 8
  %6 = alloca [5 x i32], align 16
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
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32* %21, i32** %20, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1
  store i32 20, i32* %22, align 8
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
  %31 = add nsw i32 %30, 36125000
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 87000000
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %156

37:                                               ; preds = %1
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 130000000
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 3, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %84

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 160000000
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 5, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %83

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 200000000
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 6, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %82

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 290000000
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 3, i32* %10, align 4
  store i32 2, i32* %9, align 4
  br label %81

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 420000000
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 5, i32* %10, align 4
  store i32 2, i32* %9, align 4
  br label %80

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 480000000
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 6, i32* %10, align 4
  store i32 2, i32* %9, align 4
  br label %79

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 620000000
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 3, i32* %10, align 4
  store i32 4, i32* %9, align 4
  br label %78

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 830000000
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 5, i32* %10, align 4
  store i32 4, i32* %9, align 4
  br label %77

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 895000000
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 7, i32* %10, align 4
  store i32 4, i32* %9, align 4
  br label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %156

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
  store i32 1, i32* %11, align 4
  %86 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %87 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 36125000
  %90 = add nsw i32 %89, 31250
  %91 = sdiv i32 %90, 62500
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = ashr i32 %92, 8
  %94 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 %93, i32* %94, align 16
  %95 = load i32, i32* %8, align 4
  %96 = and i32 %95, 255
  %97 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  store i32 %96, i32* %97, align 4
  %98 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  store i32 200, i32* %98, align 8
  %99 = load i32, i32* %10, align 4
  %100 = shl i32 %99, 5
  %101 = load i32, i32* %11, align 4
  %102 = shl i32 %101, 3
  %103 = or i32 %100, %102
  %104 = load i32, i32* %9, align 4
  %105 = or i32 %103, %104
  %106 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  store i32 %105, i32* %106, align 4
  %107 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  store i32 128, i32* %107, align 16
  %108 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %109 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %110, align 8
  %112 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %85
  %114 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %115 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %116, align 8
  %118 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %119 = bitcast %struct.dvb_frontend* %118 to %struct.dvb_frontend.0*
  %120 = call i32 %117(%struct.dvb_frontend.0* %119, i32 1)
  br label %121

121:                                              ; preds = %113, %85
  %122 = load %struct.budget_ci*, %struct.budget_ci** %5, align 8
  %123 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = call i32 @i2c_transfer(i32* %124, %struct.i2c_msg* %7, i32 1)
  %126 = icmp ne i32 %125, 1
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %156

130:                                              ; preds = %121
  %131 = call i32 @msleep(i32 50)
  %132 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %133 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %134, align 8
  %136 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %135, null
  br i1 %136, label %137, label %145

137:                                              ; preds = %130
  %138 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %139 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %140, align 8
  %142 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %143 = bitcast %struct.dvb_frontend* %142 to %struct.dvb_frontend.0*
  %144 = call i32 %141(%struct.dvb_frontend.0* %143, i32 1)
  br label %145

145:                                              ; preds = %137, %130
  %146 = load %struct.budget_ci*, %struct.budget_ci** %5, align 8
  %147 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = call i32 @i2c_transfer(i32* %148, %struct.i2c_msg* %7, i32 1)
  %150 = icmp ne i32 %149, 1
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load i32, i32* @EIO, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %2, align 4
  br label %156

154:                                              ; preds = %145
  %155 = call i32 @msleep(i32 1)
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %154, %151, %127, %73, %34
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
