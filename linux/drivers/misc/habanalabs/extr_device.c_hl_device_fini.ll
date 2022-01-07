; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_hl_device_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_hl_device_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32, %struct.TYPE_4__*, i32*, %struct.TYPE_3__, i32, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.hl_device*)*, i32 (%struct.hl_device*, i32)*, i32 (%struct.hl_device*, i32)*, i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Removing device\0A\00", align 1
@HL_PENDING_RESET_PER_SEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Failed to remove device because reset function did not finish\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"kernel ctx is still alive\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"removed device successfully\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hl_device_fini(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %6 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %7 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @dev_info(i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (...) @ktime_get()
  %11 = load i32, i32* @HL_PENDING_RESET_PER_SEC, align 4
  %12 = mul nsw i32 %11, 1000
  %13 = mul nsw i32 %12, 1000
  %14 = mul nsw i32 %13, 4
  %15 = call i32 @ktime_add_us(i32 %10, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %17 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %16, i32 0, i32 9
  %18 = call i32 @atomic_cmpxchg(i32* %17, i32 0, i32 1)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %33, %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = call i32 @usleep_range(i32 50, i32 200)
  %24 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %25 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %24, i32 0, i32 9
  %26 = call i32 @atomic_cmpxchg(i32* %25, i32 0, i32 1)
  store i32 %26, i32* %4, align 4
  %27 = call i32 (...) @ktime_get()
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @ktime_compare(i32 %27, i32 %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %147

33:                                               ; preds = %22
  br label %19

34:                                               ; preds = %19
  %35 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %36 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %38 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %40, align 8
  %42 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %43 = call i32 %41(%struct.hl_device* %42)
  %44 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %45 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %47, align 8
  %49 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %50 = call i32 %48(%struct.hl_device* %49)
  %51 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %52 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %51, i32 0, i32 8
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %55 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %54, i32 0, i32 8
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %58 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %60 = call i32 @hl_hwmon_fini(%struct.hl_device* %59)
  %61 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %62 = call i32 @device_late_fini(%struct.hl_device* %61)
  %63 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %64 = call i32 @hl_debugfs_remove_device(%struct.hl_device* %63)
  %65 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %66 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32 (%struct.hl_device*, i32)*, i32 (%struct.hl_device*, i32)** %68, align 8
  %70 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %71 = call i32 %69(%struct.hl_device* %70, i32 1)
  %72 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %73 = call i32 @hl_cs_rollback_all(%struct.hl_device* %72)
  %74 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %75 = call i32 @device_kill_open_processes(%struct.hl_device* %74)
  %76 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %77 = call i32 @hl_cb_pool_fini(%struct.hl_device* %76)
  %78 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %79 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %78, i32 0, i32 7
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %34
  %83 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %84 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %83, i32 0, i32 7
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @hl_ctx_put(i64 %85)
  %87 = icmp ne i32 %86, 1
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %90 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %88, %82, %34
  %94 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %95 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32 (%struct.hl_device*, i32)*, i32 (%struct.hl_device*, i32)** %97, align 8
  %99 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %100 = call i32 %98(%struct.hl_device* %99, i32 1)
  %101 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %102 = call i32 @hl_vm_fini(%struct.hl_device* %101)
  %103 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %104 = call i32 @hl_mmu_fini(%struct.hl_device* %103)
  %105 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %106 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %107 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %106, i32 0, i32 5
  %108 = call i32 @hl_eq_fini(%struct.hl_device* %105, i32* %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %125, %93
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %112 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %110, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %109
  %117 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %118 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %119 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %3, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = call i32 @hl_cq_fini(%struct.hl_device* %117, i32* %123)
  br label %125

125:                                              ; preds = %116
  %126 = load i32, i32* %3, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %3, align 4
  br label %109

128:                                              ; preds = %109
  %129 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %130 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @kfree(i32* %131)
  %133 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %134 = call i32 @hl_hw_queues_destroy(%struct.hl_device* %133)
  %135 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %136 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %135, i32 0, i32 2
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %138, align 8
  %140 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %141 = call i32 %139(%struct.hl_device* %140)
  %142 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %143 = call i32 @device_early_fini(%struct.hl_device* %142)
  %144 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %145 = call i32 @device_cdev_sysfs_del(%struct.hl_device* %144)
  %146 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %147

147:                                              ; preds = %128, %31
  ret void
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @ktime_add_us(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @ktime_compare(i32, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hl_hwmon_fini(%struct.hl_device*) #1

declare dso_local i32 @device_late_fini(%struct.hl_device*) #1

declare dso_local i32 @hl_debugfs_remove_device(%struct.hl_device*) #1

declare dso_local i32 @hl_cs_rollback_all(%struct.hl_device*) #1

declare dso_local i32 @device_kill_open_processes(%struct.hl_device*) #1

declare dso_local i32 @hl_cb_pool_fini(%struct.hl_device*) #1

declare dso_local i32 @hl_ctx_put(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @hl_vm_fini(%struct.hl_device*) #1

declare dso_local i32 @hl_mmu_fini(%struct.hl_device*) #1

declare dso_local i32 @hl_eq_fini(%struct.hl_device*, i32*) #1

declare dso_local i32 @hl_cq_fini(%struct.hl_device*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @hl_hw_queues_destroy(%struct.hl_device*) #1

declare dso_local i32 @device_early_fini(%struct.hl_device*) #1

declare dso_local i32 @device_cdev_sysfs_del(%struct.hl_device*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
