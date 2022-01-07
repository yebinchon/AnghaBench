; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_cs.c_prism2_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_cs.c_prism2_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.hostap_interface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DEBUG_FLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"prism2_release\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"release - done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @prism2_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prism2_release(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.hostap_interface*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.pcmcia_device*
  store %struct.pcmcia_device* %7, %struct.pcmcia_device** %3, align 8
  %8 = load i32, i32* @DEBUG_FLOW, align 4
  %9 = call i32 @PDEBUG(i32 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %11 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %16 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %4, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %18)
  store %struct.hostap_interface* %19, %struct.hostap_interface** %5, align 8
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i32 @prism2_hw_shutdown(%struct.net_device* %20, i32 0)
  %22 = load %struct.hostap_interface*, %struct.hostap_interface** %5, align 8
  %23 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %14, %1
  %27 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %28 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %27)
  %29 = load i32, i32* @DEBUG_FLOW, align 4
  %30 = call i32 @PDEBUG(i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @prism2_hw_shutdown(%struct.net_device*, i32) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
