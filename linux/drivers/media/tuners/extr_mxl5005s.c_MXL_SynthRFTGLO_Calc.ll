; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5005s.c_MXL_SynthRFTGLO_Calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5005s.c_MXL_SynthRFTGLO_Calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mxl5005s_state* }
%struct.mxl5005s_state = type { i32, i32, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @MXL_SynthRFTGLO_Calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MXL_SynthRFTGLO_Calc(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.mxl5005s_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 0
  %6 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %5, align 8
  store %struct.mxl5005s_state* %6, %struct.mxl5005s_state** %3, align 8
  %7 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %8 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %13 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %16 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %18 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 750000
  %21 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %22 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  br label %63

23:                                               ; preds = %1
  %24 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %25 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %30 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 400000
  %33 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %34 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %36 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1750000
  %39 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %40 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  br label %62

41:                                               ; preds = %23
  %42 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %43 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %46 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = sdiv i32 %47, 2
  %49 = sub nsw i32 %44, %48
  %50 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %51 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %53 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %56 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %54, %57
  %59 = add nsw i32 %58, 500000
  %60 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %61 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %41, %28
  br label %63

63:                                               ; preds = %62, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
