; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_fw.c_softing_default_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_fw.c_softing_default_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.softing_priv = type { i32, %struct.softing* }
%struct.softing = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @softing_default_output(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.softing_priv*, align 8
  %5 = alloca %struct.softing*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.softing_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.softing_priv* %7, %struct.softing_priv** %4, align 8
  %8 = load %struct.softing_priv*, %struct.softing_priv** %4, align 8
  %9 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %8, i32 0, i32 1
  %10 = load %struct.softing*, %struct.softing** %9, align 8
  store %struct.softing* %10, %struct.softing** %5, align 8
  %11 = load %struct.softing_priv*, %struct.softing_priv** %4, align 8
  %12 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %24 [
    i32 1000, label %14
    i32 5, label %23
  ]

14:                                               ; preds = %1
  %15 = load %struct.softing*, %struct.softing** %5, align 8
  %16 = getelementptr inbounds %struct.softing, %struct.softing* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 2
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 251, i32 250
  store i32 %22, i32* %2, align 4
  br label %25

23:                                               ; preds = %1
  store i32 96, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 64, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23, %14
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.softing_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
