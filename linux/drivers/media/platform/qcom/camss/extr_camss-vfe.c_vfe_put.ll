; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"vfe power off on power_count == 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*)* @vfe_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_put(%struct.vfe_device* %0) #0 {
  %2 = alloca %struct.vfe_device*, align 8
  store %struct.vfe_device* %0, %struct.vfe_device** %2, align 8
  %3 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %4 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %7 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %12 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %59

17:                                               ; preds = %1
  %18 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %19 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %53

22:                                               ; preds = %17
  %23 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %24 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %29 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %28, i32 0, i32 6
  store i64 0, i64* %29, align 8
  %30 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %31 = call i32 @vfe_halt(%struct.vfe_device* %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %34 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %37 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @camss_disable_clocks(i32 %35, i32 %38)
  %40 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %41 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pm_runtime_put_sync(i32 %44)
  %46 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %47 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %50 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @camss_pm_domain_off(%struct.TYPE_2__* %48, i32 %51)
  br label %53

53:                                               ; preds = %32, %17
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %56 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %54, %10
  %60 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %61 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @vfe_halt(%struct.vfe_device*) #1

declare dso_local i32 @camss_disable_clocks(i32, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @camss_pm_domain_off(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
