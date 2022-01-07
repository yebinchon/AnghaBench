; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_setup_device_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_setup_device_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"could not setup device_resources: err=%d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gve_priv*)* @gve_setup_device_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gve_setup_device_resources(%struct.gve_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gve_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.gve_priv* %0, %struct.gve_priv** %3, align 8
  %5 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %6 = call i32 @gve_alloc_counter_array(%struct.gve_priv* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %54

11:                                               ; preds = %1
  %12 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %13 = call i32 @gve_alloc_notify_blocks(%struct.gve_priv* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %50

17:                                               ; preds = %11
  %18 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %19 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %20 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %23 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %26 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %29 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @gve_adminq_configure_device_resources(%struct.gve_priv* %18, i32 %21, i32 %24, i32 %27, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %17
  %36 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %37 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %47

44:                                               ; preds = %17
  %45 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %46 = call i32 @gve_set_device_resources_ok(%struct.gve_priv* %45)
  store i32 0, i32* %2, align 4
  br label %54

47:                                               ; preds = %35
  %48 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %49 = call i32 @gve_free_notify_blocks(%struct.gve_priv* %48)
  br label %50

50:                                               ; preds = %47, %16
  %51 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %52 = call i32 @gve_free_counter_array(%struct.gve_priv* %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %44, %9
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @gve_alloc_counter_array(%struct.gve_priv*) #1

declare dso_local i32 @gve_alloc_notify_blocks(%struct.gve_priv*) #1

declare dso_local i32 @gve_adminq_configure_device_resources(%struct.gve_priv*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @gve_set_device_resources_ok(%struct.gve_priv*) #1

declare dso_local i32 @gve_free_notify_blocks(%struct.gve_priv*) #1

declare dso_local i32 @gve_free_counter_array(%struct.gve_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
