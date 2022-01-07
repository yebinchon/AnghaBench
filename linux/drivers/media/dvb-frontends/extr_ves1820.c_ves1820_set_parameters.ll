; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ves1820.c_ves1820_set_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ves1820.c_ves1820_set_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.ves1820_state*, %struct.dtv_frontend_properties }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_4__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.1*)* }
%struct.dvb_frontend.1 = type opaque
%struct.ves1820_state = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.dtv_frontend_properties = type { i32, i32, i32 }

@ves1820_set_parameters.reg0x00 = internal constant [5 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16], align 16
@ves1820_set_parameters.reg0x01 = internal constant [5 x i32] [i32 140, i32 140, i32 106, i32 100, i32 92], align 16
@ves1820_set_parameters.reg0x05 = internal constant [5 x i32] [i32 135, i32 100, i32 70, i32 54, i32 38], align 16
@ves1820_set_parameters.reg0x08 = internal constant [5 x i32] [i32 162, i32 116, i32 67, i32 52, i32 35], align 16
@ves1820_set_parameters.reg0x09 = internal constant [5 x i32] [i32 145, i32 150, i32 106, i32 126, i32 107], align 16
@QAM_16 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ves1820_inittab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @ves1820_set_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ves1820_set_parameters(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.ves1820_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 2
  store %struct.dtv_frontend_properties* %8, %struct.dtv_frontend_properties** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1
  %11 = load %struct.ves1820_state*, %struct.ves1820_state** %10, align 8
  store %struct.ves1820_state* %11, %struct.ves1820_state** %5, align 8
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %13 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @QAM_16, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 4
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %113

25:                                               ; preds = %19
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %27 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %29, align 8
  %31 = icmp ne i32 (%struct.dvb_frontend.1*)* %30, null
  br i1 %31, label %32, label %55

32:                                               ; preds = %25
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %34 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %36, align 8
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %39 = bitcast %struct.dvb_frontend* %38 to %struct.dvb_frontend.1*
  %40 = call i32 %37(%struct.dvb_frontend.1* %39)
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %42 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %43, align 8
  %45 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %32
  %47 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %48 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %49, align 8
  %51 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %52 = bitcast %struct.dvb_frontend* %51 to %struct.dvb_frontend.0*
  %53 = call i32 %50(%struct.dvb_frontend.0* %52, i32 0)
  br label %54

54:                                               ; preds = %46, %32
  br label %55

55:                                               ; preds = %54, %25
  %56 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %57 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %58 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ves1820_set_symbolrate(%struct.ves1820_state* %56, i32 %59)
  %61 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %62 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %63 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ves1820_writereg(%struct.ves1820_state* %61, i32 52, i32 %64)
  %66 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [5 x i32], [5 x i32]* @ves1820_set_parameters.reg0x01, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ves1820_writereg(%struct.ves1820_state* %66, i32 1, i32 %70)
  %72 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [5 x i32], [5 x i32]* @ves1820_set_parameters.reg0x05, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ves1820_writereg(%struct.ves1820_state* %72, i32 5, i32 %76)
  %78 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [5 x i32], [5 x i32]* @ves1820_set_parameters.reg0x08, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ves1820_writereg(%struct.ves1820_state* %78, i32 8, i32 %82)
  %84 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [5 x i32], [5 x i32]* @ves1820_set_parameters.reg0x09, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ves1820_writereg(%struct.ves1820_state* %84, i32 9, i32 %88)
  %90 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [5 x i32], [5 x i32]* @ves1820_set_parameters.reg0x00, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %96 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ves1820_setup_reg0(%struct.ves1820_state* %90, i32 %94, i32 %97)
  %99 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %100 = load i32*, i32** @ves1820_inittab, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %104 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 8, i32 0
  %111 = or i32 %102, %110
  %112 = call i32 @ves1820_writereg(%struct.ves1820_state* %99, i32 2, i32 %111)
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %55, %22
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @ves1820_set_symbolrate(%struct.ves1820_state*, i32) #1

declare dso_local i32 @ves1820_writereg(%struct.ves1820_state*, i32, i32) #1

declare dso_local i32 @ves1820_setup_reg0(%struct.ves1820_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
