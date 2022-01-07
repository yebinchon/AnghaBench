; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_ring_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_ring_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { %struct.cnic_eth_dev* }
%struct.cnic_eth_dev = type { i32 (i32, %struct.drv_ctl_info*)* }
%struct.drv_ctl_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drv_ctl_l2_ring }
%struct.drv_ctl_l2_ring = type { i8*, i8* }

@DRV_CTL_START_L2_CMD = common dso_local global i32 0, align 4
@DRV_CTL_STOP_L2_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, i8*, i8*, i32)* @cnic_ring_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_ring_ctl(%struct.cnic_dev* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.cnic_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cnic_local*, align 8
  %10 = alloca %struct.cnic_eth_dev*, align 8
  %11 = alloca %struct.drv_ctl_info, align 8
  %12 = alloca %struct.drv_ctl_l2_ring*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %14 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %13, i32 0, i32 1
  %15 = load %struct.cnic_local*, %struct.cnic_local** %14, align 8
  store %struct.cnic_local* %15, %struct.cnic_local** %9, align 8
  %16 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %17 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %16, i32 0, i32 0
  %18 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %17, align 8
  store %struct.cnic_eth_dev* %18, %struct.cnic_eth_dev** %10, align 8
  %19 = getelementptr inbounds %struct.drv_ctl_info, %struct.drv_ctl_info* %11, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.drv_ctl_l2_ring* %20, %struct.drv_ctl_l2_ring** %12, align 8
  %21 = call i32 @memset(%struct.drv_ctl_info* %11, i32 0, i32 24)
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @DRV_CTL_START_L2_CMD, align 4
  %26 = getelementptr inbounds %struct.drv_ctl_info, %struct.drv_ctl_info* %11, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  br label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @DRV_CTL_STOP_L2_CMD, align 4
  %29 = getelementptr inbounds %struct.drv_ctl_info, %struct.drv_ctl_info* %11, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.drv_ctl_l2_ring*, %struct.drv_ctl_l2_ring** %12, align 8
  %33 = getelementptr inbounds %struct.drv_ctl_l2_ring, %struct.drv_ctl_l2_ring* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.drv_ctl_l2_ring*, %struct.drv_ctl_l2_ring** %12, align 8
  %36 = getelementptr inbounds %struct.drv_ctl_l2_ring, %struct.drv_ctl_l2_ring* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %10, align 8
  %38 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %37, i32 0, i32 0
  %39 = load i32 (i32, %struct.drv_ctl_info*)*, i32 (i32, %struct.drv_ctl_info*)** %38, align 8
  %40 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %41 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %39(i32 %42, %struct.drv_ctl_info* %11)
  ret void
}

declare dso_local i32 @memset(%struct.drv_ctl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
