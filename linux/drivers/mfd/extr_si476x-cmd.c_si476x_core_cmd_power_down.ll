; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-cmd.c_si476x_core_cmd_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-cmd.c_si476x_core_cmd_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.si476x_core*, %struct.si476x_power_down_args*)* }
%struct.si476x_core = type { i32 }
%struct.si476x_power_down_args = type { i32 }

@SI476X_REVISION_A30 = common dso_local global i32 0, align 4
@si476x_cmds_vtable = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si476x_core_cmd_power_down(%struct.si476x_core* %0, %struct.si476x_power_down_args* %1) #0 {
  %3 = alloca %struct.si476x_core*, align 8
  %4 = alloca %struct.si476x_power_down_args*, align 8
  store %struct.si476x_core* %0, %struct.si476x_core** %3, align 8
  store %struct.si476x_power_down_args* %1, %struct.si476x_power_down_args** %4, align 8
  %5 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %6 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SI476X_REVISION_A30, align 4
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %12 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, -1
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i1 [ true, %2 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @si476x_cmds_vtable, align 8
  %20 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %21 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.si476x_core*, %struct.si476x_power_down_args*)*, i32 (%struct.si476x_core*, %struct.si476x_power_down_args*)** %25, align 8
  %27 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %28 = load %struct.si476x_power_down_args*, %struct.si476x_power_down_args** %4, align 8
  %29 = call i32 %26(%struct.si476x_core* %27, %struct.si476x_power_down_args* %28)
  ret i32 %29
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
