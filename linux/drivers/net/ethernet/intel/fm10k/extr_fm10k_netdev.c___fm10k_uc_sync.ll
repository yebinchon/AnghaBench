; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c___fm10k_uc_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c___fm10k_uc_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fm10k_intfc = type { i64 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@VLAN_N_VID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*, i32)* @__fm10k_uc_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fm10k_uc_sync(%struct.net_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fm10k_intfc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %12)
  store %struct.fm10k_intfc* %13, %struct.fm10k_intfc** %8, align 8
  %14 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %8, align 8
  %15 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @is_valid_ether_addr(i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EADDRNOTAVAIL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %47

23:                                               ; preds = %3
  %24 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %8, align 8
  %25 = call i64 @fm10k_find_next_vlan(%struct.fm10k_intfc* %24, i64 0)
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %42, %23
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @VLAN_N_VID, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %8, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @fm10k_queue_mac_request(%struct.fm10k_intfc* %31, i64 %32, i8* %33, i64 %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  br label %47

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @fm10k_find_next_vlan(%struct.fm10k_intfc* %43, i64 %44)
  store i64 %45, i64* %9, align 8
  br label %26

46:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %39, %20
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i8*) #1

declare dso_local i64 @fm10k_find_next_vlan(%struct.fm10k_intfc*, i64) #1

declare dso_local i32 @fm10k_queue_mac_request(%struct.fm10k_intfc*, i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
