; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_alps_tdlb7_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_alps_tdlb7_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { %struct.av7110* }
%struct.av7110 = type { i32 }
%struct.dtv_frontend_properties = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @alps_tdlb7_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_tdlb7_tuner_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.av7110*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 2
  store %struct.dtv_frontend_properties* %11, %struct.dtv_frontend_properties** %4, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.av7110*, %struct.av7110** %15, align 8
  store %struct.av7110* %16, %struct.av7110** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  store i32 96, i32* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32* %19, i32** %18, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i32 16, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %23 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 36200000
  %26 = sdiv i32 %25, 166666
  store i32 %26, i32* %6, align 4
  %27 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %28 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sle i32 %29, 782000000
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %33

32:                                               ; preds = %1
  store i32 2, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %6, align 4
  %35 = ashr i32 %34, 8
  %36 = and i32 %35, 127
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %36, i32* %37, align 16
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 255
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 133, i32* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 %42, 6
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %43, i32* %44, align 4
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %46 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %47, align 8
  %49 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %33
  %51 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %52 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %53, align 8
  %55 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %56 = bitcast %struct.dvb_frontend* %55 to %struct.dvb_frontend.0*
  %57 = call i32 %54(%struct.dvb_frontend.0* %56, i32 1)
  br label %58

58:                                               ; preds = %50, %33
  %59 = load %struct.av7110*, %struct.av7110** %5, align 8
  %60 = getelementptr inbounds %struct.av7110, %struct.av7110* %59, i32 0, i32 0
  %61 = call i32 @i2c_transfer(i32* %60, %struct.i2c_msg* %9, i32 1)
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %67

66:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
