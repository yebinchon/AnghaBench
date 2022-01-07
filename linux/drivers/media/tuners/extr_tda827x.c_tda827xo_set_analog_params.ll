; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda827x.c_tda827xo_set_analog_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda827x.c_tda827xo_set_analog_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.dvb_frontend = type { %struct.tda827x_priv* }
%struct.tda827x_priv = type { i32, i32, i32, i32 }
%struct.analog_parameters = type { i32, i64 }
%struct.i2c_msg = type { i8*, i32, i32, i32 }

@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@tda827x_table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.analog_parameters*)* @tda827xo_set_analog_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda827xo_set_analog_params(%struct.dvb_frontend* %0, %struct.analog_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.analog_parameters*, align 8
  %5 = alloca [8 x i8], align 1
  %6 = alloca [2 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tda827x_priv*, align 8
  %10 = alloca %struct.i2c_msg, align 8
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.analog_parameters* %1, %struct.analog_parameters** %4, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.tda827x_priv*, %struct.tda827x_priv** %13, align 8
  store %struct.tda827x_priv* %14, %struct.tda827x_priv** %9, align 8
  %15 = bitcast %struct.i2c_msg* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 3
  %17 = load %struct.tda827x_priv*, %struct.tda827x_priv** %9, align 8
  %18 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 8
  %20 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %21 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %24 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %25 = call i32 @tda827x_set_std(%struct.dvb_frontend* %23, %struct.analog_parameters* %24)
  %26 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %27 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* %11, align 4
  %33 = udiv i32 %32, 1000
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %31, %2
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.tda827x_priv*, %struct.tda827x_priv** %9, align 8
  %37 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %35, %38
  store i32 %39, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %60, %34
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda827x_table, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %47, 62500
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %40
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda827x_table, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %63

60:                                               ; preds = %50
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %40

63:                                               ; preds = %59, %40
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda827x_table, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %64, %70
  store i32 %71, i32* %7, align 4
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %72, align 1
  %73 = load i32, i32* %7, align 4
  %74 = ashr i32 %73, 8
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 1
  store i8 %75, i8* %76, align 1
  %77 = load i32, i32* %7, align 4
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 2
  store i8 %78, i8* %79, align 1
  %80 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 3
  store i8 64, i8* %80, align 1
  %81 = load %struct.tda827x_priv*, %struct.tda827x_priv** %9, align 8
  %82 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 5
  %85 = add nsw i32 82, %84
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 4
  store i8 %86, i8* %87, align 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda827x_table, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 6
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda827x_table, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 5
  %102 = add nsw i32 %94, %101
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda827x_table, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 3
  %110 = add nsw i32 %102, %109
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda827x_table, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %110, %116
  %118 = trunc i32 %117 to i8
  %119 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 5
  store i8 %118, i8* %119, align 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda827x_table, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 4
  %127 = add nsw i32 143, %126
  %128 = trunc i32 %127 to i8
  %129 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 6
  store i8 %128, i8* %129, align 1
  %130 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 7
  store i8 -113, i8* %130, align 1
  %131 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %132 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  store i8* %131, i8** %132, align 8
  %133 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  store i32 8, i32* %133, align 8
  %134 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %135 = call i32 @tuner_transfer(%struct.dvb_frontend* %134, %struct.i2c_msg* %10, i32 1)
  %136 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %137 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  store i8* %136, i8** %137, align 8
  %138 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  store i32 2, i32* %138, align 8
  %139 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 -128, i8* %139, align 1
  %140 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 0, i8* %140, align 1
  %141 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %142 = call i32 @tuner_transfer(%struct.dvb_frontend* %141, %struct.i2c_msg* %10, i32 1)
  %143 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 96, i8* %143, align 1
  %144 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 -65, i8* %144, align 1
  %145 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %146 = call i32 @tuner_transfer(%struct.dvb_frontend* %145, %struct.i2c_msg* %10, i32 1)
  %147 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 48, i8* %147, align 1
  %148 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 4
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = add nsw i32 %150, 128
  %152 = trunc i32 %151 to i8
  %153 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %152, i8* %153, align 1
  %154 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %155 = call i32 @tuner_transfer(%struct.dvb_frontend* %154, %struct.i2c_msg* %10, i32 1)
  %156 = call i32 @msleep(i32 1)
  %157 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 48, i8* %157, align 1
  %158 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 4
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = add nsw i32 %160, 4
  %162 = trunc i32 %161 to i8
  %163 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %162, i8* %163, align 1
  %164 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %165 = call i32 @tuner_transfer(%struct.dvb_frontend* %164, %struct.i2c_msg* %10, i32 1)
  %166 = call i32 @msleep(i32 1)
  %167 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 48, i8* %167, align 1
  %168 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 4
  %169 = load i8, i8* %168, align 1
  %170 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %169, i8* %170, align 1
  %171 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %172 = call i32 @tuner_transfer(%struct.dvb_frontend* %171, %struct.i2c_msg* %10, i32 1)
  %173 = call i32 @msleep(i32 550)
  %174 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 48, i8* %174, align 1
  %175 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 4
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = and i32 %177, 252
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda827x_table, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 6
  %184 = load i8, i8* %183, align 4
  %185 = zext i8 %184 to i32
  %186 = add nsw i32 %178, %185
  %187 = trunc i32 %186 to i8
  %188 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %187, i8* %188, align 1
  %189 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %190 = call i32 @tuner_transfer(%struct.dvb_frontend* %189, %struct.i2c_msg* %10, i32 1)
  %191 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 96, i8* %191, align 1
  %192 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 63, i8* %192, align 1
  %193 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %194 = call i32 @tuner_transfer(%struct.dvb_frontend* %193, %struct.i2c_msg* %10, i32 1)
  %195 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 -128, i8* %195, align 1
  %196 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 8, i8* %196, align 1
  %197 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %198 = call i32 @tuner_transfer(%struct.dvb_frontend* %197, %struct.i2c_msg* %10, i32 1)
  %199 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %200 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.tda827x_priv*, %struct.tda827x_priv** %9, align 8
  %203 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @tda827x_set_std(%struct.dvb_frontend*, %struct.analog_parameters*) #2

declare dso_local i32 @tuner_transfer(%struct.dvb_frontend*, %struct.i2c_msg*, i32) #2

declare dso_local i32 @msleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
