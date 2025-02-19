; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvtap.c_ipvtap_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvtap.c_ipvtap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ipvtap_cdev = common dso_local global i32 0, align 4
@ipvtap_major = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ipvtap\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@ipvtap_class = common dso_local global i32 0, align 4
@ipvtap_notifier_block = common dso_local global i32 0, align 4
@ipvtap_link_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ipvtap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvtap_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @THIS_MODULE, align 4
  %4 = call i32 @tap_create_cdev(i32* @ipvtap_cdev, i32* @ipvtap_major, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %3)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %31

8:                                                ; preds = %0
  %9 = call i32 @class_register(i32* @ipvtap_class)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %28

13:                                               ; preds = %8
  %14 = call i32 @register_netdevice_notifier(i32* @ipvtap_notifier_block)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %26

18:                                               ; preds = %13
  %19 = call i32 @ipvlan_link_register(i32* @ipvtap_link_ops)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %24

23:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %33

24:                                               ; preds = %22
  %25 = call i32 @unregister_netdevice_notifier(i32* @ipvtap_notifier_block)
  br label %26

26:                                               ; preds = %24, %17
  %27 = call i32 @class_unregister(i32* @ipvtap_class)
  br label %28

28:                                               ; preds = %26, %12
  %29 = load i32, i32* @ipvtap_major, align 4
  %30 = call i32 @tap_destroy_cdev(i32 %29, i32* @ipvtap_cdev)
  br label %31

31:                                               ; preds = %28, %7
  %32 = load i32, i32* %2, align 4
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %31, %23
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @tap_create_cdev(i32*, i32*, i8*, i32) #1

declare dso_local i32 @class_register(i32*) #1

declare dso_local i32 @register_netdevice_notifier(i32*) #1

declare dso_local i32 @ipvlan_link_register(i32*) #1

declare dso_local i32 @unregister_netdevice_notifier(i32*) #1

declare dso_local i32 @class_unregister(i32*) #1

declare dso_local i32 @tap_destroy_cdev(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
