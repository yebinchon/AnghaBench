; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_request_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_request_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { %struct.rtl_fw*, i64, i32 }
%struct.rtl_fw = type { i32, i64, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to load firmware, out of memory\0A\00", align 1
@rtl_writephy = common dso_local global i32 0, align 4
@rtl_readphy = common dso_local global i32 0, align 4
@mac_mcu_write = common dso_local global i32 0, align 4
@mac_mcu_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_request_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_request_firmware(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  %3 = alloca %struct.rtl_fw*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %4 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %5 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %4, i32 0, i32 0
  %6 = load %struct.rtl_fw*, %struct.rtl_fw** %5, align 8
  %7 = icmp ne %struct.rtl_fw* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %10 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  br label %58

14:                                               ; preds = %8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.rtl_fw* @kzalloc(i32 32, i32 %15)
  store %struct.rtl_fw* %16, %struct.rtl_fw** %3, align 8
  %17 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %18 = icmp ne %struct.rtl_fw* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %21 = load i32, i32* @ifup, align 4
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %23 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @netif_warn(%struct.rtl8169_private* %20, i32 %21, i32 %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %58

26:                                               ; preds = %14
  %27 = load i32, i32* @rtl_writephy, align 4
  %28 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %29 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @rtl_readphy, align 4
  %31 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %32 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @mac_mcu_write, align 4
  %34 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %35 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @mac_mcu_read, align 4
  %37 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %38 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %40 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %43 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %45 = call i32 @tp_to_dev(%struct.rtl8169_private* %44)
  %46 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %47 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %49 = call i64 @rtl_fw_request_firmware(%struct.rtl_fw* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %26
  %52 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %53 = call i32 @kfree(%struct.rtl_fw* %52)
  br label %58

54:                                               ; preds = %26
  %55 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %56 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %57 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %56, i32 0, i32 0
  store %struct.rtl_fw* %55, %struct.rtl_fw** %57, align 8
  br label %58

58:                                               ; preds = %13, %19, %54, %51
  ret void
}

declare dso_local %struct.rtl_fw* @kzalloc(i32, i32) #1

declare dso_local i32 @netif_warn(%struct.rtl8169_private*, i32, i32, i8*) #1

declare dso_local i32 @tp_to_dev(%struct.rtl8169_private*) #1

declare dso_local i64 @rtl_fw_request_firmware(%struct.rtl_fw*) #1

declare dso_local i32 @kfree(%struct.rtl_fw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
