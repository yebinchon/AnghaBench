; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_i2c_gate_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_i2c_gate_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_8__*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au0828_dev*, i32)* @i2c_gate_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_gate_ctrl(%struct.au0828_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.au0828_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.au0828_dev* %0, %struct.au0828_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %6 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = icmp ne %struct.TYPE_8__* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %12 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.TYPE_8__*, i32)* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %10
  %21 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %22 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %27, align 8
  %29 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %30 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 %28(%struct.TYPE_8__* %32, i32 %33)
  br label %35

35:                                               ; preds = %20, %10, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
