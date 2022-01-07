; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_devlink_trap_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_devlink_trap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_trap = type { i32, i32 }
%struct.nsim_dev = type { i32 }
%struct.nsim_trap_item = type { i32, i8* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, %struct.devlink_trap*, i8*)* @nsim_dev_devlink_trap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_dev_devlink_trap_init(%struct.devlink* %0, %struct.devlink_trap* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca %struct.devlink_trap*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nsim_dev*, align 8
  %9 = alloca %struct.nsim_trap_item*, align 8
  store %struct.devlink* %0, %struct.devlink** %5, align 8
  store %struct.devlink_trap* %1, %struct.devlink_trap** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.devlink*, %struct.devlink** %5, align 8
  %11 = call %struct.nsim_dev* @devlink_priv(%struct.devlink* %10)
  store %struct.nsim_dev* %11, %struct.nsim_dev** %8, align 8
  %12 = load %struct.nsim_dev*, %struct.nsim_dev** %8, align 8
  %13 = load %struct.devlink_trap*, %struct.devlink_trap** %6, align 8
  %14 = getelementptr inbounds %struct.devlink_trap, %struct.devlink_trap* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.nsim_trap_item* @nsim_dev_trap_item_lookup(%struct.nsim_dev* %12, i32 %15)
  store %struct.nsim_trap_item* %16, %struct.nsim_trap_item** %9, align 8
  %17 = load %struct.nsim_trap_item*, %struct.nsim_trap_item** %9, align 8
  %18 = icmp ne %struct.nsim_trap_item* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %35

26:                                               ; preds = %3
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.nsim_trap_item*, %struct.nsim_trap_item** %9, align 8
  %29 = getelementptr inbounds %struct.nsim_trap_item, %struct.nsim_trap_item* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.devlink_trap*, %struct.devlink_trap** %6, align 8
  %31 = getelementptr inbounds %struct.devlink_trap, %struct.devlink_trap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nsim_trap_item*, %struct.nsim_trap_item** %9, align 8
  %34 = getelementptr inbounds %struct.nsim_trap_item, %struct.nsim_trap_item* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %26, %23
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.nsim_dev* @devlink_priv(%struct.devlink*) #1

declare dso_local %struct.nsim_trap_item* @nsim_dev_trap_item_lookup(%struct.nsim_dev*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
