; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_fib4_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_fib4_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { %struct.ofdpa* }
%struct.ofdpa = type { i64 }
%struct.fib_entry_notifier_info = type { i32, i32, i32, i32 }
%struct.ofdpa_port = type { i32 }
%struct.fib_nh = type { i32, i32 }

@RTNH_F_OFFLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker*, %struct.fib_entry_notifier_info*)* @ofdpa_fib4_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_fib4_add(%struct.rocker* %0, %struct.fib_entry_notifier_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rocker*, align 8
  %5 = alloca %struct.fib_entry_notifier_info*, align 8
  %6 = alloca %struct.ofdpa*, align 8
  %7 = alloca %struct.ofdpa_port*, align 8
  %8 = alloca %struct.fib_nh*, align 8
  %9 = alloca i32, align 4
  store %struct.rocker* %0, %struct.rocker** %4, align 8
  store %struct.fib_entry_notifier_info* %1, %struct.fib_entry_notifier_info** %5, align 8
  %10 = load %struct.rocker*, %struct.rocker** %4, align 8
  %11 = getelementptr inbounds %struct.rocker, %struct.rocker* %10, i32 0, i32 0
  %12 = load %struct.ofdpa*, %struct.ofdpa** %11, align 8
  store %struct.ofdpa* %12, %struct.ofdpa** %6, align 8
  %13 = load %struct.ofdpa*, %struct.ofdpa** %6, align 8
  %14 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

18:                                               ; preds = %2
  %19 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %5, align 8
  %20 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.fib_nh* @fib_info_nh(i32 %21, i32 0)
  store %struct.fib_nh* %22, %struct.fib_nh** %8, align 8
  %23 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %24 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rocker*, %struct.rocker** %4, align 8
  %27 = call %struct.ofdpa_port* @ofdpa_port_dev_lower_find(i32 %25, %struct.rocker* %26)
  store %struct.ofdpa_port* %27, %struct.ofdpa_port** %7, align 8
  %28 = load %struct.ofdpa_port*, %struct.ofdpa_port** %7, align 8
  %29 = icmp ne %struct.ofdpa_port* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %57

31:                                               ; preds = %18
  %32 = load %struct.ofdpa_port*, %struct.ofdpa_port** %7, align 8
  %33 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %5, align 8
  %34 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @htonl(i32 %35)
  %37 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %5, align 8
  %38 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %5, align 8
  %41 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %5, align 8
  %44 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ofdpa_port_fib_ipv4(%struct.ofdpa_port* %32, i32 %36, i32 %39, i32 %42, i32 %45, i32 0)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %31
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %57

51:                                               ; preds = %31
  %52 = load i32, i32* @RTNH_F_OFFLOAD, align 4
  %53 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %54 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %51, %49, %30, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
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
