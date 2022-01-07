; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_tt_s2_4600_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_tt_s2_4600_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.dvb_usb_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.dw2102_state = type { i32 (%struct.dvb_frontend.0*, i32*)*, i32 }
%struct.dvb_frontend.0 = type opaque

@FE_HAS_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @tt_s2_4600_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tt_s2_4600_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dvb_usb_adapter*, align 8
  %6 = alloca %struct.dw2102_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.dvb_usb_adapter*
  store %struct.dvb_usb_adapter* %13, %struct.dvb_usb_adapter** %5, align 8
  %14 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.dw2102_state*
  store %struct.dw2102_state* %19, %struct.dw2102_state** %6, align 8
  %20 = load %struct.dw2102_state*, %struct.dw2102_state** %6, align 8
  %21 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %20, i32 0, i32 0
  %22 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %21, align 8
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %24 = bitcast %struct.dvb_frontend* %23 to %struct.dvb_frontend.0*
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 %22(%struct.dvb_frontend.0* %24, i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FE_HAS_LOCK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %2
  %33 = load %struct.dw2102_state*, %struct.dw2102_state** %6, align 8
  %34 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %5, align 8
  %39 = call i32 @su3000_streaming_ctrl(%struct.dvb_usb_adapter* %38, i32 1)
  br label %40

40:                                               ; preds = %37, %32, %2
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FE_HAS_LOCK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = load %struct.dw2102_state*, %struct.dw2102_state** %6, align 8
  %49 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @su3000_streaming_ctrl(%struct.dvb_usb_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
