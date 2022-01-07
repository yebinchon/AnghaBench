; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11h.c_mwifiex_11h_process_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11h.c_mwifiex_11h_process_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mwifiex_bssdescriptor = type { i32, i64 }

@WLAN_CAPABILITY_SPECTRUM_MGMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_11h_process_join(%struct.mwifiex_private* %0, i32** %1, %struct.mwifiex_bssdescriptor* %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.mwifiex_bssdescriptor*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store i32** %1, i32*** %5, align 8
  store %struct.mwifiex_bssdescriptor* %2, %struct.mwifiex_bssdescriptor** %6, align 8
  %7 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %8 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %13 = call i32 @mwifiex_11h_activate(%struct.mwifiex_private* %12, i32 1)
  %14 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %15 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load i32, i32* @WLAN_CAPABILITY_SPECTRUM_MGMT, align 4
  %18 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %19 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %23 = load i32**, i32*** %5, align 8
  %24 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %25 = call i32 @mwifiex_11h_process_infra_join(%struct.mwifiex_private* %22, i32** %23, %struct.mwifiex_bssdescriptor* %24)
  br label %38

26:                                               ; preds = %3
  %27 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %28 = call i32 @mwifiex_11h_activate(%struct.mwifiex_private* %27, i32 0)
  %29 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %30 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* @WLAN_CAPABILITY_SPECTRUM_MGMT, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %35 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %26, %11
  ret void
}

declare dso_local i32 @mwifiex_11h_activate(%struct.mwifiex_private*, i32) #1

declare dso_local i32 @mwifiex_11h_process_infra_join(%struct.mwifiex_private*, i32**, %struct.mwifiex_bssdescriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
