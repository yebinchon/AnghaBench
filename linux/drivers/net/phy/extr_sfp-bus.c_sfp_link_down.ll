; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp-bus.c_sfp_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp-bus.c_sfp_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp_bus = type { i32 }
%struct.sfp_upstream_ops = type { i32 (i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sfp_link_down(%struct.sfp_bus* %0) #0 {
  %2 = alloca %struct.sfp_bus*, align 8
  %3 = alloca %struct.sfp_upstream_ops*, align 8
  store %struct.sfp_bus* %0, %struct.sfp_bus** %2, align 8
  %4 = load %struct.sfp_bus*, %struct.sfp_bus** %2, align 8
  %5 = call %struct.sfp_upstream_ops* @sfp_get_upstream_ops(%struct.sfp_bus* %4)
  store %struct.sfp_upstream_ops* %5, %struct.sfp_upstream_ops** %3, align 8
  %6 = load %struct.sfp_upstream_ops*, %struct.sfp_upstream_ops** %3, align 8
  %7 = icmp ne %struct.sfp_upstream_ops* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.sfp_upstream_ops*, %struct.sfp_upstream_ops** %3, align 8
  %10 = getelementptr inbounds %struct.sfp_upstream_ops, %struct.sfp_upstream_ops* %9, i32 0, i32 0
  %11 = load i32 (i32)*, i32 (i32)** %10, align 8
  %12 = icmp ne i32 (i32)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.sfp_upstream_ops*, %struct.sfp_upstream_ops** %3, align 8
  %15 = getelementptr inbounds %struct.sfp_upstream_ops, %struct.sfp_upstream_ops* %14, i32 0, i32 0
  %16 = load i32 (i32)*, i32 (i32)** %15, align 8
  %17 = load %struct.sfp_bus*, %struct.sfp_bus** %2, align 8
  %18 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 %16(i32 %19)
  br label %21

21:                                               ; preds = %13, %8, %1
  ret void
}

declare dso_local %struct.sfp_upstream_ops* @sfp_get_upstream_ops(%struct.sfp_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
