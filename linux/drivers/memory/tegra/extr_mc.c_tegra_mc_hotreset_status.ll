; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_mc.c_tegra_mc_hotreset_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_mc.c_tegra_mc_hotreset_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.tegra_mc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_mc_reset_ops* }
%struct.tegra_mc_reset_ops = type { i32 (%struct.tegra_mc.0*, %struct.tegra_mc_reset*)* }
%struct.tegra_mc.0 = type opaque
%struct.tegra_mc_reset = type opaque
%struct.tegra_mc_reset.1 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @tegra_mc_hotreset_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_mc_hotreset_status(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reset_controller_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tegra_mc*, align 8
  %7 = alloca %struct.tegra_mc_reset_ops*, align 8
  %8 = alloca %struct.tegra_mc_reset.1*, align 8
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %4, align 8
  %10 = call %struct.tegra_mc* @reset_to_mc(%struct.reset_controller_dev* %9)
  store %struct.tegra_mc* %10, %struct.tegra_mc** %6, align 8
  %11 = load %struct.tegra_mc*, %struct.tegra_mc** %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call %struct.tegra_mc_reset.1* @tegra_mc_reset_find(%struct.tegra_mc* %11, i64 %12)
  store %struct.tegra_mc_reset.1* %13, %struct.tegra_mc_reset.1** %8, align 8
  %14 = load %struct.tegra_mc_reset.1*, %struct.tegra_mc_reset.1** %8, align 8
  %15 = icmp ne %struct.tegra_mc_reset.1* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %39

19:                                               ; preds = %2
  %20 = load %struct.tegra_mc*, %struct.tegra_mc** %6, align 8
  %21 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.tegra_mc_reset_ops*, %struct.tegra_mc_reset_ops** %23, align 8
  store %struct.tegra_mc_reset_ops* %24, %struct.tegra_mc_reset_ops** %7, align 8
  %25 = load %struct.tegra_mc_reset_ops*, %struct.tegra_mc_reset_ops** %7, align 8
  %26 = icmp ne %struct.tegra_mc_reset_ops* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %39

30:                                               ; preds = %19
  %31 = load %struct.tegra_mc_reset_ops*, %struct.tegra_mc_reset_ops** %7, align 8
  %32 = getelementptr inbounds %struct.tegra_mc_reset_ops, %struct.tegra_mc_reset_ops* %31, i32 0, i32 0
  %33 = load i32 (%struct.tegra_mc.0*, %struct.tegra_mc_reset*)*, i32 (%struct.tegra_mc.0*, %struct.tegra_mc_reset*)** %32, align 8
  %34 = load %struct.tegra_mc*, %struct.tegra_mc** %6, align 8
  %35 = bitcast %struct.tegra_mc* %34 to %struct.tegra_mc.0*
  %36 = load %struct.tegra_mc_reset.1*, %struct.tegra_mc_reset.1** %8, align 8
  %37 = bitcast %struct.tegra_mc_reset.1* %36 to %struct.tegra_mc_reset*
  %38 = call i32 %33(%struct.tegra_mc.0* %35, %struct.tegra_mc_reset* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %30, %27, %16
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.tegra_mc* @reset_to_mc(%struct.reset_controller_dev*) #1

declare dso_local %struct.tegra_mc_reset.1* @tegra_mc_reset_find(%struct.tegra_mc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
