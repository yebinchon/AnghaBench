; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-dvb.c_cx88_dvb_gate_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-dvb.c_cx88_dvb_gate_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.vb2_dvb_frontends }
%struct.vb2_dvb_frontends = type { i32 }
%struct.vb2_dvb_frontend = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_8__*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx88_core*, i32)* @cx88_dvb_gate_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx88_dvb_gate_ctrl(%struct.cx88_core* %0, i32 %1) #0 {
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vb2_dvb_frontends*, align 8
  %6 = alloca %struct.vb2_dvb_frontend*, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %8 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = icmp ne %struct.TYPE_7__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %66

12:                                               ; preds = %2
  %13 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %14 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store %struct.vb2_dvb_frontends* %16, %struct.vb2_dvb_frontends** %5, align 8
  %17 = load %struct.vb2_dvb_frontends*, %struct.vb2_dvb_frontends** %5, align 8
  %18 = icmp ne %struct.vb2_dvb_frontends* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %66

20:                                               ; preds = %12
  %21 = load %struct.vb2_dvb_frontends*, %struct.vb2_dvb_frontends** %5, align 8
  %22 = getelementptr inbounds %struct.vb2_dvb_frontends, %struct.vb2_dvb_frontends* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.vb2_dvb_frontends*, %struct.vb2_dvb_frontends** %5, align 8
  %27 = call %struct.vb2_dvb_frontend* @vb2_dvb_get_frontend(%struct.vb2_dvb_frontends* %26, i32 1)
  store %struct.vb2_dvb_frontend* %27, %struct.vb2_dvb_frontend** %6, align 8
  br label %34

28:                                               ; preds = %20
  %29 = load %struct.vb2_dvb_frontends*, %struct.vb2_dvb_frontends** %5, align 8
  %30 = load %struct.vb2_dvb_frontends*, %struct.vb2_dvb_frontends** %5, align 8
  %31 = getelementptr inbounds %struct.vb2_dvb_frontends, %struct.vb2_dvb_frontends* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.vb2_dvb_frontend* @vb2_dvb_get_frontend(%struct.vb2_dvb_frontends* %29, i32 %32)
  store %struct.vb2_dvb_frontend* %33, %struct.vb2_dvb_frontend** %6, align 8
  br label %34

34:                                               ; preds = %28, %25
  %35 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %6, align 8
  %36 = icmp ne %struct.vb2_dvb_frontend* %35, null
  br i1 %36, label %37, label %66

37:                                               ; preds = %34
  %38 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %6, align 8
  %39 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %66

43:                                               ; preds = %37
  %44 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %6, align 8
  %45 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %49, align 8
  %51 = icmp ne i32 (%struct.TYPE_8__*, i32)* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %43
  %53 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %6, align 8
  %54 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %58, align 8
  %60 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %6, align 8
  %61 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 %59(%struct.TYPE_8__* %63, i32 %64)
  br label %66

66:                                               ; preds = %11, %19, %52, %43, %37, %34
  ret void
}

declare dso_local %struct.vb2_dvb_frontend* @vb2_dvb_get_frontend(%struct.vb2_dvb_frontends*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
