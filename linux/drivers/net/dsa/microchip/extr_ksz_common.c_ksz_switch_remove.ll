; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz_common.c_ksz_switch_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz_common.c_ksz_switch_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i64, i32, %struct.TYPE_3__*, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 (%struct.ksz_device*)* }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ksz_switch_remove(%struct.ksz_device* %0) #0 {
  %2 = alloca %struct.ksz_device*, align 8
  store %struct.ksz_device* %0, %struct.ksz_device** %2, align 8
  %3 = load %struct.ksz_device*, %struct.ksz_device** %2, align 8
  %4 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.ksz_device*, %struct.ksz_device** %2, align 8
  %10 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %9, i32 0, i32 4
  %11 = call i32 @del_timer_sync(%struct.TYPE_4__* %10)
  %12 = load %struct.ksz_device*, %struct.ksz_device** %2, align 8
  %13 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %12, i32 0, i32 3
  %14 = call i32 @flush_work(i32* %13)
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.ksz_device*, %struct.ksz_device** %2, align 8
  %17 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.ksz_device*)*, i32 (%struct.ksz_device*)** %19, align 8
  %21 = load %struct.ksz_device*, %struct.ksz_device** %2, align 8
  %22 = call i32 %20(%struct.ksz_device* %21)
  %23 = load %struct.ksz_device*, %struct.ksz_device** %2, align 8
  %24 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dsa_unregister_switch(i32 %25)
  %27 = load %struct.ksz_device*, %struct.ksz_device** %2, align 8
  %28 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %15
  %32 = load %struct.ksz_device*, %struct.ksz_device** %2, align 8
  %33 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @gpiod_set_value_cansleep(i64 %34, i32 1)
  br label %36

36:                                               ; preds = %31, %15
  ret void
}

declare dso_local i32 @del_timer_sync(%struct.TYPE_4__*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @dsa_unregister_switch(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
