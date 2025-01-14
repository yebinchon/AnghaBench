; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_can_start_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_can_start_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32 }

@NX_CRB_DEV_REF_COUNT = common dso_local global i32 0, align 4
@NX_MAX_PCI_FUNC = common dso_local global i32 0, align 4
@NX_CRB_DEV_STATE = common dso_local global i32 0, align 4
@NX_DEV_INITALIZING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*)* @netxen_can_start_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_can_start_firmware(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %7 = call i64 @netxen_api_lock(%struct.netxen_adapter* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %11 = call i32 @nx_incr_dev_ref_cnt(%struct.netxen_adapter* %10)
  store i32 -1, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %14 = load i32, i32* @NX_CRB_DEV_REF_COUNT, align 4
  %15 = call i32 @NXRD32(%struct.netxen_adapter* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @NX_MAX_PCI_FUNC, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %12
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %18
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  %27 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %28 = load i32, i32* @NX_CRB_DEV_STATE, align 4
  %29 = load i32, i32* @NX_DEV_INITALIZING, align 4
  %30 = call i32 @NXWR32(%struct.netxen_adapter* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %23
  %32 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %33 = load i32, i32* @NX_CRB_DEV_REF_COUNT, align 4
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  %36 = call i32 @NXWR32(%struct.netxen_adapter* %32, i32 %33, i32 %35)
  %37 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %38 = call i32 @netxen_api_unlock(%struct.netxen_adapter* %37)
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %31, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @netxen_api_lock(%struct.netxen_adapter*) #1

declare dso_local i32 @nx_incr_dev_ref_cnt(%struct.netxen_adapter*) #1

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i32, i32) #1

declare dso_local i32 @netxen_api_unlock(%struct.netxen_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
