; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_nexusca_stv0297_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_nexusca_stv0297_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { %struct.av7110* }
%struct.av7110 = type { i32 }
%struct.dtv_frontend_properties = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"nexusca: pll transfer failed!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @nexusca_stv0297_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexusca_stv0297_tuner_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.av7110*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca %struct.i2c_msg, align 8
  %9 = alloca %struct.i2c_msg, align 8
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 2
  store %struct.dtv_frontend_properties* %12, %struct.dtv_frontend_properties** %4, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.av7110*, %struct.av7110** %16, align 8
  store %struct.av7110* %17, %struct.av7110** %5, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  store i32 99, i32* %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32* %20, i32** %19, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32 16, i32* %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  store i32 99, i32* %23, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32* %25, i32** %24, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i32 1, i32* %26, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  %28 = load i32, i32* @I2C_M_RD, align 4
  store i32 %28, i32* %27, align 4
  %29 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %30 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 36150000
  %33 = add nsw i32 %32, 31250
  %34 = sdiv i32 %33, 62500
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 127
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %37, i32* %38, align 16
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 255
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 206, i32* %42, align 8
  %43 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %44 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 45000000
  br i1 %46, label %47, label %50

47:                                               ; preds = %1
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %136

50:                                               ; preds = %1
  %51 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %52 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 137000000
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 1, i32* %56, align 4
  br label %76

57:                                               ; preds = %50
  %58 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %59 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 403000000
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 2, i32* %63, align 4
  br label %75

64:                                               ; preds = %57
  %65 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %66 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 860000000
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 4, i32* %70, align 4
  br label %74

71:                                               ; preds = %64
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %136

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74, %62
  br label %76

76:                                               ; preds = %75, %55
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %79 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %80, align 8
  %82 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %85 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %86, align 8
  %88 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %89 = bitcast %struct.dvb_frontend* %88 to %struct.dvb_frontend.0*
  %90 = call i32 %87(%struct.dvb_frontend.0* %89, i32 1)
  br label %91

91:                                               ; preds = %83, %77
  %92 = load %struct.av7110*, %struct.av7110** %5, align 8
  %93 = getelementptr inbounds %struct.av7110, %struct.av7110* %92, i32 0, i32 0
  %94 = call i32 @i2c_transfer(i32* %93, %struct.i2c_msg* %8, i32 1)
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %136

100:                                              ; preds = %91
  store i32 0, i32* %10, align 4
  br label %101

101:                                              ; preds = %132, %100
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %102, 20
  br i1 %103, label %104, label %135

104:                                              ; preds = %101
  %105 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %106 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %107, align 8
  %109 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %104
  %111 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %112 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %113, align 8
  %115 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %116 = bitcast %struct.dvb_frontend* %115 to %struct.dvb_frontend.0*
  %117 = call i32 %114(%struct.dvb_frontend.0* %116, i32 1)
  br label %118

118:                                              ; preds = %110, %104
  %119 = load %struct.av7110*, %struct.av7110** %5, align 8
  %120 = getelementptr inbounds %struct.av7110, %struct.av7110* %119, i32 0, i32 0
  %121 = call i32 @i2c_transfer(i32* %120, %struct.i2c_msg* %9, i32 1)
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %125 = load i32, i32* %124, align 16
  %126 = and i32 %125, 64
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %135

129:                                              ; preds = %123
  br label %130

130:                                              ; preds = %129, %118
  %131 = call i32 @msleep(i32 10)
  br label %132

132:                                              ; preds = %130
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %101

135:                                              ; preds = %128, %101
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %96, %71, %47
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
