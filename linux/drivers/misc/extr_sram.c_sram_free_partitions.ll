; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_sram.c_sram_free_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_sram.c_sram_free_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sram_dev = type { i32, i32, %struct.sram_partition* }
%struct.sram_partition = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"removed pool while SRAM allocated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sram_dev*)* @sram_free_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sram_free_partitions(%struct.sram_dev* %0) #0 {
  %2 = alloca %struct.sram_dev*, align 8
  %3 = alloca %struct.sram_partition*, align 8
  store %struct.sram_dev* %0, %struct.sram_dev** %2, align 8
  %4 = load %struct.sram_dev*, %struct.sram_dev** %2, align 8
  %5 = getelementptr inbounds %struct.sram_dev, %struct.sram_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %65

9:                                                ; preds = %1
  %10 = load %struct.sram_dev*, %struct.sram_dev** %2, align 8
  %11 = getelementptr inbounds %struct.sram_dev, %struct.sram_dev* %10, i32 0, i32 2
  %12 = load %struct.sram_partition*, %struct.sram_partition** %11, align 8
  %13 = load %struct.sram_dev*, %struct.sram_dev** %2, align 8
  %14 = getelementptr inbounds %struct.sram_dev, %struct.sram_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %12, i64 %17
  store %struct.sram_partition* %18, %struct.sram_partition** %3, align 8
  br label %19

19:                                               ; preds = %58, %9
  %20 = load %struct.sram_dev*, %struct.sram_dev** %2, align 8
  %21 = getelementptr inbounds %struct.sram_dev, %struct.sram_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %19
  %25 = load %struct.sram_partition*, %struct.sram_partition** %3, align 8
  %26 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.sram_dev*, %struct.sram_dev** %2, align 8
  %32 = getelementptr inbounds %struct.sram_dev, %struct.sram_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sram_partition*, %struct.sram_partition** %3, align 8
  %35 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %34, i32 0, i32 1
  %36 = call i32 @device_remove_bin_file(i32 %33, %struct.TYPE_2__* %35)
  br label %37

37:                                               ; preds = %30, %24
  %38 = load %struct.sram_partition*, %struct.sram_partition** %3, align 8
  %39 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load %struct.sram_partition*, %struct.sram_partition** %3, align 8
  %44 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @gen_pool_avail(i64 %45)
  %47 = load %struct.sram_partition*, %struct.sram_partition** %3, align 8
  %48 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @gen_pool_size(i64 %49)
  %51 = icmp slt i64 %46, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load %struct.sram_dev*, %struct.sram_dev** %2, align 8
  %54 = getelementptr inbounds %struct.sram_dev, %struct.sram_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %42, %37
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.sram_dev*, %struct.sram_dev** %2, align 8
  %60 = getelementptr inbounds %struct.sram_dev, %struct.sram_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 8
  %63 = load %struct.sram_partition*, %struct.sram_partition** %3, align 8
  %64 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %63, i32 -1
  store %struct.sram_partition* %64, %struct.sram_partition** %3, align 8
  br label %19

65:                                               ; preds = %8, %19
  ret void
}

declare dso_local i32 @device_remove_bin_file(i32, %struct.TYPE_2__*) #1

declare dso_local i64 @gen_pool_avail(i64) #1

declare dso_local i64 @gen_pool_size(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
