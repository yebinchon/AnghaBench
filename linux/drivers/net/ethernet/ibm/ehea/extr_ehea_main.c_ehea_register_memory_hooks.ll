; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_register_memory_hooks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_register_memory_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ehea_memory_hooks_registered = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ehea_create_busmap failed\0A\00", align 1
@ehea_reboot_nb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"register_reboot_notifier failed\0A\00", align 1
@ehea_mem_nb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"register_memory_notifier failed\0A\00", align 1
@ehea_crash_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"crash_shutdown_register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ehea_register_memory_hooks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_register_memory_hooks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 @atomic_inc_return(i32* @ehea_memory_hooks_registered)
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %39

6:                                                ; preds = %0
  %7 = call i32 (...) @ehea_create_busmap()
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %36

12:                                               ; preds = %6
  %13 = call i32 @register_reboot_notifier(i32* @ehea_reboot_nb)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %36

18:                                               ; preds = %12
  %19 = call i32 @register_memory_notifier(i32* @ehea_mem_nb)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %34

24:                                               ; preds = %18
  %25 = load i32, i32* @ehea_crash_handler, align 4
  %26 = call i32 @crash_shutdown_register(i32 %25)
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %32

31:                                               ; preds = %24
  store i32 0, i32* %1, align 4
  br label %39

32:                                               ; preds = %29
  %33 = call i32 @unregister_memory_notifier(i32* @ehea_mem_nb)
  br label %34

34:                                               ; preds = %32, %22
  %35 = call i32 @unregister_reboot_notifier(i32* @ehea_reboot_nb)
  br label %36

36:                                               ; preds = %34, %16, %10
  %37 = call i32 @atomic_dec(i32* @ehea_memory_hooks_registered)
  %38 = load i32, i32* %2, align 4
  store i32 %38, i32* %1, align 4
  br label %39

39:                                               ; preds = %36, %31, %5
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @ehea_create_busmap(...) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @register_reboot_notifier(i32*) #1

declare dso_local i32 @register_memory_notifier(i32*) #1

declare dso_local i32 @crash_shutdown_register(i32) #1

declare dso_local i32 @unregister_memory_notifier(i32*) #1

declare dso_local i32 @unregister_reboot_notifier(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
