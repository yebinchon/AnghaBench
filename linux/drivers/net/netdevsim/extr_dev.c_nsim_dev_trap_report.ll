; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_trap_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_trap_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsim_dev_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.nsim_dev* }
%struct.nsim_dev = type { %struct.nsim_trap_data* }
%struct.nsim_trap_data = type { i32, %struct.nsim_trap_item* }
%struct.nsim_trap_item = type { i64, i32 }
%struct.devlink = type { i32 }
%struct.sk_buff = type { i32 }

@nsim_traps_arr = common dso_local global i32 0, align 4
@DEVLINK_TRAP_ACTION_DROP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nsim_dev_port*)* @nsim_dev_trap_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsim_dev_trap_report(%struct.nsim_dev_port* %0) #0 {
  %2 = alloca %struct.nsim_dev_port*, align 8
  %3 = alloca %struct.nsim_dev*, align 8
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca %struct.nsim_trap_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nsim_trap_item*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.nsim_dev_port* %0, %struct.nsim_dev_port** %2, align 8
  %9 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %2, align 8
  %10 = getelementptr inbounds %struct.nsim_dev_port, %struct.nsim_dev_port* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.nsim_dev*, %struct.nsim_dev** %12, align 8
  store %struct.nsim_dev* %13, %struct.nsim_dev** %3, align 8
  %14 = load %struct.nsim_dev*, %struct.nsim_dev** %3, align 8
  %15 = call %struct.devlink* @priv_to_devlink(%struct.nsim_dev* %14)
  store %struct.devlink* %15, %struct.devlink** %4, align 8
  %16 = load %struct.nsim_dev*, %struct.nsim_dev** %3, align 8
  %17 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %16, i32 0, i32 0
  %18 = load %struct.nsim_trap_data*, %struct.nsim_trap_data** %17, align 8
  store %struct.nsim_trap_data* %18, %struct.nsim_trap_data** %5, align 8
  %19 = load %struct.nsim_trap_data*, %struct.nsim_trap_data** %5, align 8
  %20 = getelementptr inbounds %struct.nsim_trap_data, %struct.nsim_trap_data* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %65, %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @nsim_traps_arr, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %68

27:                                               ; preds = %22
  %28 = load %struct.nsim_trap_data*, %struct.nsim_trap_data** %5, align 8
  %29 = getelementptr inbounds %struct.nsim_trap_data, %struct.nsim_trap_data* %28, i32 0, i32 1
  %30 = load %struct.nsim_trap_item*, %struct.nsim_trap_item** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.nsim_trap_item, %struct.nsim_trap_item* %30, i64 %32
  store %struct.nsim_trap_item* %33, %struct.nsim_trap_item** %7, align 8
  %34 = load %struct.nsim_trap_item*, %struct.nsim_trap_item** %7, align 8
  %35 = getelementptr inbounds %struct.nsim_trap_item, %struct.nsim_trap_item* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DEVLINK_TRAP_ACTION_DROP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %65

40:                                               ; preds = %27
  %41 = call %struct.sk_buff* (...) @nsim_dev_trap_skb_build()
  store %struct.sk_buff* %41, %struct.sk_buff** %8, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %65

45:                                               ; preds = %40
  %46 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %2, align 8
  %47 = getelementptr inbounds %struct.nsim_dev_port, %struct.nsim_dev_port* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = call i32 (...) @local_bh_disable()
  %54 = load %struct.devlink*, %struct.devlink** %4, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = load %struct.nsim_trap_item*, %struct.nsim_trap_item** %7, align 8
  %57 = getelementptr inbounds %struct.nsim_trap_item, %struct.nsim_trap_item* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %2, align 8
  %60 = getelementptr inbounds %struct.nsim_dev_port, %struct.nsim_dev_port* %59, i32 0, i32 0
  %61 = call i32 @devlink_trap_report(%struct.devlink* %54, %struct.sk_buff* %55, i32 %58, i32* %60)
  %62 = call i32 (...) @local_bh_enable()
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = call i32 @consume_skb(%struct.sk_buff* %63)
  br label %65

65:                                               ; preds = %45, %44, %39
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %22

68:                                               ; preds = %22
  %69 = load %struct.nsim_trap_data*, %struct.nsim_trap_data** %5, align 8
  %70 = getelementptr inbounds %struct.nsim_trap_data, %struct.nsim_trap_data* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock(i32* %70)
  ret void
}

declare dso_local %struct.devlink* @priv_to_devlink(%struct.nsim_dev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.sk_buff* @nsim_dev_trap_skb_build(...) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @devlink_trap_report(%struct.devlink*, %struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
