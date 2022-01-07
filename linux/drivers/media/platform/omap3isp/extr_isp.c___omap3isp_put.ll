; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c___omap3isp_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c___omap3isp_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i64, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_device*, i32)* @__omap3isp_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__omap3isp_put(%struct.isp_device* %0, i32 %1) #0 {
  %3 = alloca %struct.isp_device*, align 8
  %4 = alloca i32, align 4
  store %struct.isp_device* %0, %struct.isp_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %6 = icmp eq %struct.isp_device* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %53

8:                                                ; preds = %2
  %9 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %10 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %13 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %19 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %8
  %24 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %25 = call i32 @isp_disable_interrupts(%struct.isp_device* %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %30 = call i32 @isp_save_ctx(%struct.isp_device* %29)
  %31 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %32 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %31, i32 0, i32 1
  store i32 1, i32* %32, align 8
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %35 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %34, i32 0, i32 4
  %36 = call i32 @media_entity_enum_empty(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %40 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %33
  %44 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %45 = call i32 @isp_reset(%struct.isp_device* %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %48 = call i32 @isp_disable_clocks(%struct.isp_device* %47)
  br label %49

49:                                               ; preds = %46, %8
  %50 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %51 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %50, i32 0, i32 2
  %52 = call i32 @mutex_unlock(i32* %51)
  br label %53

53:                                               ; preds = %49, %7
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @isp_disable_interrupts(%struct.isp_device*) #1

declare dso_local i32 @isp_save_ctx(%struct.isp_device*) #1

declare dso_local i32 @media_entity_enum_empty(i32*) #1

declare dso_local i32 @isp_reset(%struct.isp_device*) #1

declare dso_local i32 @isp_disable_clocks(%struct.isp_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
