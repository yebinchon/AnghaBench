; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-ci.c_philips_su1278_tt_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-ci.c_philips_su1278_tt_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.TYPE_4__*, %struct.dtv_frontend_properties }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_4__ = type { i64 }
%struct.dtv_frontend_properties = type { i32, i32 }
%struct.budget_ci = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @philips_su1278_tt_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @philips_su1278_tt_tuner_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.budget_ci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 2
  store %struct.dtv_frontend_properties* %10, %struct.dtv_frontend_properties** %4, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.budget_ci*
  store %struct.budget_ci* %16, %struct.budget_ci** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  store i32 96, i32* %17, align 8
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
  %25 = icmp slt i32 %24, 950000
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %28 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 2150000
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %1
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %124

34:                                               ; preds = %26
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %36 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 499
  %39 = sdiv i32 %38, 500
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %40, 8
  %42 = and i32 %41, 127
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %42, i32* %43, align 16
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, 255
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 98304
  %49 = ashr i32 %48, 10
  %50 = or i32 128, %49
  %51 = or i32 %50, 2
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 32, i32* %53, align 4
  %54 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %55 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 4000000
  br i1 %57, label %58, label %62

58:                                               ; preds = %34
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %58, %34
  %63 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %64 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 1250000
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %68, align 4
  br label %100

70:                                               ; preds = %62
  %71 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %72 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %73, 1550000
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, 64
  store i32 %78, i32* %76, align 4
  br label %99

79:                                               ; preds = %70
  %80 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %81 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %82, 2050000
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, 128
  store i32 %87, i32* %85, align 4
  br label %98

88:                                               ; preds = %79
  %89 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %90 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 2150000
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, 192
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %93, %88
  br label %98

98:                                               ; preds = %97, %84
  br label %99

99:                                               ; preds = %98, %75
  br label %100

100:                                              ; preds = %99, %67
  %101 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %102 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %103, align 8
  %105 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %100
  %107 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %108 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %109, align 8
  %111 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %112 = bitcast %struct.dvb_frontend* %111 to %struct.dvb_frontend.0*
  %113 = call i32 %110(%struct.dvb_frontend.0* %112, i32 1)
  br label %114

114:                                              ; preds = %106, %100
  %115 = load %struct.budget_ci*, %struct.budget_ci** %5, align 8
  %116 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = call i32 @i2c_transfer(i32* %117, %struct.i2c_msg* %8, i32 1)
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %124

123:                                              ; preds = %114
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %123, %120, %31
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
