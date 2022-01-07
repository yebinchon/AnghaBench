; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_clk_init(%struct.isc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.isc_device* %0, %struct.isc_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %9 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %10)
  %12 = icmp ult i32 %7, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %6
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i32 @ERR_PTR(i32 %15)
  %17 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %18 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %16, i32* %23, align 4
  br label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %6

27:                                               ; preds = %6
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %44, %27
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %31 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %32)
  %34 = icmp ult i32 %29, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @isc_clk_register(%struct.isc_device* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %48

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %28

47:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %41
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @isc_clk_register(%struct.isc_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
