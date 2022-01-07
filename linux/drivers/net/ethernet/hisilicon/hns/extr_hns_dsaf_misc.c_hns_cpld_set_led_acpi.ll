; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_cpld_set_led_acpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_cpld_set_led_acpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"cpld_led_set mac_cb is null!\0A\00", align 1
@HNS_OP_LED_SET_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_mac_cb*, i32, i32, i32)* @hns_cpld_set_led_acpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_cpld_set_led_acpi(%struct.hns_mac_cb* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hns_mac_cb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %10 = icmp ne %struct.hns_mac_cb* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %22

13:                                               ; preds = %4
  %14 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %15 = load i32, i32* @HNS_OP_LED_SET_FUNC, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %18 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @hns_dsaf_acpi_ledctrl_by_port(%struct.hns_mac_cb* %14, i32 %15, i32 %16, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %13, %11
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @hns_dsaf_acpi_ledctrl_by_port(%struct.hns_mac_cb*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
