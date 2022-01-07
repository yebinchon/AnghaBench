; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_devm_rc_allocate_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_devm_rc_allocate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@devm_rc_alloc_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rc_dev* @devm_rc_allocate_device(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.rc_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rc_dev**, align 8
  %7 = alloca %struct.rc_dev*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @devm_rc_alloc_release, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.rc_dev** @devres_alloc(i32 %8, i32 8, i32 %9)
  store %struct.rc_dev** %10, %struct.rc_dev*** %6, align 8
  %11 = load %struct.rc_dev**, %struct.rc_dev*** %6, align 8
  %12 = icmp ne %struct.rc_dev** %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.rc_dev* null, %struct.rc_dev** %3, align 8
  br label %35

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.rc_dev* @rc_allocate_device(i32 %15)
  store %struct.rc_dev* %16, %struct.rc_dev** %7, align 8
  %17 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %18 = icmp ne %struct.rc_dev* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load %struct.rc_dev**, %struct.rc_dev*** %6, align 8
  %21 = call i32 @devres_free(%struct.rc_dev** %20)
  store %struct.rc_dev* null, %struct.rc_dev** %3, align 8
  br label %35

22:                                               ; preds = %14
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %25 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.device* %23, %struct.device** %26, align 8
  %27 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %28 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %30 = load %struct.rc_dev**, %struct.rc_dev*** %6, align 8
  store %struct.rc_dev* %29, %struct.rc_dev** %30, align 8
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.rc_dev**, %struct.rc_dev*** %6, align 8
  %33 = call i32 @devres_add(%struct.device* %31, %struct.rc_dev** %32)
  %34 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  store %struct.rc_dev* %34, %struct.rc_dev** %3, align 8
  br label %35

35:                                               ; preds = %22, %19, %13
  %36 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  ret %struct.rc_dev* %36
}

declare dso_local %struct.rc_dev** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @devres_free(%struct.rc_dev**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.rc_dev**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
