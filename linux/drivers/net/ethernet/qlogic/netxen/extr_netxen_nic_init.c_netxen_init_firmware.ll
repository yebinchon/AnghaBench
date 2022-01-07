; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_init_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_init_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CRB_NIC_CAPABILITIES_HOST = common dso_local global i32 0, align 4
@INTR_SCHEME_PERPORT = common dso_local global i32 0, align 4
@CRB_MPORT_MODE = common dso_local global i32 0, align 4
@MPORT_MULTI_FUNCTION_MODE = common dso_local global i32 0, align 4
@CRB_CMDPEG_STATE = common dso_local global i32 0, align 4
@PHAN_INITIALIZE_ACK = common dso_local global i32 0, align 4
@CRB_NIC_MSI_MODE_HOST = common dso_local global i32 0, align 4
@MSI_MODE_MULTIFUNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netxen_init_firmware(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  %5 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %6 = call i32 @netxen_receive_peg_ready(%struct.netxen_adapter* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %37

11:                                               ; preds = %1
  %12 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %13 = load i32, i32* @CRB_NIC_CAPABILITIES_HOST, align 4
  %14 = load i32, i32* @INTR_SCHEME_PERPORT, align 4
  %15 = call i32 @NXWR32(%struct.netxen_adapter* %12, i32 %13, i32 %14)
  %16 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %17 = load i32, i32* @CRB_MPORT_MODE, align 4
  %18 = load i32, i32* @MPORT_MULTI_FUNCTION_MODE, align 4
  %19 = call i32 @NXWR32(%struct.netxen_adapter* %16, i32 %17, i32 %18)
  %20 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %21 = load i32, i32* @CRB_CMDPEG_STATE, align 4
  %22 = load i32, i32* @PHAN_INITIALIZE_ACK, align 4
  %23 = call i32 @NXWR32(%struct.netxen_adapter* %20, i32 %21, i32 %22)
  %24 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @NX_IS_REVISION_P2(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %11
  %31 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %32 = load i32, i32* @CRB_NIC_MSI_MODE_HOST, align 4
  %33 = load i32, i32* @MSI_MODE_MULTIFUNC, align 4
  %34 = call i32 @NXWR32(%struct.netxen_adapter* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %11
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @netxen_receive_peg_ready(%struct.netxen_adapter*) #1

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i32, i32) #1

declare dso_local i64 @NX_IS_REVISION_P2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
