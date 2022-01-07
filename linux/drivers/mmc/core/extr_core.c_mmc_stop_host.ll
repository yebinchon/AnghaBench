; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_stop_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_stop_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.TYPE_3__*, i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 (%struct.mmc_host*)* }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_stop_host(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %3 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %3, i32 0, i32 5
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %10 = call i32 @mmc_gpio_set_cd_wake(%struct.mmc_host* %9, i32 0)
  %11 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %12 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @disable_irq(i64 %14)
  br label %16

16:                                               ; preds = %8, %1
  %17 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %18 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %20 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %19, i32 0, i32 4
  %21 = call i32 @cancel_delayed_work_sync(i32* %20)
  %22 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %23 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %25 = call i32 @mmc_bus_get(%struct.mmc_host* %24)
  %26 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %27 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %53

30:                                               ; preds = %16
  %31 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %32 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %30
  %36 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %37 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %39, align 8
  %41 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %42 = call i32 %40(%struct.mmc_host* %41)
  %43 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %44 = call i32 @mmc_claim_host(%struct.mmc_host* %43)
  %45 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %46 = call i32 @mmc_detach_bus(%struct.mmc_host* %45)
  %47 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %48 = call i32 @mmc_power_off(%struct.mmc_host* %47)
  %49 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %50 = call i32 @mmc_release_host(%struct.mmc_host* %49)
  %51 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %52 = call i32 @mmc_bus_put(%struct.mmc_host* %51)
  br label %62

53:                                               ; preds = %30, %16
  %54 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %55 = call i32 @mmc_bus_put(%struct.mmc_host* %54)
  %56 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %57 = call i32 @mmc_claim_host(%struct.mmc_host* %56)
  %58 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %59 = call i32 @mmc_power_off(%struct.mmc_host* %58)
  %60 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %61 = call i32 @mmc_release_host(%struct.mmc_host* %60)
  br label %62

62:                                               ; preds = %53, %35
  ret void
}

declare dso_local i32 @mmc_gpio_set_cd_wake(%struct.mmc_host*, i32) #1

declare dso_local i32 @disable_irq(i64) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mmc_bus_get(%struct.mmc_host*) #1

declare dso_local i32 @mmc_claim_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_detach_bus(%struct.mmc_host*) #1

declare dso_local i32 @mmc_power_off(%struct.mmc_host*) #1

declare dso_local i32 @mmc_release_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_bus_put(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
