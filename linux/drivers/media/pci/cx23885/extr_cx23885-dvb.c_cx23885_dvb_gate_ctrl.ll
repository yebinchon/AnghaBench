; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-dvb.c_cx23885_dvb_gate_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-dvb.c_cx23885_dvb_gate_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_tsport = type { %struct.vb2_dvb_frontends }
%struct.vb2_dvb_frontends = type { i32 }
%struct.vb2_dvb_frontend = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx23885_tsport*, i32)* @cx23885_dvb_gate_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx23885_dvb_gate_ctrl(%struct.cx23885_tsport* %0, i32 %1) #0 {
  %3 = alloca %struct.cx23885_tsport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vb2_dvb_frontends*, align 8
  %6 = alloca %struct.vb2_dvb_frontend*, align 8
  store %struct.cx23885_tsport* %0, %struct.cx23885_tsport** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %8 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %7, i32 0, i32 0
  store %struct.vb2_dvb_frontends* %8, %struct.vb2_dvb_frontends** %5, align 8
  %9 = load %struct.vb2_dvb_frontends*, %struct.vb2_dvb_frontends** %5, align 8
  %10 = getelementptr inbounds %struct.vb2_dvb_frontends, %struct.vb2_dvb_frontends* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sle i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.vb2_dvb_frontends*, %struct.vb2_dvb_frontends** %5, align 8
  %15 = call %struct.vb2_dvb_frontend* @vb2_dvb_get_frontend(%struct.vb2_dvb_frontends* %14, i32 1)
  store %struct.vb2_dvb_frontend* %15, %struct.vb2_dvb_frontend** %6, align 8
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.vb2_dvb_frontends*, %struct.vb2_dvb_frontends** %5, align 8
  %18 = load %struct.vb2_dvb_frontends*, %struct.vb2_dvb_frontends** %5, align 8
  %19 = getelementptr inbounds %struct.vb2_dvb_frontends, %struct.vb2_dvb_frontends* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.vb2_dvb_frontend* @vb2_dvb_get_frontend(%struct.vb2_dvb_frontends* %17, i32 %20)
  store %struct.vb2_dvb_frontend* %21, %struct.vb2_dvb_frontend** %6, align 8
  br label %22

22:                                               ; preds = %16, %13
  %23 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %6, align 8
  %24 = icmp ne %struct.vb2_dvb_frontend* %23, null
  br i1 %24, label %25, label %54

25:                                               ; preds = %22
  %26 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %6, align 8
  %27 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %54

31:                                               ; preds = %25
  %32 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %6, align 8
  %33 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %37, align 8
  %39 = icmp ne i32 (%struct.TYPE_6__*, i32)* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %31
  %41 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %6, align 8
  %42 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %46, align 8
  %48 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %6, align 8
  %49 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 %47(%struct.TYPE_6__* %51, i32 %52)
  br label %54

54:                                               ; preds = %40, %31, %25, %22
  ret void
}

declare dso_local %struct.vb2_dvb_frontend* @vb2_dvb_get_frontend(%struct.vb2_dvb_frontends*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
