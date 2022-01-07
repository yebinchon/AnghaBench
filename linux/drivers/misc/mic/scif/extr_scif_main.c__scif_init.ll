; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_main.c__scif_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_main.c__scif_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@scif_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SCIF_RMA_TEMP_CACHE_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Unaligned_DMA\00", align 1
@SCIF_KMEM_UNALIGNED_BUF_SIZE = common dso_local global i32 0, align 4
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@unaligned_cache = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@scif_misc_handler = common dso_local global i32 0, align 4
@scif_mmu_notif_handler = common dso_local global i32 0, align 4
@scif_conn_handler = common dso_local global i32 0, align 4
@scif_ports = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @_scif_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scif_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @mutex_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 23))
  %4 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 22))
  %5 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 21))
  %6 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 20))
  %7 = call i32 @mutex_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 19))
  %8 = call i32 @mutex_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 18))
  %9 = call i32 @mutex_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 17))
  %10 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 16))
  %11 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 15))
  %12 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 14))
  %13 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 13))
  %14 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 12))
  %15 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 11))
  %16 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 10))
  %17 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 9))
  %18 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 8))
  %19 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 7))
  %20 = call i32 @init_waitqueue_head(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 6))
  %21 = load i32, i32* @SCIF_RMA_TEMP_CACHE_LIMIT, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 0), align 8
  %22 = call i32 (...) @scif_setup_scifdev()
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %0
  br label %45

26:                                               ; preds = %0
  %27 = load i32, i32* @SCIF_KMEM_UNALIGNED_BUF_SIZE, align 4
  %28 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %29 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %27, i32 0, i32 %28, i32* null)
  store i32 %29, i32* @unaligned_cache, align 4
  %30 = load i32, i32* @unaligned_cache, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %43

35:                                               ; preds = %26
  %36 = load i32, i32* @scif_misc_handler, align 4
  %37 = call i32 @INIT_WORK(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 3), i32 %36)
  %38 = load i32, i32* @scif_mmu_notif_handler, align 4
  %39 = call i32 @INIT_WORK(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 2), i32 %38)
  %40 = load i32, i32* @scif_conn_handler, align 4
  %41 = call i32 @INIT_WORK(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 1), i32 %40)
  %42 = call i32 @idr_init(i32* @scif_ports)
  store i32 0, i32* %1, align 4
  br label %47

43:                                               ; preds = %32
  %44 = call i32 (...) @scif_destroy_scifdev()
  br label %45

45:                                               ; preds = %43, %25
  %46 = load i32, i32* %2, align 4
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %45, %35
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @scif_setup_scifdev(...) #1

declare dso_local i32 @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @scif_destroy_scifdev(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
