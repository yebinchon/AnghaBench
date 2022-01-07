; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_vp2033.c_tda1002x_cu1216_tuner_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_vp2033.c_tda1002x_cu1216_tuner_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { %struct.mantis_pci* }
%struct.mantis_pci = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }
%struct.dtv_frontend_properties = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@CU1216_IF = common dso_local global i32 0, align 4
@TUNER_MUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda1002x_cu1216_tuner_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda1002x_cu1216_tuner_set(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.mantis_pci*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca [6 x i32], align 16
  %8 = alloca %struct.i2c_msg, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 2
  store %struct.dtv_frontend_properties* %12, %struct.dtv_frontend_properties** %4, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.mantis_pci*, %struct.mantis_pci** %16, align 8
  store %struct.mantis_pci* %17, %struct.mantis_pci** %5, align 8
  %18 = load %struct.mantis_pci*, %struct.mantis_pci** %5, align 8
  %19 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %18, i32 0, i32 0
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  store i32 96, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  store i32* %22, i32** %21, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32 24, i32* %23, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 36125000
  %29 = add nsw i32 %28, 31250
  %30 = sdiv i32 %29, 62500
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 127
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  store i32 %33, i32* %34, align 16
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, 255
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  store i32 206, i32* %38, align 8
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %40 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 150000000
  br i1 %42, label %43, label %44

43:                                               ; preds = %1
  br label %51

44:                                               ; preds = %1
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 445000000
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 2, i32 4
  br label %51

51:                                               ; preds = %44, %43
  %52 = phi i32 [ 1, %43 ], [ %50, %44 ]
  %53 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 3
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 4
  store i32 222, i32* %54, align 16
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 5
  store i32 32, i32* %55, align 4
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %57 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %58, align 8
  %60 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %51
  %62 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %63 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %64, align 8
  %66 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %67 = bitcast %struct.dvb_frontend* %66 to %struct.dvb_frontend.0*
  %68 = call i32 %65(%struct.dvb_frontend.0* %67, i32 1)
  br label %69

69:                                               ; preds = %61, %51
  %70 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %71 = call i32 @i2c_transfer(%struct.i2c_adapter* %70, %struct.i2c_msg* %8, i32 1)
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %141

76:                                               ; preds = %69
  %77 = load i64, i64* @I2C_M_RD, align 8
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  store i64 %77, i64* %78, align 8
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32 1, i32* %79, align 8
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %109, %76
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 20
  br i1 %82, label %83, label %112

83:                                               ; preds = %80
  %84 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %85 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %86, align 8
  %88 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %91 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %92, align 8
  %94 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %95 = bitcast %struct.dvb_frontend* %94 to %struct.dvb_frontend.0*
  %96 = call i32 %93(%struct.dvb_frontend.0* %95, i32 1)
  br label %97

97:                                               ; preds = %89, %83
  %98 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %99 = call i32 @i2c_transfer(%struct.i2c_adapter* %98, %struct.i2c_msg* %8, i32 1)
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %103 = load i32, i32* %102, align 16
  %104 = and i32 %103, 64
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %112

107:                                              ; preds = %101, %97
  %108 = call i32 @msleep(i32 10)
  br label %109

109:                                              ; preds = %107
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %80

112:                                              ; preds = %106, %80
  %113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  store i64 0, i64* %113, align 8
  %114 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32 2, i32* %114, align 8
  %115 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  %116 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  store i32* %115, i32** %116, align 8
  %117 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
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
  %134 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %135 = call i32 @i2c_transfer(%struct.i2c_adapter* %134, %struct.i2c_msg* %8, i32 1)
  %136 = icmp ne i32 %135, 1
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32, i32* @EIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %141

140:                                              ; preds = %133
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %140, %137, %73
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
