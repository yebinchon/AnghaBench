; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_sta2x11_vip_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_sta2x11_vip_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta2x11_vip = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sta2x11_vip*)* @sta2x11_vip_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta2x11_vip_init_controls(%struct.sta2x11_vip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sta2x11_vip*, align 8
  %4 = alloca i32, align 4
  store %struct.sta2x11_vip* %0, %struct.sta2x11_vip** %3, align 8
  %5 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %6 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %5, i32 0, i32 0
  %7 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_5__* %6, i32 0)
  %8 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %9 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %8, i32 0, i32 0
  %10 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %11 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %12, align 8
  %13 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %14 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %20 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %4, align 4
  %23 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %24 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %23, i32 0, i32 0
  %25 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_5__* %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %18
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
