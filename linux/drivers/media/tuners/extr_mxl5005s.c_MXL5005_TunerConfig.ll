; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5005s.c_MXL5005_TunerConfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5005s.c_MXL5005_TunerConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mxl5005s_state* }
%struct.mxl5005s_state = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dvb_frontend*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* @MXL5005_TunerConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @MXL5005_TunerConfig(%struct.dvb_frontend* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11, i8* %12, i8* %13, i8* %14) #0 {
  %16 = alloca %struct.dvb_frontend*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca %struct.mxl5005s_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %16, align 8
  store i8* %1, i8** %17, align 8
  store i8* %2, i8** %18, align 8
  store i8* %3, i8** %19, align 8
  store i8* %4, i8** %20, align 8
  store i8* %5, i8** %21, align 8
  store i8* %6, i8** %22, align 8
  store i8* %7, i8** %23, align 8
  store i8* %8, i8** %24, align 8
  store i8* %9, i8** %25, align 8
  store i8* %10, i8** %26, align 8
  store i8* %11, i8** %27, align 8
  store i8* %12, i8** %28, align 8
  store i8* %13, i8** %29, align 8
  store i8* %14, i8** %30, align 8
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %16, align 8
  %33 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %32, i32 0, i32 0
  %34 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %33, align 8
  store %struct.mxl5005s_state* %34, %struct.mxl5005s_state** %31, align 8
  %35 = load i8*, i8** %17, align 8
  %36 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %31, align 8
  %37 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %36, i32 0, i32 13
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %18, align 8
  %39 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %31, align 8
  %40 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %39, i32 0, i32 12
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %19, align 8
  %42 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %31, align 8
  %43 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %42, i32 0, i32 11
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %20, align 8
  %45 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %31, align 8
  %46 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %45, i32 0, i32 10
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %21, align 8
  %48 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %31, align 8
  %49 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %48, i32 0, i32 9
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %22, align 8
  %51 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %31, align 8
  %52 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %51, i32 0, i32 8
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %23, align 8
  %54 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %31, align 8
  %55 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %54, i32 0, i32 7
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** %24, align 8
  %57 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %31, align 8
  %58 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %25, align 8
  %60 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %31, align 8
  %61 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %26, align 8
  %63 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %31, align 8
  %64 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %27, align 8
  %66 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %31, align 8
  %67 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** %28, align 8
  %69 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %31, align 8
  %70 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** %29, align 8
  %72 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %31, align 8
  %73 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %30, align 8
  %75 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %31, align 8
  %76 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load %struct.dvb_frontend*, %struct.dvb_frontend** %16, align 8
  %78 = call i32 @InitTunerControls(%struct.dvb_frontend* %77)
  %79 = load %struct.dvb_frontend*, %struct.dvb_frontend** %16, align 8
  %80 = call i32 @MXL_SynthIFLO_Calc(%struct.dvb_frontend* %79)
  ret i8* null
}

declare dso_local i32 @InitTunerControls(%struct.dvb_frontend*) #1

declare dso_local i32 @MXL_SynthIFLO_Calc(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
