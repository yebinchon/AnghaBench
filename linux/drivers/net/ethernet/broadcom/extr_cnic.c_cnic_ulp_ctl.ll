; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_ulp_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_ulp_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, i32, %struct.cnic_local* }
%struct.cnic_local = type { %struct.cnic_eth_dev* }
%struct.cnic_eth_dev = type { i32 (i32, %struct.drv_ctl_info*)* }
%struct.drv_ctl_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.fcoe_capabilities }
%struct.fcoe_capabilities = type { i32 }

@DRV_CTL_ULP_REGISTER_CMD = common dso_local global i32 0, align 4
@CNIC_ULP_FCOE = common dso_local global i32 0, align 4
@DRV_CTL_ULP_UNREGISTER_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, i32, i32, i32)* @cnic_ulp_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_ulp_ctl(%struct.cnic_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cnic_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cnic_local*, align 8
  %10 = alloca %struct.cnic_eth_dev*, align 8
  %11 = alloca %struct.drv_ctl_info, align 4
  %12 = alloca %struct.fcoe_capabilities*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %14 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %13, i32 0, i32 2
  %15 = load %struct.cnic_local*, %struct.cnic_local** %14, align 8
  store %struct.cnic_local* %15, %struct.cnic_local** %9, align 8
  %16 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %17 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %16, i32 0, i32 0
  %18 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %17, align 8
  store %struct.cnic_eth_dev* %18, %struct.cnic_eth_dev** %10, align 8
  %19 = getelementptr inbounds %struct.drv_ctl_info, %struct.drv_ctl_info* %11, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.fcoe_capabilities* %21, %struct.fcoe_capabilities** %12, align 8
  %22 = call i32 @memset(%struct.drv_ctl_info* %11, i32 0, i32 16)
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %4
  %26 = load i32, i32* @DRV_CTL_ULP_REGISTER_CMD, align 4
  %27 = getelementptr inbounds %struct.drv_ctl_info, %struct.drv_ctl_info* %11, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @CNIC_ULP_FCOE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %33 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.fcoe_capabilities*, %struct.fcoe_capabilities** %12, align 8
  %38 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %39 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(%struct.fcoe_capabilities* %37, i32 %40, i32 4)
  br label %42

42:                                               ; preds = %36, %31, %25
  br label %46

43:                                               ; preds = %4
  %44 = load i32, i32* @DRV_CTL_ULP_UNREGISTER_CMD, align 4
  %45 = getelementptr inbounds %struct.drv_ctl_info, %struct.drv_ctl_info* %11, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %42
  %47 = load i32, i32* %6, align 4
  %48 = getelementptr inbounds %struct.drv_ctl_info, %struct.drv_ctl_info* %11, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = getelementptr inbounds %struct.drv_ctl_info, %struct.drv_ctl_info* %11, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %10, align 8
  %53 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %52, i32 0, i32 0
  %54 = load i32 (i32, %struct.drv_ctl_info*)*, i32 (i32, %struct.drv_ctl_info*)** %53, align 8
  %55 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %56 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 %54(i32 %57, %struct.drv_ctl_info* %11)
  ret void
}

declare dso_local i32 @memset(%struct.drv_ctl_info*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.fcoe_capabilities*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
