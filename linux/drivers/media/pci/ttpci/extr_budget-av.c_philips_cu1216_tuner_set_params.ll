; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_philips_cu1216_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_philips_cu1216_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i64 }
%struct.dtv_frontend_properties = type { i32 }
%struct.budget = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@CU1216_IF = common dso_local global i32 0, align 4
@TUNER_MUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @philips_cu1216_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @philips_cu1216_tuner_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.budget*, align 8
  %6 = alloca [6 x i32], align 16
  %7 = alloca %struct.i2c_msg, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 2
  store %struct.dtv_frontend_properties* %11, %struct.dtv_frontend_properties** %4, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.budget*
  store %struct.budget* %17, %struct.budget** %5, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0
  store i32 96, i32* %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  store i32* %20, i32** %19, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 2
  store i32 24, i32* %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 36125000
  %27 = add nsw i32 %26, 31250
  %28 = sdiv i32 %27, 62500
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = ashr i32 %29, 8
  %31 = and i32 %30, 127
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  store i32 %31, i32* %32, align 16
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, 255
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 2
  store i32 206, i32* %36, align 8
  %37 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %38 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 150000000
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  br label %49

42:                                               ; preds = %1
  %43 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %44 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 445000000
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 2, i32 4
  br label %49

49:                                               ; preds = %42, %41
  %50 = phi i32 [ 1, %41 ], [ %48, %42 ]
  %51 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 3
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 4
  store i32 222, i32* %52, align 16
  %53 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 5
  store i32 32, i32* %53, align 4
  %54 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %55 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %56, align 8
  %58 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %49
  %60 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %61 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %62, align 8
  %64 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %65 = bitcast %struct.dvb_frontend* %64 to %struct.dvb_frontend.0*
  %66 = call i32 %63(%struct.dvb_frontend.0* %65, i32 1)
  br label %67

67:                                               ; preds = %59, %49
  %68 = load %struct.budget*, %struct.budget** %5, align 8
  %69 = getelementptr inbounds %struct.budget, %struct.budget* %68, i32 0, i32 0
  %70 = call i32 @i2c_transfer(i32* %69, %struct.i2c_msg* %7, i32 1)
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %142

75:                                               ; preds = %67
  %76 = load i64, i64* @I2C_M_RD, align 8
  %77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 3
  store i64 %76, i64* %77, align 8
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 2
  store i32 1, i32* %78, align 8
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %109, %75
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 20
  br i1 %81, label %82, label %112

82:                                               ; preds = %79
  %83 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %84 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %85, align 8
  %87 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %90 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %91, align 8
  %93 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %94 = bitcast %struct.dvb_frontend* %93 to %struct.dvb_frontend.0*
  %95 = call i32 %92(%struct.dvb_frontend.0* %94, i32 1)
  br label %96

96:                                               ; preds = %88, %82
  %97 = load %struct.budget*, %struct.budget** %5, align 8
  %98 = getelementptr inbounds %struct.budget, %struct.budget* %97, i32 0, i32 0
  %99 = call i32 @i2c_transfer(i32* %98, %struct.i2c_msg* %7, i32 1)
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %103 = load i32, i32* %102, align 16
  %104 = and i32 %103, 64
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %112

107:                                              ; preds = %101, %96
  %108 = call i32 @msleep(i32 10)
  br label %109

109:                                              ; preds = %107
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %79

112:                                              ; preds = %106, %79
  %113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 3
  store i64 0, i64* %113, align 8
  %114 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 2
  store i32 2, i32* %114, align 8
  %115 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 2
  %116 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1
  store i32* %115, i32** %116, align 8
  %117 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 2
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, -65
  store i32 %119, i32* %117, align 8
  %120 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %121 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %122, align 8
  %124 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %112
  %126 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %127 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %128, align 8
  %130 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %131 = bitcast %struct.dvb_frontend* %130 to %struct.dvb_frontend.0*
  %132 = call i32 %129(%struct.dvb_frontend.0* %131, i32 1)
  br label %133

133:                                              ; preds = %125, %112
  %134 = load %struct.budget*, %struct.budget** %5, align 8
  %135 = getelementptr inbounds %struct.budget, %struct.budget* %134, i32 0, i32 0
  %136 = call i32 @i2c_transfer(i32* %135, %struct.i2c_msg* %7, i32 1)
  %137 = icmp ne i32 %136, 1
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* @EIO, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %2, align 4
  br label %142

141:                                              ; preds = %133
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %138, %72
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
