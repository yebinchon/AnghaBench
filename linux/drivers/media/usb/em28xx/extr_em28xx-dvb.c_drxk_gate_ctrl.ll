; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_drxk_gate_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_drxk_gate_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.em28xx_dvb* }
%struct.em28xx_dvb = type { i32 (%struct.dvb_frontend.0*, i32)*, i32 }
%struct.dvb_frontend.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @drxk_gate_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drxk_gate_ctrl(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.em28xx_dvb*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %9, align 8
  store %struct.em28xx_dvb* %10, %struct.em28xx_dvb** %6, align 8
  %11 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %12 = icmp ne %struct.em28xx_dvb* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %41

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %21 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %20, i32 0, i32 1
  %22 = call i32 @down(i32* %21)
  %23 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %24 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %23, i32 0, i32 0
  %25 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %24, align 8
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %27 = bitcast %struct.dvb_frontend* %26 to %struct.dvb_frontend.0*
  %28 = call i32 %25(%struct.dvb_frontend.0* %27, i32 1)
  store i32 %28, i32* %7, align 4
  br label %39

29:                                               ; preds = %16
  %30 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %31 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %30, i32 0, i32 0
  %32 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %31, align 8
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %34 = bitcast %struct.dvb_frontend* %33 to %struct.dvb_frontend.0*
  %35 = call i32 %32(%struct.dvb_frontend.0* %34, i32 0)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %37 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %36, i32 0, i32 1
  %38 = call i32 @up(i32* %37)
  br label %39

39:                                               ; preds = %29, %19
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
