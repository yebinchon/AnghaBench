; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@np = common dso_local global %struct.niu* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @niu_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.niu*, %struct.niu** %3, align 8
  %8 = ptrtoint %struct.niu* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @timer, align 4
  %11 = call %struct.niu* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.niu* %11, %struct.niu** %3, align 8
  %12 = load %struct.niu*, %struct.niu** %3, align 8
  %13 = call i32 @niu_link_status(%struct.niu* %12, i32* %6)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load %struct.niu*, %struct.niu** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @niu_link_status_common(%struct.niu* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.niu*, %struct.niu** %3, align 8
  %22 = getelementptr inbounds %struct.niu, %struct.niu* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @netif_carrier_ok(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @HZ, align 4
  %28 = mul nsw i32 5, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %4, align 8
  br label %34

30:                                               ; preds = %20
  %31 = load i32, i32* @HZ, align 4
  %32 = mul nsw i32 1, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %35, %36
  %38 = load %struct.niu*, %struct.niu** %3, align 8
  %39 = getelementptr inbounds %struct.niu, %struct.niu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  %41 = load %struct.niu*, %struct.niu** %3, align 8
  %42 = getelementptr inbounds %struct.niu, %struct.niu* %41, i32 0, i32 0
  %43 = call i32 @add_timer(%struct.TYPE_2__* %42)
  ret void
}

declare dso_local %struct.niu* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @niu_link_status(%struct.niu*, i32*) #1

declare dso_local i32 @niu_link_status_common(%struct.niu*, i32) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
