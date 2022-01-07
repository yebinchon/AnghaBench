; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_lg_tdtpe001p_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_lg_tdtpe001p_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.dtv_frontend_properties }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.dtv_frontend_properties = type { i32, i32 }
%struct.pluto = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i64 }

@I2C_ADDR_TUA6034 = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @lg_tdtpe001p_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg_tdtpe001p_tuner_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.pluto*, align 8
  %6 = alloca %struct.i2c_msg, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1
  store %struct.dtv_frontend_properties* %11, %struct.dtv_frontend_properties** %4, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = call %struct.pluto* @frontend_to_pluto(%struct.dvb_frontend* %12)
  store %struct.pluto* %13, %struct.pluto** %5, align 8
  %14 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %15 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 3
  %18 = call i32 @divide(i32 %17, i32 500000)
  %19 = add nsw i32 %18, 217
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 127
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %22, i32* %23, align 16
  %24 = load i32, i32* %9, align 4
  %25 = ashr i32 %24, 0
  %26 = and i32 %25, 255
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %29 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 611000000
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 180, i32* %33, align 8
  br label %44

34:                                               ; preds = %1
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %36 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 811000000
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 188, i32* %40, align 8
  br label %43

41:                                               ; preds = %34
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 244, i32* %42, align 8
  br label %43

43:                                               ; preds = %41, %39
  br label %44

44:                                               ; preds = %43, %32
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 350000000
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 2, i32* %50, align 4
  br label %53

51:                                               ; preds = %44
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 4, i32* %52, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %55 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 8000000
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, 8
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* @I2C_ADDR_TUA6034, align 4
  %64 = ashr i32 %63, 1
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 1
  store i32* %67, i32** %68, align 8
  %69 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 2
  store i32 16, i32* %69, align 8
  %70 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %71 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %72, align 8
  %74 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %62
  %76 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %77 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %78, align 8
  %80 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %81 = bitcast %struct.dvb_frontend* %80 to %struct.dvb_frontend.0*
  %82 = call i32 %79(%struct.dvb_frontend.0* %81, i32 1)
  br label %83

83:                                               ; preds = %75, %62
  %84 = load %struct.pluto*, %struct.pluto** %5, align 8
  %85 = getelementptr inbounds %struct.pluto, %struct.pluto* %84, i32 0, i32 0
  %86 = call i32 @i2c_transfer(i32* %85, %struct.i2c_msg* %6, i32 1)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %99

91:                                               ; preds = %83
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* @EREMOTEIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %99

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %97
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %94, %89
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.pluto* @frontend_to_pluto(%struct.dvb_frontend*) #1

declare dso_local i32 @divide(i32, i32) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
