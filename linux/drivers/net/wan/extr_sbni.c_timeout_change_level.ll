; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_sbni.c_timeout_change_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_sbni.c_timeout_change_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.net_local = type { i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@timeout_rxl_tab = common dso_local global i64* null, align 8
@rxl_tab = common dso_local global i32* null, align 8
@CSR0 = common dso_local global i64 0, align 8
@CSR1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @timeout_change_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timeout_change_level(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.net_local* @netdev_priv(%struct.net_device* %4)
  store %struct.net_local* %5, %struct.net_local** %3, align 8
  %6 = load i64*, i64** @timeout_rxl_tab, align 8
  %7 = load %struct.net_local*, %struct.net_local** %3, align 8
  %8 = getelementptr inbounds %struct.net_local, %struct.net_local* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i64, i64* %6, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.net_local*, %struct.net_local** %3, align 8
  %13 = getelementptr inbounds %struct.net_local, %struct.net_local* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.net_local*, %struct.net_local** %3, align 8
  %15 = getelementptr inbounds %struct.net_local, %struct.net_local* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %15, align 8
  %18 = icmp uge i64 %17, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.net_local*, %struct.net_local** %3, align 8
  %21 = getelementptr inbounds %struct.net_local, %struct.net_local* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %19, %1
  %23 = load i32*, i32** @rxl_tab, align 8
  %24 = load %struct.net_local*, %struct.net_local** %3, align 8
  %25 = getelementptr inbounds %struct.net_local, %struct.net_local* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.net_local*, %struct.net_local** %3, align 8
  %30 = getelementptr inbounds %struct.net_local, %struct.net_local* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CSR0, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @inb(i64 %36)
  %38 = load %struct.net_local*, %struct.net_local** %3, align 8
  %39 = getelementptr inbounds %struct.net_local, %struct.net_local* %38, i32 0, i32 4
  %40 = bitcast %struct.TYPE_2__* %39 to i8*
  %41 = load i8, i8* %40, align 8
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CSR1, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @outb(i8 zeroext %41, i64 %46)
  %48 = load %struct.net_local*, %struct.net_local** %3, align 8
  %49 = getelementptr inbounds %struct.net_local, %struct.net_local* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.net_local*, %struct.net_local** %3, align 8
  %52 = getelementptr inbounds %struct.net_local, %struct.net_local* %51, i32 0, i32 3
  store i64 %50, i64* %52, align 8
  %53 = load %struct.net_local*, %struct.net_local** %3, align 8
  %54 = getelementptr inbounds %struct.net_local, %struct.net_local* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  ret void
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
