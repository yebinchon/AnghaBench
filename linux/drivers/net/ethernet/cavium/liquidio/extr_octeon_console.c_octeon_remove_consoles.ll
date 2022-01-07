; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_console.c_octeon_remove_consoles.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_console.c_octeon_remove_consoles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, %struct.TYPE_2__*, %struct.octeon_console* }
%struct.TYPE_2__ = type { i32 }
%struct.octeon_console = type { i64, i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @octeon_remove_consoles(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.octeon_console*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %38, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %41

11:                                               ; preds = %5
  %12 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %13 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %12, i32 0, i32 2
  %14 = load %struct.octeon_console*, %struct.octeon_console** %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.octeon_console, %struct.octeon_console* %14, i64 %15
  store %struct.octeon_console* %16, %struct.octeon_console** %4, align 8
  %17 = load %struct.octeon_console*, %struct.octeon_console** %4, align 8
  %18 = getelementptr inbounds %struct.octeon_console, %struct.octeon_console* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %38

22:                                               ; preds = %11
  %23 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %24 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @cancel_delayed_work_sync(i32* %28)
  %30 = load %struct.octeon_console*, %struct.octeon_console** %4, align 8
  %31 = getelementptr inbounds %struct.octeon_console, %struct.octeon_console* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.octeon_console*, %struct.octeon_console** %4, align 8
  %33 = getelementptr inbounds %struct.octeon_console, %struct.octeon_console* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.octeon_console*, %struct.octeon_console** %4, align 8
  %35 = getelementptr inbounds %struct.octeon_console, %struct.octeon_console* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.octeon_console*, %struct.octeon_console** %4, align 8
  %37 = getelementptr inbounds %struct.octeon_console, %struct.octeon_console* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %22, %21
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %3, align 8
  br label %5

41:                                               ; preds = %5
  %42 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %43 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
