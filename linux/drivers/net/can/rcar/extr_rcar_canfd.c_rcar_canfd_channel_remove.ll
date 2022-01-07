; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_channel_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_channel_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_canfd_global = type { %struct.rcar_canfd_channel** }
%struct.rcar_canfd_channel = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_canfd_global*, i64)* @rcar_canfd_channel_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_canfd_channel_remove(%struct.rcar_canfd_global* %0, i64 %1) #0 {
  %3 = alloca %struct.rcar_canfd_global*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rcar_canfd_channel*, align 8
  store %struct.rcar_canfd_global* %0, %struct.rcar_canfd_global** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %3, align 8
  %7 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %6, i32 0, i32 0
  %8 = load %struct.rcar_canfd_channel**, %struct.rcar_canfd_channel*** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %8, i64 %9
  %11 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %10, align 8
  store %struct.rcar_canfd_channel* %11, %struct.rcar_canfd_channel** %5, align 8
  %12 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %5, align 8
  %13 = icmp ne %struct.rcar_canfd_channel* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %5, align 8
  %16 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @unregister_candev(i32 %17)
  %19 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %5, align 8
  %20 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %19, i32 0, i32 1
  %21 = call i32 @netif_napi_del(i32* %20)
  %22 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %5, align 8
  %23 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @free_candev(i32 %24)
  br label %26

26:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @unregister_candev(i32) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @free_candev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
