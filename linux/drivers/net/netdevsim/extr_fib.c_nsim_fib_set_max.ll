; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_fib.c_nsim_fib_set_max.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_fib.c_nsim_fib_set_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nsim_fib_data = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.nsim_fib_entry, %struct.nsim_fib_entry }
%struct.nsim_fib_entry = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.nsim_fib_entry, %struct.nsim_fib_entry }

@nsim_fib_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"New size is less than current occupancy\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsim_fib_set_max(%struct.net* %0, i32 %1, i64 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.nsim_fib_data*, align 8
  %11 = alloca %struct.nsim_fib_entry*, align 8
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %13 = load %struct.net*, %struct.net** %6, align 8
  %14 = load i32, i32* @nsim_fib_net_id, align 4
  %15 = call %struct.nsim_fib_data* @net_generic(%struct.net* %13, i32 %14)
  store %struct.nsim_fib_data* %15, %struct.nsim_fib_data** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %33 [
    i32 131, label %17
    i32 130, label %21
    i32 129, label %25
    i32 128, label %29
  ]

17:                                               ; preds = %4
  %18 = load %struct.nsim_fib_data*, %struct.nsim_fib_data** %10, align 8
  %19 = getelementptr inbounds %struct.nsim_fib_data, %struct.nsim_fib_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store %struct.nsim_fib_entry* %20, %struct.nsim_fib_entry** %11, align 8
  br label %34

21:                                               ; preds = %4
  %22 = load %struct.nsim_fib_data*, %struct.nsim_fib_data** %10, align 8
  %23 = getelementptr inbounds %struct.nsim_fib_data, %struct.nsim_fib_data* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.nsim_fib_entry* %24, %struct.nsim_fib_entry** %11, align 8
  br label %34

25:                                               ; preds = %4
  %26 = load %struct.nsim_fib_data*, %struct.nsim_fib_data** %10, align 8
  %27 = getelementptr inbounds %struct.nsim_fib_data, %struct.nsim_fib_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store %struct.nsim_fib_entry* %28, %struct.nsim_fib_entry** %11, align 8
  br label %34

29:                                               ; preds = %4
  %30 = load %struct.nsim_fib_data*, %struct.nsim_fib_data** %10, align 8
  %31 = getelementptr inbounds %struct.nsim_fib_data, %struct.nsim_fib_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store %struct.nsim_fib_entry* %32, %struct.nsim_fib_entry** %11, align 8
  br label %34

33:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %51

34:                                               ; preds = %29, %25, %21, %17
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.nsim_fib_entry*, %struct.nsim_fib_entry** %11, align 8
  %37 = getelementptr inbounds %struct.nsim_fib_entry, %struct.nsim_fib_entry* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %42 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %49

45:                                               ; preds = %34
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.nsim_fib_entry*, %struct.nsim_fib_entry** %11, align 8
  %48 = getelementptr inbounds %struct.nsim_fib_entry, %struct.nsim_fib_entry* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %33
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.nsim_fib_data* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
