; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_fib.c_nsim_fib_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_fib.c_nsim_fib_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_notifier_info = type { i32, %struct.netlink_ext_ack*, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nsim_fib_data = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@nsim_fib_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_notifier_info*, i32)* @nsim_fib_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_fib_event(%struct.fib_notifier_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fib_notifier_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nsim_fib_data*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca i32, align 4
  store %struct.fib_notifier_info* %0, %struct.fib_notifier_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.fib_notifier_info*, %struct.fib_notifier_info** %3, align 8
  %9 = getelementptr inbounds %struct.fib_notifier_info, %struct.fib_notifier_info* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @nsim_fib_net_id, align 4
  %12 = call %struct.nsim_fib_data* @net_generic(i32 %10, i32 %11)
  store %struct.nsim_fib_data* %12, %struct.nsim_fib_data** %5, align 8
  %13 = load %struct.fib_notifier_info*, %struct.fib_notifier_info** %3, align 8
  %14 = getelementptr inbounds %struct.fib_notifier_info, %struct.fib_notifier_info* %13, i32 0, i32 1
  %15 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %14, align 8
  store %struct.netlink_ext_ack* %15, %struct.netlink_ext_ack** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.fib_notifier_info*, %struct.fib_notifier_info** %3, align 8
  %17 = getelementptr inbounds %struct.fib_notifier_info, %struct.fib_notifier_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %33 [
    i32 129, label %19
    i32 128, label %26
  ]

19:                                               ; preds = %2
  %20 = load %struct.nsim_fib_data*, %struct.nsim_fib_data** %5, align 8
  %21 = getelementptr inbounds %struct.nsim_fib_data, %struct.nsim_fib_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %25 = call i32 @nsim_fib_account(i32* %22, i32 %23, %struct.netlink_ext_ack* %24)
  store i32 %25, i32* %7, align 4
  br label %33

26:                                               ; preds = %2
  %27 = load %struct.nsim_fib_data*, %struct.nsim_fib_data** %5, align 8
  %28 = getelementptr inbounds %struct.nsim_fib_data, %struct.nsim_fib_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %32 = call i32 @nsim_fib_account(i32* %29, i32 %30, %struct.netlink_ext_ack* %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %2, %26, %19
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local %struct.nsim_fib_data* @net_generic(i32, i32) #1

declare dso_local i32 @nsim_fib_account(i32*, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
