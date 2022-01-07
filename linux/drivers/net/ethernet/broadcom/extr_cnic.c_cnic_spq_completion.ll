; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_spq_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_spq_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { %struct.cnic_eth_dev* }
%struct.cnic_eth_dev = type { i32 (i32, %struct.drv_ctl_info*)* }
%struct.drv_ctl_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, i32, i32)* @cnic_spq_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_spq_completion(%struct.cnic_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cnic_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cnic_local*, align 8
  %8 = alloca %struct.cnic_eth_dev*, align 8
  %9 = alloca %struct.drv_ctl_info, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %11 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %10, i32 0, i32 1
  %12 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  store %struct.cnic_local* %12, %struct.cnic_local** %7, align 8
  %13 = load %struct.cnic_local*, %struct.cnic_local** %7, align 8
  %14 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %13, i32 0, i32 0
  %15 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %14, align 8
  store %struct.cnic_eth_dev* %15, %struct.cnic_eth_dev** %8, align 8
  %16 = call i32 @memset(%struct.drv_ctl_info* %9, i32 0, i32 8)
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds %struct.drv_ctl_info, %struct.drv_ctl_info* %9, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = getelementptr inbounds %struct.drv_ctl_info, %struct.drv_ctl_info* %9, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %24 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %23, i32 0, i32 0
  %25 = load i32 (i32, %struct.drv_ctl_info*)*, i32 (i32, %struct.drv_ctl_info*)** %24, align 8
  %26 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %27 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %25(i32 %28, %struct.drv_ctl_info* %9)
  ret void
}

declare dso_local i32 @memset(%struct.drv_ctl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
