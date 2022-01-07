; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_is_bss_dynamic_wep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_is_bss_dynamic_wep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.mwifiex_bssdescriptor = type { i64, i32, i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@WLAN_EID_RSN = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.mwifiex_bssdescriptor*)* @mwifiex_is_bss_dynamic_wep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_is_bss_dynamic_wep(%struct.mwifiex_private* %0, %struct.mwifiex_bssdescriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.mwifiex_bssdescriptor*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.mwifiex_bssdescriptor* %1, %struct.mwifiex_bssdescriptor** %5, align 8
  %6 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %7 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %53, label %11

11:                                               ; preds = %2
  %12 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %13 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %53, label %17

17:                                               ; preds = %11
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %19 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %53, label %23

23:                                               ; preds = %17
  %24 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %5, align 8
  %25 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %28 = call i32 @has_vendor_hdr(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %23
  %31 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %5, align 8
  %32 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @WLAN_EID_RSN, align 4
  %35 = call i32 @has_ieee_hdr(i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %30
  %38 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %39 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %5, align 8
  %45 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* @INFO, align 4
  %50 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %51 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %5, align 8
  %52 = call i32 @dbg_security_flags(i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.mwifiex_private* %50, %struct.mwifiex_bssdescriptor* %51)
  store i32 1, i32* %3, align 4
  br label %54

53:                                               ; preds = %43, %37, %30, %23, %17, %11, %2
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %48
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @has_vendor_hdr(i32, i32) #1

declare dso_local i32 @has_ieee_hdr(i32, i32) #1

declare dso_local i32 @dbg_security_flags(i32, i8*, %struct.mwifiex_private*, %struct.mwifiex_bssdescriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
