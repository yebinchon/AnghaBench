; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_sram.c_sram_add_export.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_sram.c_sram_add_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sram_dev = type { i32 }
%struct.sram_reserve = type { i32 }
%struct.sram_partition = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%llx.sram\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@sram_read = common dso_local global i32 0, align 4
@sram_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sram_dev*, %struct.sram_reserve*, i64, %struct.sram_partition*)* @sram_add_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sram_add_export(%struct.sram_dev* %0, %struct.sram_reserve* %1, i64 %2, %struct.sram_partition* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sram_dev*, align 8
  %7 = alloca %struct.sram_reserve*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sram_partition*, align 8
  store %struct.sram_dev* %0, %struct.sram_dev** %6, align 8
  store %struct.sram_reserve* %1, %struct.sram_reserve** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.sram_partition* %3, %struct.sram_partition** %9, align 8
  %10 = load %struct.sram_partition*, %struct.sram_partition** %9, align 8
  %11 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %10, i32 0, i32 0
  %12 = call i32 @sysfs_bin_attr_init(%struct.TYPE_5__* %11)
  %13 = load %struct.sram_dev*, %struct.sram_dev** %6, align 8
  %14 = getelementptr inbounds %struct.sram_dev, %struct.sram_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @devm_kasprintf(i32 %15, i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.sram_partition*, %struct.sram_partition** %9, align 8
  %20 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %18, i32* %22, align 4
  %23 = load %struct.sram_partition*, %struct.sram_partition** %9, align 8
  %24 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %60

32:                                               ; preds = %4
  %33 = load i32, i32* @S_IRUSR, align 4
  %34 = load i32, i32* @S_IWUSR, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.sram_partition*, %struct.sram_partition** %9, align 8
  %37 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* @sram_read, align 4
  %41 = load %struct.sram_partition*, %struct.sram_partition** %9, align 8
  %42 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @sram_write, align 4
  %45 = load %struct.sram_partition*, %struct.sram_partition** %9, align 8
  %46 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.sram_reserve*, %struct.sram_reserve** %7, align 8
  %49 = getelementptr inbounds %struct.sram_reserve, %struct.sram_reserve* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sram_partition*, %struct.sram_partition** %9, align 8
  %52 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.sram_dev*, %struct.sram_dev** %6, align 8
  %55 = getelementptr inbounds %struct.sram_dev, %struct.sram_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sram_partition*, %struct.sram_partition** %9, align 8
  %58 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %57, i32 0, i32 0
  %59 = call i32 @device_create_bin_file(i32 %56, %struct.TYPE_5__* %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %32, %29
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @sysfs_bin_attr_init(%struct.TYPE_5__*) #1

declare dso_local i32 @devm_kasprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @device_create_bin_file(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
