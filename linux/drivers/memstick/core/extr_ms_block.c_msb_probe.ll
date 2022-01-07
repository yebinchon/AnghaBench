; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_dev = type { i32, i32, i32 }
%struct.msb_data = type { i32, %struct.memstick_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@msb_check_card = common dso_local global i32 0, align 4
@msb_stop = common dso_local global i32 0, align 4
@msb_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_dev*)* @msb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_probe(%struct.memstick_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.memstick_dev*, align 8
  %4 = alloca %struct.msb_data*, align 8
  %5 = alloca i32, align 4
  store %struct.memstick_dev* %0, %struct.memstick_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.msb_data* @kzalloc(i32 16, i32 %6)
  store %struct.msb_data* %7, %struct.msb_data** %4, align 8
  %8 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %9 = icmp ne %struct.msb_data* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %52

13:                                               ; preds = %1
  %14 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %15 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %16 = call i32 @memstick_set_drvdata(%struct.memstick_dev* %14, %struct.msb_data* %15)
  %17 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %18 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %19 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %18, i32 0, i32 1
  store %struct.memstick_dev* %17, %struct.memstick_dev** %19, align 8
  %20 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %21 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %24 = call i32 @msb_init_card(%struct.memstick_dev* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  br label %44

28:                                               ; preds = %13
  %29 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %30 = call i32 @msb_init_disk(%struct.memstick_dev* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @msb_check_card, align 4
  %35 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %36 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @msb_stop, align 4
  %38 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %39 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @msb_start, align 4
  %41 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %42 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %2, align 4
  br label %52

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %27
  %45 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %46 = call i32 @memstick_set_drvdata(%struct.memstick_dev* %45, %struct.msb_data* null)
  %47 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %48 = call i32 @msb_data_clear(%struct.msb_data* %47)
  %49 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %50 = call i32 @kfree(%struct.msb_data* %49)
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %44, %33, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.msb_data* @kzalloc(i32, i32) #1

declare dso_local i32 @memstick_set_drvdata(%struct.memstick_dev*, %struct.msb_data*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @msb_init_card(%struct.memstick_dev*) #1

declare dso_local i32 @msb_init_disk(%struct.memstick_dev*) #1

declare dso_local i32 @msb_data_clear(%struct.msb_data*) #1

declare dso_local i32 @kfree(%struct.msb_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
