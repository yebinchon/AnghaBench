; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_mem_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_mem_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.memory_notify = type { i32, i32 }

@NOTIFY_BAD = common dso_local global i32 0, align 4
@dlpar_mem_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"memory offlining canceled\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"memory is going online\00", align 1
@__EHEA_STOP_XFER = common dso_local global i32 0, align 4
@ehea_driver_flags = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"memory is going offline\00", align 1
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @ehea_mem_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_mem_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.memory_notify*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.memory_notify*
  store %struct.memory_notify* %11, %struct.memory_notify** %8, align 8
  %12 = call i32 @mutex_lock(i32* @dlpar_mem_lock)
  %13 = load i64, i64* %5, align 8
  switch i64 %13, label %46 [
    i64 130, label %14
    i64 128, label %16
    i64 129, label %31
  ]

14:                                               ; preds = %3
  %15 = call i32 @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %3, %14
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @__EHEA_STOP_XFER, align 4
  %19 = call i32 @set_bit(i32 %18, i32* @ehea_driver_flags)
  %20 = load %struct.memory_notify*, %struct.memory_notify** %8, align 8
  %21 = getelementptr inbounds %struct.memory_notify, %struct.memory_notify* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.memory_notify*, %struct.memory_notify** %8, align 8
  %24 = getelementptr inbounds %struct.memory_notify, %struct.memory_notify* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ehea_add_sect_bmap(i32 %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %50

29:                                               ; preds = %16
  %30 = call i32 (...) @ehea_rereg_mrs()
  br label %47

31:                                               ; preds = %3
  %32 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @__EHEA_STOP_XFER, align 4
  %34 = call i32 @set_bit(i32 %33, i32* @ehea_driver_flags)
  %35 = load %struct.memory_notify*, %struct.memory_notify** %8, align 8
  %36 = getelementptr inbounds %struct.memory_notify, %struct.memory_notify* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.memory_notify*, %struct.memory_notify** %8, align 8
  %39 = getelementptr inbounds %struct.memory_notify, %struct.memory_notify* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ehea_rem_sect_bmap(i32 %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %50

44:                                               ; preds = %31
  %45 = call i32 (...) @ehea_rereg_mrs()
  br label %47

46:                                               ; preds = %3
  br label %47

47:                                               ; preds = %46, %44, %29
  %48 = call i32 (...) @ehea_update_firmware_handles()
  %49 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %43, %28
  %51 = call i32 @mutex_unlock(i32* @dlpar_mem_lock)
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ehea_add_sect_bmap(i32, i32) #1

declare dso_local i32 @ehea_rereg_mrs(...) #1

declare dso_local i32 @ehea_rem_sect_bmap(i32, i32) #1

declare dso_local i32 @ehea_update_firmware_handles(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
