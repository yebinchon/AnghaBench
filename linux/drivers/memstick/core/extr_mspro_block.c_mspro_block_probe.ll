; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_mspro_block_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_mspro_block_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_dev = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mspro_block_data = type { i32, i32, %struct.memstick_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mspro_block_check_card = common dso_local global i32 0, align 4
@mspro_block_stop = common dso_local global i32 0, align 4
@mspro_block_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_dev*)* @mspro_block_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mspro_block_probe(%struct.memstick_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.memstick_dev*, align 8
  %4 = alloca %struct.mspro_block_data*, align 8
  %5 = alloca i32, align 4
  store %struct.memstick_dev* %0, %struct.memstick_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.mspro_block_data* @kzalloc(i32 16, i32 %6)
  store %struct.mspro_block_data* %7, %struct.mspro_block_data** %4, align 8
  %8 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %9 = icmp ne %struct.mspro_block_data* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %68

13:                                               ; preds = %1
  %14 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %15 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %16 = call i32 @memstick_set_drvdata(%struct.memstick_dev* %14, %struct.mspro_block_data* %15)
  %17 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %18 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %19 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %18, i32 0, i32 2
  store %struct.memstick_dev* %17, %struct.memstick_dev** %19, align 8
  %20 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %21 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %20, i32 0, i32 1
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %24 = call i32 @mspro_block_init_card(%struct.memstick_dev* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  br label %60

28:                                               ; preds = %13
  %29 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %30 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %33 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %32, i32 0, i32 0
  %34 = call i32 @sysfs_create_group(i32* %31, i32* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %60

38:                                               ; preds = %28
  %39 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %40 = call i32 @mspro_block_init_disk(%struct.memstick_dev* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @mspro_block_check_card, align 4
  %45 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %46 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @mspro_block_stop, align 4
  %48 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %49 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @mspro_block_start, align 4
  %51 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %52 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  store i32 0, i32* %2, align 4
  br label %68

53:                                               ; preds = %38
  %54 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %55 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %58 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %57, i32 0, i32 0
  %59 = call i32 @sysfs_remove_group(i32* %56, i32* %58)
  br label %60

60:                                               ; preds = %53, %37, %27
  %61 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %62 = call i32 @memstick_set_drvdata(%struct.memstick_dev* %61, %struct.mspro_block_data* null)
  %63 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %64 = call i32 @mspro_block_data_clear(%struct.mspro_block_data* %63)
  %65 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %66 = call i32 @kfree(%struct.mspro_block_data* %65)
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %60, %43, %10
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.mspro_block_data* @kzalloc(i32, i32) #1

declare dso_local i32 @memstick_set_drvdata(%struct.memstick_dev*, %struct.mspro_block_data*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mspro_block_init_card(%struct.memstick_dev*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @mspro_block_init_disk(%struct.memstick_dev*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @mspro_block_data_clear(%struct.mspro_block_data*) #1

declare dso_local i32 @kfree(%struct.mspro_block_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
