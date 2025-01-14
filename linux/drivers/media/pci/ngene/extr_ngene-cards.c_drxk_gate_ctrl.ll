; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_drxk_gate_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_drxk_gate_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.ngene_channel* }
%struct.ngene_channel = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_2__* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @drxk_gate_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drxk_gate_ctrl(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ngene_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.ngene_channel*, %struct.ngene_channel** %8, align 8
  store %struct.ngene_channel* %9, %struct.ngene_channel** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.ngene_channel*, %struct.ngene_channel** %5, align 8
  %14 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @down(i32* %16)
  %18 = load %struct.ngene_channel*, %struct.ngene_channel** %5, align 8
  %19 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %18, i32 0, i32 0
  %20 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %19, align 8
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %22 = bitcast %struct.dvb_frontend* %21 to %struct.dvb_frontend.0*
  %23 = call i32 %20(%struct.dvb_frontend.0* %22, i32 1)
  store i32 %23, i32* %6, align 4
  br label %36

24:                                               ; preds = %2
  %25 = load %struct.ngene_channel*, %struct.ngene_channel** %5, align 8
  %26 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %25, i32 0, i32 0
  %27 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %26, align 8
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %29 = bitcast %struct.dvb_frontend* %28 to %struct.dvb_frontend.0*
  %30 = call i32 %27(%struct.dvb_frontend.0* %29, i32 0)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.ngene_channel*, %struct.ngene_channel** %5, align 8
  %32 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @up(i32* %34)
  br label %36

36:                                               ; preds = %24, %12
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
