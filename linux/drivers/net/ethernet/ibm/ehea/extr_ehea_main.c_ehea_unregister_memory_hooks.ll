; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_unregister_memory_hooks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_unregister_memory_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ehea_memory_hooks_registered = common dso_local global i32 0, align 4
@ehea_reboot_nb = common dso_local global i32 0, align 4
@ehea_crash_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed unregistering crash handler\0A\00", align 1
@ehea_mem_nb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ehea_unregister_memory_hooks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_unregister_memory_hooks() #0 {
  %1 = call i64 @atomic_read(i32* @ehea_memory_hooks_registered)
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %13

4:                                                ; preds = %0
  %5 = call i32 @unregister_reboot_notifier(i32* @ehea_reboot_nb)
  %6 = load i32, i32* @ehea_crash_handler, align 4
  %7 = call i64 @crash_shutdown_unregister(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %4
  %12 = call i32 @unregister_memory_notifier(i32* @ehea_mem_nb)
  br label %13

13:                                               ; preds = %11, %3
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @unregister_reboot_notifier(i32*) #1

declare dso_local i64 @crash_shutdown_unregister(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @unregister_memory_notifier(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
