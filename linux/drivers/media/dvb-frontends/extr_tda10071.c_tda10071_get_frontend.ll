; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.tda10071_dev* }
%struct.tda10071_dev = type { i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32 }

@FE_HAS_LOCK = common dso_local global i32 0, align 4
@TDA10071_MODCOD = common dso_local global %struct.TYPE_3__* null, align 8
@INVERSION_ON = common dso_local global i32 0, align 4
@INVERSION_OFF = common dso_local global i32 0, align 4
@PILOT_OFF = common dso_local global i32 0, align 4
@PILOT_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @tda10071_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10071_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.tda10071_dev*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [5 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.tda10071_dev*, %struct.tda10071_dev** %13, align 8
  store %struct.tda10071_dev* %14, %struct.tda10071_dev** %6, align 8
  %15 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %16 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %15, i32 0, i32 3
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %7, align 8
  %18 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %19 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %24 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @FE_HAS_LOCK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22, %2
  store i32 0, i32* %8, align 4
  br label %150

30:                                               ; preds = %22
  %31 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %32 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %35 = call i32 @regmap_bulk_read(i32 %33, i32 48, i32* %34, i32 5)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %150

39:                                               ; preds = %30
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %41 = load i32, i32* %40, align 16
  %42 = and i32 %41, 63
  store i32 %42, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %83, %39
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TDA10071_MODCOD, align 8
  %46 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %45)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %86

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TDA10071_MODCOD, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %49, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %48
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TDA10071_MODCOD, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %65 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TDA10071_MODCOD, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TDA10071_MODCOD, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %81 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %57, %48
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %43

86:                                               ; preds = %43
  %87 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 0
  %90 = and i32 %89, 1
  switch i32 %90, label %99 [
    i32 0, label %91
    i32 1, label %95
  ]

91:                                               ; preds = %86
  %92 = load i32, i32* @INVERSION_ON, align 4
  %93 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %94 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  br label %99

95:                                               ; preds = %86
  %96 = load i32, i32* @INVERSION_OFF, align 4
  %97 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %98 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %86, %95, %91
  %100 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 7
  %103 = and i32 %102, 1
  switch i32 %103, label %112 [
    i32 0, label %104
    i32 1, label %108
  ]

104:                                              ; preds = %99
  %105 = load i32, i32* @PILOT_OFF, align 4
  %106 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %107 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  br label %112

108:                                              ; preds = %99
  %109 = load i32, i32* @PILOT_ON, align 4
  %110 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %111 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %99, %108, %104
  %113 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 2
  %114 = load i32, i32* %113, align 8
  %115 = shl i32 %114, 16
  %116 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 8
  %119 = or i32 %115, %118
  %120 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 4
  %121 = load i32, i32* %120, align 16
  %122 = shl i32 %121, 0
  %123 = or i32 %119, %122
  %124 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %125 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %127 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %130 = call i32 @regmap_bulk_read(i32 %128, i32 82, i32* %129, i32 3)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %112
  br label %150

134:                                              ; preds = %112
  %135 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %136 = load i32, i32* %135, align 16
  %137 = shl i32 %136, 16
  %138 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 8
  %141 = or i32 %137, %140
  %142 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 2
  %143 = load i32, i32* %142, align 8
  %144 = shl i32 %143, 0
  %145 = or i32 %141, %144
  %146 = mul nsw i32 %145, 1000
  %147 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %148 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %3, align 4
  br label %156

150:                                              ; preds = %133, %38, %29
  %151 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %152 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %151, i32 0, i32 0
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @dev_dbg(i32* %152, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %150, %134
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
