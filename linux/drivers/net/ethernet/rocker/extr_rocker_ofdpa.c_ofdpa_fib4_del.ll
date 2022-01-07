; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_fib4_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_fib4_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { %struct.ofdpa* }
%struct.ofdpa = type { i64 }
%struct.fib_entry_notifier_info = type { i32, i32, i32, i32 }
%struct.ofdpa_port = type { i32 }
%struct.fib_nh = type { i32, i32 }

@RTNH_F_OFFLOAD = common dso_local global i32 0, align 4
@OFDPA_OP_FLAG_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker*, %struct.fib_entry_notifier_info*)* @ofdpa_fib4_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_fib4_del(%struct.rocker* %0, %struct.fib_entry_notifier_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rocker*, align 8
  %5 = alloca %struct.fib_entry_notifier_info*, align 8
  %6 = alloca %struct.ofdpa*, align 8
  %7 = alloca %struct.ofdpa_port*, align 8
  %8 = alloca %struct.fib_nh*, align 8
  store %struct.rocker* %0, %struct.rocker** %4, align 8
  store %struct.fib_entry_notifier_info* %1, %struct.fib_entry_notifier_info** %5, align 8
  %9 = load %struct.rocker*, %struct.rocker** %4, align 8
  %10 = getelementptr inbounds %struct.rocker, %struct.rocker* %9, i32 0, i32 0
  %11 = load %struct.ofdpa*, %struct.ofdpa** %10, align 8
  store %struct.ofdpa* %11, %struct.ofdpa** %6, align 8
  %12 = load %struct.ofdpa*, %struct.ofdpa** %6, align 8
  %13 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %5, align 8
  %19 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.fib_nh* @fib_info_nh(i32 %20, i32 0)
  store %struct.fib_nh* %21, %struct.fib_nh** %8, align 8
  %22 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %23 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rocker*, %struct.rocker** %4, align 8
  %26 = call %struct.ofdpa_port* @ofdpa_port_dev_lower_find(i32 %24, %struct.rocker* %25)
  store %struct.ofdpa_port* %26, %struct.ofdpa_port** %7, align 8
  %27 = load %struct.ofdpa_port*, %struct.ofdpa_port** %7, align 8
  %28 = icmp ne %struct.ofdpa_port* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %53

30:                                               ; preds = %17
  %31 = load i32, i32* @RTNH_F_OFFLOAD, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %34 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.ofdpa_port*, %struct.ofdpa_port** %7, align 8
  %38 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %5, align 8
  %39 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @htonl(i32 %40)
  %42 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %5, align 8
  %43 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %5, align 8
  %46 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %5, align 8
  %49 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @OFDPA_OP_FLAG_REMOVE, align 4
  %52 = call i32 @ofdpa_port_fib_ipv4(%struct.ofdpa_port* %37, i32 %41, i32 %44, i32 %47, i32 %50, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %30, %29, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.fib_nh* @fib_info_nh(i32, i32) #1

declare dso_local %struct.ofdpa_port* @ofdpa_port_dev_lower_find(i32, %struct.rocker*) #1

declare dso_local i32 @ofdpa_port_fib_ipv4(%struct.ofdpa_port*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
