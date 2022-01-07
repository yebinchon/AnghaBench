; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_console.c_octeon_wait_for_bootloader.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_console.c_octeon_wait_for_bootloader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"waiting %d0 ms for bootloader\0A\00", align 1
@BOOTLOADER_PCI_READ_BUFFER_OWNER_ADDR = common dso_local global i32 0, align 4
@OCTEON_PCI_IO_BUF_OWNER_HOST = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_wait_for_bootloader(%struct.octeon_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %7 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %13 = call i64 @octeon_mem_access_ok(%struct.octeon_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %38

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %33, %16
  %18 = load i64, i64* %5, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %22 = load i32, i32* @BOOTLOADER_PCI_READ_BUFFER_OWNER_ADDR, align 4
  %23 = call i64 @octeon_read_device_mem32(%struct.octeon_device* %21, i32 %22)
  %24 = load i64, i64* @OCTEON_PCI_IO_BUF_OWNER_HOST, align 8
  %25 = icmp ne i64 %23, %24
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi i1 [ false, %17 ], [ %25, %20 ]
  br i1 %27, label %28, label %37

28:                                               ; preds = %26
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %5, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %38

33:                                               ; preds = %28
  %34 = load i32, i32* @HZ, align 4
  %35 = sdiv i32 %34, 100
  %36 = call i32 @schedule_timeout_uninterruptible(i32 %35)
  br label %17

37:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %32, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i64 @octeon_mem_access_ok(%struct.octeon_device*) #1

declare dso_local i64 @octeon_read_device_mem32(%struct.octeon_device*, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
