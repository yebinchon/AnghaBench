; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28xx_unregister_dvb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28xx_unregister_dvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx_dvb = type { i32, i64*, i32, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em28xx_dvb*)* @em28xx_unregister_dvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em28xx_unregister_dvb(%struct.em28xx_dvb* %0) #0 {
  %2 = alloca %struct.em28xx_dvb*, align 8
  store %struct.em28xx_dvb* %0, %struct.em28xx_dvb** %2, align 8
  %3 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %2, align 8
  %4 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %3, i32 0, i32 7
  %5 = call i32 @dvb_net_release(i32* %4)
  %6 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %2, align 8
  %7 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %9, align 8
  %11 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %2, align 8
  %12 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %2, align 8
  %15 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %14, i32 0, i32 6
  %16 = call i32 %10(%struct.TYPE_4__* %13, i32* %15)
  %17 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %2, align 8
  %18 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %20, align 8
  %22 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %2, align 8
  %23 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %2, align 8
  %26 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %25, i32 0, i32 5
  %27 = call i32 %21(%struct.TYPE_4__* %24, i32* %26)
  %28 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %2, align 8
  %29 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %28, i32 0, i32 4
  %30 = call i32 @dvb_dmxdev_release(i32* %29)
  %31 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %2, align 8
  %32 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %31, i32 0, i32 3
  %33 = call i32 @dvb_dmx_release(%struct.TYPE_5__* %32)
  %34 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %2, align 8
  %35 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %1
  %41 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %2, align 8
  %42 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @dvb_unregister_frontend(i64 %45)
  br label %47

47:                                               ; preds = %40, %1
  %48 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %2, align 8
  %49 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @dvb_unregister_frontend(i64 %52)
  %54 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %2, align 8
  %55 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %47
  %61 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %2, align 8
  %62 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %2, align 8
  %67 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @dvb_frontend_detach(i64 %70)
  br label %72

72:                                               ; preds = %65, %60, %47
  %73 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %2, align 8
  %74 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @dvb_frontend_detach(i64 %77)
  %79 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %2, align 8
  %80 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %79, i32 0, i32 0
  %81 = call i32 @dvb_unregister_adapter(i32* %80)
  ret void
}

declare dso_local i32 @dvb_net_release(i32*) #1

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_5__*) #1

declare dso_local i32 @dvb_unregister_frontend(i64) #1

declare dso_local i32 @dvb_frontend_detach(i64) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
