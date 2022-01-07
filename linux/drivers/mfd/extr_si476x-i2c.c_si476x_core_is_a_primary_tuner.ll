; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_is_a_primary_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_is_a_primary_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si476x_core = type { i64 }

@SI476X_PHDIV_PRIMARY_ANTENNA = common dso_local global i64 0, align 8
@SI476X_PHDIV_PRIMARY_COMBINING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si476x_core_is_a_primary_tuner(%struct.si476x_core* %0) #0 {
  %2 = alloca %struct.si476x_core*, align 8
  store %struct.si476x_core* %0, %struct.si476x_core** %2, align 8
  %3 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %4 = call i64 @si476x_core_has_diversity(%struct.si476x_core* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %8 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SI476X_PHDIV_PRIMARY_ANTENNA, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %14 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SI476X_PHDIV_PRIMARY_COMBINING, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %12, %6
  %19 = phi i1 [ true, %6 ], [ %17, %12 ]
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi i1 [ false, %1 ], [ %19, %18 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local i64 @si476x_core_has_diversity(%struct.si476x_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
