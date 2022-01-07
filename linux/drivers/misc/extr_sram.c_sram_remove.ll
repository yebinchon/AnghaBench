; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_sram.c_sram_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_sram.c_sram_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sram_dev = type { i64, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"removed while SRAM allocated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sram_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sram_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sram_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.sram_dev* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.sram_dev* %5, %struct.sram_dev** %3, align 8
  %6 = load %struct.sram_dev*, %struct.sram_dev** %3, align 8
  %7 = call i32 @sram_free_partitions(%struct.sram_dev* %6)
  %8 = load %struct.sram_dev*, %struct.sram_dev** %3, align 8
  %9 = getelementptr inbounds %struct.sram_dev, %struct.sram_dev* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @gen_pool_avail(i32 %10)
  %12 = load %struct.sram_dev*, %struct.sram_dev** %3, align 8
  %13 = getelementptr inbounds %struct.sram_dev, %struct.sram_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @gen_pool_size(i32 %14)
  %16 = icmp slt i64 %11, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.sram_dev*, %struct.sram_dev** %3, align 8
  %19 = getelementptr inbounds %struct.sram_dev, %struct.sram_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.sram_dev*, %struct.sram_dev** %3, align 8
  %24 = getelementptr inbounds %struct.sram_dev, %struct.sram_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.sram_dev*, %struct.sram_dev** %3, align 8
  %29 = getelementptr inbounds %struct.sram_dev, %struct.sram_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @clk_disable_unprepare(i64 %30)
  br label %32

32:                                               ; preds = %27, %22
  ret i32 0
}

declare dso_local %struct.sram_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @sram_free_partitions(%struct.sram_dev*) #1

declare dso_local i64 @gen_pool_avail(i32) #1

declare dso_local i64 @gen_pool_size(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
