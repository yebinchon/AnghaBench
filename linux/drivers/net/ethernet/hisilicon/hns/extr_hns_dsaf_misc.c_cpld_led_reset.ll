; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_cpld_led_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_cpld_led_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i32, i32, i32 }

@CPLD_LED_DEFAULT_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_mac_cb*)* @cpld_led_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpld_led_reset(%struct.hns_mac_cb* %0) #0 {
  %2 = alloca %struct.hns_mac_cb*, align 8
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %2, align 8
  %3 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %4 = icmp ne %struct.hns_mac_cb* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %7 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5, %1
  br label %23

11:                                               ; preds = %5
  %12 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %13 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %16 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CPLD_LED_DEFAULT_VALUE, align 4
  %19 = call i32 @dsaf_write_syscon(i32 %14, i32 %17, i32 %18)
  %20 = load i32, i32* @CPLD_LED_DEFAULT_VALUE, align 4
  %21 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %22 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @dsaf_write_syscon(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
