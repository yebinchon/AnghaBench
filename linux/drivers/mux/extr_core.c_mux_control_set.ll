; ModuleID = '/home/carl/AnghaBench/linux/drivers/mux/extr_core.c_mux_control_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mux/extr_core.c_mux_control_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mux_control = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

@MUX_CACHE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mux_control*, i32)* @mux_control_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mux_control_set(%struct.mux_control* %0, i32 %1) #0 {
  %3 = alloca %struct.mux_control*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mux_control* %0, %struct.mux_control** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mux_control*, %struct.mux_control** %3, align 8
  %7 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.mux_control*, i32)**
  %13 = load i32 (%struct.mux_control*, i32)*, i32 (%struct.mux_control*, i32)** %12, align 8
  %14 = load %struct.mux_control*, %struct.mux_control** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 %13(%struct.mux_control* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @MUX_CACHE_UNKNOWN, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = load %struct.mux_control*, %struct.mux_control** %3, align 8
  %26 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
