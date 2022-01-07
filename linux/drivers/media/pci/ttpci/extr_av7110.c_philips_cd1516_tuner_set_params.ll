; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_philips_cd1516_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_philips_cd1516_tuner_set_params.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @philips_cd1516_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @philips_cd1516_tuner_set_params(%struct.dvb_frontend* %0) #0 {
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
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %18 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  store i32 97, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32* %22, i32** %21, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i32 16, i32* %23, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 36125000
  %27 = add nsw i32 %26, 31250
  %28 = sdiv i32 %27, 62500
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 8
  %31 = and i32 %30, 127
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %31, i32* %32, align 16
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 255
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 142, i32* %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 174000000
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  br label %45

40:                                               ; preds = %1
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 470000000
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 146, i32 52
  br label %45

45:                                               ; preds = %40, %39
  %46 = phi i32 [ 161, %39 ], [ %44, %40 ]
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %46, i32* %47, align 4
  %48 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %49 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %50, align 8
  %52 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %55 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %56, align 8
  %58 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %59 = bitcast %struct.dvb_frontend* %58 to %struct.dvb_frontend.0*
  %60 = call i32 %57(%struct.dvb_frontend.0* %59, i32 1)
  br label %61

61:                                               ; preds = %53, %45
  %62 = load %struct.av7110*, %struct.av7110** %5, align 8
  %63 = getelementptr inbounds %struct.av7110, %struct.av7110* %62, i32 0, i32 0
  %64 = call i32 @i2c_transfer(i32* %63, %struct.i2c_msg* %9, i32 1)
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %66
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
