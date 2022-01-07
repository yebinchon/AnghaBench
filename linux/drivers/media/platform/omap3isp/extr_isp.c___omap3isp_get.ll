; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c___omap3isp_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c___omap3isp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.isp_device* (%struct.isp_device*, i32)* @__omap3isp_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.isp_device* @__omap3isp_get(%struct.isp_device* %0, i32 %1) #0 {
  %3 = alloca %struct.isp_device*, align 8
  %4 = alloca %struct.isp_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.isp_device*, align 8
  store %struct.isp_device* %0, %struct.isp_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  store %struct.isp_device* %7, %struct.isp_device** %6, align 8
  %8 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %9 = icmp eq %struct.isp_device* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.isp_device* null, %struct.isp_device** %3, align 8
  br label %53

11:                                               ; preds = %2
  %12 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %13 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %16 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %40

20:                                               ; preds = %11
  %21 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %22 = call i64 @isp_enable_clocks(%struct.isp_device* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store %struct.isp_device* null, %struct.isp_device** %6, align 8
  br label %40

25:                                               ; preds = %20
  %26 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %27 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %32 = call i32 @isp_restore_ctx(%struct.isp_device* %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %38 = call i32 @isp_enable_interrupts(%struct.isp_device* %37)
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %24, %19
  %41 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %42 = icmp ne %struct.isp_device* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %45 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %43, %40
  %49 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %50 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  store %struct.isp_device* %52, %struct.isp_device** %3, align 8
  br label %53

53:                                               ; preds = %48, %10
  %54 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  ret %struct.isp_device* %54
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @isp_enable_clocks(%struct.isp_device*) #1

declare dso_local i32 @isp_restore_ctx(%struct.isp_device*) #1

declare dso_local i32 @isp_enable_interrupts(%struct.isp_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
