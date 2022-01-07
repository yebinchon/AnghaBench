; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-cmd.c_si476x_core_cmd_fm_rsq_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-cmd.c_si476x_core_cmd_fm_rsq_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.si476x_core*, %struct.si476x_rsq_status_args*, %struct.si476x_rsq_status_report*)* }
%struct.si476x_core = type { i32 }
%struct.si476x_rsq_status_args = type { i32 }
%struct.si476x_rsq_status_report = type { i32 }

@SI476X_REVISION_A30 = common dso_local global i32 0, align 4
@si476x_cmds_vtable = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si476x_core_cmd_fm_rsq_status(%struct.si476x_core* %0, %struct.si476x_rsq_status_args* %1, %struct.si476x_rsq_status_report* %2) #0 {
  %4 = alloca %struct.si476x_core*, align 8
  %5 = alloca %struct.si476x_rsq_status_args*, align 8
  %6 = alloca %struct.si476x_rsq_status_report*, align 8
  store %struct.si476x_core* %0, %struct.si476x_core** %4, align 8
  store %struct.si476x_rsq_status_args* %1, %struct.si476x_rsq_status_args** %5, align 8
  store %struct.si476x_rsq_status_report* %2, %struct.si476x_rsq_status_report** %6, align 8
  %7 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %8 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SI476X_REVISION_A30, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %14 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, -1
  br label %17

17:                                               ; preds = %12, %3
  %18 = phi i1 [ true, %3 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @si476x_cmds_vtable, align 8
  %22 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %23 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.si476x_core*, %struct.si476x_rsq_status_args*, %struct.si476x_rsq_status_report*)*, i32 (%struct.si476x_core*, %struct.si476x_rsq_status_args*, %struct.si476x_rsq_status_report*)** %27, align 8
  %29 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %30 = load %struct.si476x_rsq_status_args*, %struct.si476x_rsq_status_args** %5, align 8
  %31 = load %struct.si476x_rsq_status_report*, %struct.si476x_rsq_status_report** %6, align 8
  %32 = call i32 %28(%struct.si476x_core* %29, %struct.si476x_rsq_status_args* %30, %struct.si476x_rsq_status_report* %31)
  ret i32 %32
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
