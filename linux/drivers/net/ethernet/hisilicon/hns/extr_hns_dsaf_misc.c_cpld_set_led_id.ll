; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_cpld_set_led_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_cpld_set_led_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i32, i32, i32, i32 }

@DSAF_LED_ANCHOR_B = common dso_local global i32 0, align 4
@CPLD_LED_ON_VALUE = common dso_local global i32 0, align 4
@CPLD_LED_DEFAULT_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid led state: %d!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_mac_cb*, i32)* @cpld_set_led_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpld_set_led_id(%struct.hns_mac_cb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns_mac_cb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %9 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %60 [
    i32 129, label %15
    i32 128, label %43
  ]

15:                                               ; preds = %13
  %16 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %17 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %20 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dsaf_read_syscon(i32 %18, i32 %21, i32* %6)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %69

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @DSAF_LED_ANCHOR_B, align 4
  %30 = load i32, i32* @CPLD_LED_ON_VALUE, align 4
  %31 = call i32 @dsaf_set_bit(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %33 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %36 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @dsaf_write_syscon(i32 %34, i32 %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %42 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %68

43:                                               ; preds = %13
  %44 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %45 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DSAF_LED_ANCHOR_B, align 4
  %48 = load i32, i32* @CPLD_LED_DEFAULT_VALUE, align 4
  %49 = call i32 @dsaf_set_bit(i32 %46, i32 %47, i32 %48)
  %50 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %51 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %54 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %57 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dsaf_write_syscon(i32 %52, i32 %55, i32 %58)
  br label %68

60:                                               ; preds = %13
  %61 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %62 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %69

68:                                               ; preds = %43, %27
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %60, %25, %12
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @dsaf_read_syscon(i32, i32, i32*) #1

declare dso_local i32 @dsaf_set_bit(i32, i32, i32) #1

declare dso_local i32 @dsaf_write_syscon(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
