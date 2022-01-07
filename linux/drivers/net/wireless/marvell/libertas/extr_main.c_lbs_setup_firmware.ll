; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_setup_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_setup_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i8*, i8*, i8*, i32 }

@SNMP_MIB_OID_11D_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*)* @lbs_setup_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_setup_firmware(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  store i32 -1, i32* %3, align 4
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %8 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @eth_broadcast_addr(i32 %9)
  %11 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %12 = call i32 @lbs_update_hw_spec(%struct.lbs_private* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %41

16:                                               ; preds = %1
  %17 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %18 = call i32 @lbs_get_tx_power(%struct.lbs_private* %17, i8** %4, i8** %5, i8** %6)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %24 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %27 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %30 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %21, %16
  %32 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %33 = load i32, i32* @SNMP_MIB_OID_11D_ENABLE, align 4
  %34 = call i32 @lbs_set_snmp_mib(%struct.lbs_private* %32, i32 %33, i32 1)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %41

38:                                               ; preds = %31
  %39 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %40 = call i32 @lbs_set_mac_control_sync(%struct.lbs_private* %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %37, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @lbs_update_hw_spec(%struct.lbs_private*) #1

declare dso_local i32 @lbs_get_tx_power(%struct.lbs_private*, i8**, i8**, i8**) #1

declare dso_local i32 @lbs_set_snmp_mib(%struct.lbs_private*, i32, i32) #1

declare dso_local i32 @lbs_set_mac_control_sync(%struct.lbs_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
