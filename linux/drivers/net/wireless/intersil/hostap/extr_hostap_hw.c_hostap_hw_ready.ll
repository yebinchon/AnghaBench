; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_hw.c_hostap_hw_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_hw.c_hostap_hw_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hostap_interface = type { %struct.local_info* }
%struct.local_info = type { i64, i32, i64, i64 }

@HOSTAP_INTERFACE_MAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@dev_template = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@prism2_registers_proc_show = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hostap_hw_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostap_hw_ready(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hostap_interface*, align 8
  %5 = alloca %struct.local_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %6)
  store %struct.hostap_interface* %7, %struct.hostap_interface** %4, align 8
  %8 = load %struct.hostap_interface*, %struct.hostap_interface** %4, align 8
  %9 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %8, i32 0, i32 0
  %10 = load %struct.local_info*, %struct.local_info** %9, align 8
  store %struct.local_info* %10, %struct.local_info** %5, align 8
  %11 = load %struct.local_info*, %struct.local_info** %5, align 8
  %12 = load i32, i32* @HOSTAP_INTERFACE_MAIN, align 4
  %13 = load i32, i32* @dev_template, align 4
  %14 = call i64 @hostap_add_interface(%struct.local_info* %11, i32 %12, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.local_info*, %struct.local_info** %5, align 8
  %16 = getelementptr inbounds %struct.local_info, %struct.local_info* %15, i32 0, i32 2
  store i64 %14, i64* %16, align 8
  %17 = load %struct.local_info*, %struct.local_info** %5, align 8
  %18 = getelementptr inbounds %struct.local_info, %struct.local_info* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %1
  %22 = load %struct.local_info*, %struct.local_info** %5, align 8
  %23 = getelementptr inbounds %struct.local_info, %struct.local_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IW_MODE_INFRA, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.local_info*, %struct.local_info** %5, align 8
  %29 = getelementptr inbounds %struct.local_info, %struct.local_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IW_MODE_ADHOC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27, %21
  %34 = load %struct.local_info*, %struct.local_info** %5, align 8
  %35 = getelementptr inbounds %struct.local_info, %struct.local_info* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @netif_carrier_off(i64 %36)
  %38 = load %struct.local_info*, %struct.local_info** %5, align 8
  %39 = getelementptr inbounds %struct.local_info, %struct.local_info* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @netif_carrier_off(i64 %40)
  br label %42

42:                                               ; preds = %33, %27
  %43 = load %struct.local_info*, %struct.local_info** %5, align 8
  %44 = call i32 @hostap_init_proc(%struct.local_info* %43)
  %45 = load %struct.local_info*, %struct.local_info** %5, align 8
  %46 = getelementptr inbounds %struct.local_info, %struct.local_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @prism2_registers_proc_show, align 4
  %49 = load %struct.local_info*, %struct.local_info** %5, align 8
  %50 = call i32 @proc_create_single_data(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %47, i32 %48, %struct.local_info* %49)
  %51 = load %struct.local_info*, %struct.local_info** %5, align 8
  %52 = call i32 @hostap_init_ap_proc(%struct.local_info* %51)
  store i32 0, i32* %2, align 4
  br label %54

53:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %42
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @hostap_add_interface(%struct.local_info*, i32, i32, i8*, i32) #1

declare dso_local i32 @netif_carrier_off(i64) #1

declare dso_local i32 @hostap_init_proc(%struct.local_info*) #1

declare dso_local i32 @proc_create_single_data(i8*, i32, i32, i32, %struct.local_info*) #1

declare dso_local i32 @hostap_init_ap_proc(%struct.local_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
