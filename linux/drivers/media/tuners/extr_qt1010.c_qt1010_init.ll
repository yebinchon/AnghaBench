; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_qt1010.c_qt1010_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_qt1010.c_qt1010_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.dtv_frontend_properties, %struct.qt1010_priv* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.dtv_frontend_properties = type { i32 }
%struct.qt1010_priv = type { i64, i64, i64 }

@qt1010_init.i2c_data = internal constant [34 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 128, i32 1, i32 128, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 13, i32 132, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 14, i32 183, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 42, i32 35, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 44, i32 220, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 130, i32 37, i32 64, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 130, i32 129, i32 255, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 43, i32 112, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 42, i32 35, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 130, i32 38, i32 8, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 130, i32 130, i32 255, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 5, i32 20, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 6, i32 68, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 7, i32 40, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 8, i32 11, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 17, i32 253, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 130, i32 34, i32 13, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 130, i32 208, i32 255, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 6, i32 64, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 22, i32 240, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 2, i32 56, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 3, i32 24, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 32, i32 224, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 130, i32 31, i32 32, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 130, i32 132, i32 255, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 129, i32 32, i32 32, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 3, i32 25, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 2, i32 63, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 33, i32 83, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 129, i32 33, i32 255, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 17, i32 253, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 5, i32 52, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 6, i32 68, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 8, i32 8, i32 0, i32 0, i32 0 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @qt1010_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt1010_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.qt1010_priv*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 2
  %12 = load %struct.qt1010_priv*, %struct.qt1010_priv** %11, align 8
  store %struct.qt1010_priv* %12, %struct.qt1010_priv** %4, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  store %struct.dtv_frontend_properties* %14, %struct.dtv_frontend_properties** %5, align 8
  store i32 0, i32* %6, align 4
  store i64* null, i64** %9, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %23, align 8
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %26 = bitcast %struct.dvb_frontend* %25 to %struct.dvb_frontend.0*
  %27 = call i32 %24(%struct.dvb_frontend.0* %26, i32 1)
  br label %28

28:                                               ; preds = %20, %1
  store i64 0, i64* %7, align 8
  br label %29

29:                                               ; preds = %118, %28
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* getelementptr inbounds ([34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* @qt1010_init.i2c_data, i64 0, i64 0))
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %121

33:                                               ; preds = %29
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds [34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* @qt1010_init.i2c_data, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %112 [
    i32 128, label %38
    i32 129, label %49
    i32 130, label %67
  ]

38:                                               ; preds = %33
  %39 = load %struct.qt1010_priv*, %struct.qt1010_priv** %4, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds [34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* @qt1010_init.i2c_data, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds [34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* @qt1010_init.i2c_data, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @qt1010_writereg(%struct.qt1010_priv* %39, i32 %43, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %112

49:                                               ; preds = %33
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds [34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* @qt1010_init.i2c_data, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 32
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.qt1010_priv*, %struct.qt1010_priv** %4, align 8
  %57 = getelementptr inbounds %struct.qt1010_priv, %struct.qt1010_priv* %56, i32 0, i32 0
  store i64* %57, i64** %9, align 8
  br label %59

58:                                               ; preds = %49
  store i64* %8, i64** %9, align 8
  br label %59

59:                                               ; preds = %58, %55
  %60 = load %struct.qt1010_priv*, %struct.qt1010_priv** %4, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds [34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* @qt1010_init.i2c_data, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load i64*, i64** %9, align 8
  %66 = call i32 @qt1010_readreg(%struct.qt1010_priv* %60, i32 %64, i64* %65)
  store i32 %66, i32* %6, align 4
  br label %112

67:                                               ; preds = %33
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds [34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* @qt1010_init.i2c_data, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 37
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.qt1010_priv*, %struct.qt1010_priv** %4, align 8
  %75 = getelementptr inbounds %struct.qt1010_priv, %struct.qt1010_priv* %74, i32 0, i32 1
  store i64* %75, i64** %9, align 8
  br label %87

76:                                               ; preds = %67
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds [34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* @qt1010_init.i2c_data, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 31
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load %struct.qt1010_priv*, %struct.qt1010_priv** %4, align 8
  %84 = getelementptr inbounds %struct.qt1010_priv, %struct.qt1010_priv* %83, i32 0, i32 2
  store i64* %84, i64** %9, align 8
  br label %86

85:                                               ; preds = %76
  store i64* %8, i64** %9, align 8
  br label %86

86:                                               ; preds = %85, %82
  br label %87

87:                                               ; preds = %86, %73
  %88 = load i64, i64* %7, align 8
  %89 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* getelementptr inbounds ([34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* @qt1010_init.i2c_data, i64 0, i64 0))
  %90 = sub i64 %89, 1
  %91 = icmp uge i64 %88, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @BUG_ON(i32 %92)
  %94 = load %struct.qt1010_priv*, %struct.qt1010_priv** %4, align 8
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %95, 1
  %97 = getelementptr inbounds [34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* @qt1010_init.i2c_data, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load i64, i64* %7, align 8
  %101 = getelementptr inbounds [34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* @qt1010_init.i2c_data, i64 0, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %7, align 8
  %105 = getelementptr inbounds [34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* @qt1010_init.i2c_data, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load i64*, i64** %9, align 8
  %109 = call i32 @qt1010_init_meas1(%struct.qt1010_priv* %94, i32 %99, i32 %103, i32 %107, i64* %108)
  store i32 %109, i32* %6, align 4
  %110 = load i64, i64* %7, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %7, align 8
  br label %112

112:                                              ; preds = %33, %87, %59, %38
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %147

117:                                              ; preds = %112
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %7, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %7, align 8
  br label %29

121:                                              ; preds = %29
  store i64 49, i64* %7, align 8
  br label %122

122:                                              ; preds = %133, %121
  %123 = load i64, i64* %7, align 8
  %124 = icmp ult i64 %123, 58
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  %126 = load %struct.qt1010_priv*, %struct.qt1010_priv** %4, align 8
  %127 = load i64, i64* %7, align 8
  %128 = call i32 @qt1010_init_meas2(%struct.qt1010_priv* %126, i64 %127, i64* %8)
  store i32 %128, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %2, align 4
  br label %147

132:                                              ; preds = %125
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* %7, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %7, align 8
  br label %122

136:                                              ; preds = %122
  %137 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %138 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %136
  %142 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %143 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %142, i32 0, i32 0
  store i32 545000000, i32* %143, align 4
  br label %144

144:                                              ; preds = %141, %136
  %145 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %146 = call i32 @qt1010_set_params(%struct.dvb_frontend* %145)
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %144, %130, %115
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @qt1010_writereg(%struct.qt1010_priv*, i32, i32) #1

declare dso_local i32 @qt1010_readreg(%struct.qt1010_priv*, i32, i64*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @qt1010_init_meas1(%struct.qt1010_priv*, i32, i32, i32, i64*) #1

declare dso_local i32 @qt1010_init_meas2(%struct.qt1010_priv*, i64, i64*) #1

declare dso_local i32 @qt1010_set_params(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
