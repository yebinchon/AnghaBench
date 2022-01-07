; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_clk_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_clk_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_device = type { %struct.isc_clk*, %struct.TYPE_2__* }
%struct.isc_clk = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_clk_cleanup(%struct.isc_device* %0) #0 {
  %2 = alloca %struct.isc_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.isc_clk*, align 8
  store %struct.isc_device* %0, %struct.isc_device** %2, align 8
  %5 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %6 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @of_clk_del_provider(i32 %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %36, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %14 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %13, i32 0, i32 0
  %15 = load %struct.isc_clk*, %struct.isc_clk** %14, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.isc_clk* %15)
  %17 = icmp ult i32 %12, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %11
  %19 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %20 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %19, i32 0, i32 0
  %21 = load %struct.isc_clk*, %struct.isc_clk** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.isc_clk, %struct.isc_clk* %21, i64 %23
  store %struct.isc_clk* %24, %struct.isc_clk** %4, align 8
  %25 = load %struct.isc_clk*, %struct.isc_clk** %4, align 8
  %26 = getelementptr inbounds %struct.isc_clk, %struct.isc_clk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IS_ERR(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %18
  %31 = load %struct.isc_clk*, %struct.isc_clk** %4, align 8
  %32 = getelementptr inbounds %struct.isc_clk, %struct.isc_clk* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clk_unregister(i32 %33)
  br label %35

35:                                               ; preds = %30, %18
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %11

39:                                               ; preds = %11
  ret void
}

declare dso_local i32 @of_clk_del_provider(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.isc_clk*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
