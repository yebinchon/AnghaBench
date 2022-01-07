; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_fib.c_nsim_fib_get_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_fib.c_nsim_fib_get_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nsim_fib_data = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.nsim_fib_entry, %struct.nsim_fib_entry }
%struct.nsim_fib_entry = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.nsim_fib_entry, %struct.nsim_fib_entry }

@nsim_fib_net_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsim_fib_get_val(%struct.net* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nsim_fib_data*, align 8
  %9 = alloca %struct.nsim_fib_entry*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net*, %struct.net** %5, align 8
  %11 = load i32, i32* @nsim_fib_net_id, align 4
  %12 = call %struct.nsim_fib_data* @net_generic(%struct.net* %10, i32 %11)
  store %struct.nsim_fib_data* %12, %struct.nsim_fib_data** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %30 [
    i32 131, label %14
    i32 130, label %18
    i32 129, label %22
    i32 128, label %26
  ]

14:                                               ; preds = %3
  %15 = load %struct.nsim_fib_data*, %struct.nsim_fib_data** %8, align 8
  %16 = getelementptr inbounds %struct.nsim_fib_data, %struct.nsim_fib_data* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store %struct.nsim_fib_entry* %17, %struct.nsim_fib_entry** %9, align 8
  br label %31

18:                                               ; preds = %3
  %19 = load %struct.nsim_fib_data*, %struct.nsim_fib_data** %8, align 8
  %20 = getelementptr inbounds %struct.nsim_fib_data, %struct.nsim_fib_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.nsim_fib_entry* %21, %struct.nsim_fib_entry** %9, align 8
  br label %31

22:                                               ; preds = %3
  %23 = load %struct.nsim_fib_data*, %struct.nsim_fib_data** %8, align 8
  %24 = getelementptr inbounds %struct.nsim_fib_data, %struct.nsim_fib_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store %struct.nsim_fib_entry* %25, %struct.nsim_fib_entry** %9, align 8
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.nsim_fib_data*, %struct.nsim_fib_data** %8, align 8
  %28 = getelementptr inbounds %struct.nsim_fib_data, %struct.nsim_fib_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store %struct.nsim_fib_entry* %29, %struct.nsim_fib_entry** %9, align 8
  br label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

31:                                               ; preds = %26, %22, %18, %14
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.nsim_fib_entry*, %struct.nsim_fib_entry** %9, align 8
  %36 = getelementptr inbounds %struct.nsim_fib_entry, %struct.nsim_fib_entry* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  br label %42

38:                                               ; preds = %31
  %39 = load %struct.nsim_fib_entry*, %struct.nsim_fib_entry** %9, align 8
  %40 = getelementptr inbounds %struct.nsim_fib_entry, %struct.nsim_fib_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i32 [ %37, %34 ], [ %41, %38 ]
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %30
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.nsim_fib_data* @net_generic(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
