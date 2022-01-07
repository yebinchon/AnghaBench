; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.sta2x11_vip = type { i64, i64, i32*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MAX_FRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.device**, align 8
  %11 = alloca %struct.sta2x11_vip*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.device** %4, %struct.device*** %10, align 8
  %12 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %13 = call %struct.sta2x11_vip* @vb2_get_drv_priv(%struct.vb2_queue* %12)
  store %struct.sta2x11_vip* %13, %struct.sta2x11_vip** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MAX_FRAMES, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %5
  %23 = load i32, i32* @MAX_FRAMES, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32*, i32** %8, align 8
  store i32 1, i32* %26, align 4
  %27 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %11, align 8
  %28 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %11, align 8
  %34 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %11, align 8
  %36 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %11, align 8
  %38 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %11, align 8
  %40 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  ret i32 0
}

declare dso_local %struct.sta2x11_vip* @vb2_get_drv_priv(%struct.vb2_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
