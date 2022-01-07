; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_trap_item_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_trap_item_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.nsim_trap_item = type { i32 }
%struct.nsim_dev = type { %struct.nsim_trap_data* }
%struct.nsim_trap_data = type { %struct.nsim_trap_item* }

@nsim_traps_arr = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nsim_trap_item* (%struct.nsim_dev*, i64)* @nsim_dev_trap_item_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nsim_trap_item* @nsim_dev_trap_item_lookup(%struct.nsim_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.nsim_trap_item*, align 8
  %4 = alloca %struct.nsim_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nsim_trap_data*, align 8
  %7 = alloca i32, align 4
  store %struct.nsim_dev* %0, %struct.nsim_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %9 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %8, i32 0, i32 0
  %10 = load %struct.nsim_trap_data*, %struct.nsim_trap_data** %9, align 8
  store %struct.nsim_trap_data* %10, %struct.nsim_trap_data** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nsim_traps_arr, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %11
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nsim_traps_arr, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load %struct.nsim_trap_data*, %struct.nsim_trap_data** %6, align 8
  %27 = getelementptr inbounds %struct.nsim_trap_data, %struct.nsim_trap_data* %26, i32 0, i32 0
  %28 = load %struct.nsim_trap_item*, %struct.nsim_trap_item** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.nsim_trap_item, %struct.nsim_trap_item* %28, i64 %30
  store %struct.nsim_trap_item* %31, %struct.nsim_trap_item** %3, align 8
  br label %37

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %11

36:                                               ; preds = %11
  store %struct.nsim_trap_item* null, %struct.nsim_trap_item** %3, align 8
  br label %37

37:                                               ; preds = %36, %25
  %38 = load %struct.nsim_trap_item*, %struct.nsim_trap_item** %3, align 8
  ret %struct.nsim_trap_item* %38
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
