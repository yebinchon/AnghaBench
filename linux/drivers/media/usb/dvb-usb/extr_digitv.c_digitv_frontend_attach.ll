; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_digitv.c_digitv_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_digitv.c_digitv_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, %struct.digitv_state* }
%struct.digitv_state = type { i32 }

@mt352_attach = common dso_local global i32 0, align 4
@digitv_mt352_config = common dso_local global i32 0, align 4
@nxt6000_attach = common dso_local global i32 0, align 4
@digitv_nxt6000_config = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @digitv_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digitv_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.digitv_state*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %5 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load %struct.digitv_state*, %struct.digitv_state** %8, align 8
  store %struct.digitv_state* %9, %struct.digitv_state** %4, align 8
  %10 = load i32, i32* @mt352_attach, align 4
  %11 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i8* @dvb_attach(i32 %10, i32* @digitv_mt352_config, i32* %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32* %16, i32** %21, align 8
  %22 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.digitv_state*, %struct.digitv_state** %4, align 8
  %31 = getelementptr inbounds %struct.digitv_state, %struct.digitv_state* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  store i32 0, i32* %2, align 4
  br label %58

32:                                               ; preds = %1
  %33 = load i32, i32* @nxt6000_attach, align 4
  %34 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i8* @dvb_attach(i32 %33, i32* @digitv_nxt6000_config, i32* %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32* %39, i32** %44, align 8
  %45 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %32
  %53 = load %struct.digitv_state*, %struct.digitv_state** %4, align 8
  %54 = getelementptr inbounds %struct.digitv_state, %struct.digitv_state* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  store i32 0, i32* %2, align 4
  br label %58

55:                                               ; preds = %32
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %52, %29
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i8* @dvb_attach(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
