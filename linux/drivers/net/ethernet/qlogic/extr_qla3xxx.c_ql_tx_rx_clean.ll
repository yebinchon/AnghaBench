; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_tx_rx_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_tx_rx_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i64, i64, %struct.net_rsp_iocb*, %struct.net_rsp_iocb*, i32*, %struct.net_device* }
%struct.net_rsp_iocb = type { i32 }
%struct.net_device = type { i32 }
%struct.ob_mac_iocb_rsp = type { i32 }
%struct.ib_mac_iocb_rsp = type { i32 }
%struct.ib_ip_iocb_rsp = type { i32 }

@QL3032_DEVICE_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [98 x i8] c"Hit default case, not handled!\0A\09dropping the packet, opcode = %x\0A0x%08lx 0x%08lx 0x%08lx 0x%08lx\0A\00", align 1
@NUM_RSP_Q_ENTRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql3_adapter*, i32)* @ql_tx_rx_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_tx_rx_clean(%struct.ql3_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ql3_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_rsp_iocb*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %9, i32 0, i32 5
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %109, %2
  %13 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @le32_to_cpu(i32 %16)
  %18 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br label %26

26:                                               ; preds = %22, %12
  %27 = phi i1 [ false, %12 ], [ %25, %22 ]
  br i1 %27, label %28, label %110

28:                                               ; preds = %26
  %29 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %29, i32 0, i32 2
  %31 = load %struct.net_rsp_iocb*, %struct.net_rsp_iocb** %30, align 8
  store %struct.net_rsp_iocb* %31, %struct.net_rsp_iocb** %5, align 8
  %32 = call i32 (...) @rmb()
  %33 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @QL3032_DEVICE_ID, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.net_rsp_iocb*, %struct.net_rsp_iocb** %5, align 8
  %40 = getelementptr inbounds %struct.net_rsp_iocb, %struct.net_rsp_iocb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 127
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %38, %28
  %44 = load %struct.net_rsp_iocb*, %struct.net_rsp_iocb** %5, align 8
  %45 = getelementptr inbounds %struct.net_rsp_iocb, %struct.net_rsp_iocb* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %66 [
    i32 129, label %47
    i32 128, label %47
    i32 130, label %52
    i32 132, label %52
    i32 131, label %59
    i32 133, label %59
  ]

47:                                               ; preds = %43, %43
  %48 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %49 = load %struct.net_rsp_iocb*, %struct.net_rsp_iocb** %5, align 8
  %50 = bitcast %struct.net_rsp_iocb* %49 to %struct.ob_mac_iocb_rsp*
  %51 = call i32 @ql_process_mac_tx_intr(%struct.ql3_adapter* %48, %struct.ob_mac_iocb_rsp* %50)
  br label %86

52:                                               ; preds = %43, %43
  %53 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %54 = load %struct.net_rsp_iocb*, %struct.net_rsp_iocb** %5, align 8
  %55 = bitcast %struct.net_rsp_iocb* %54 to %struct.ib_mac_iocb_rsp*
  %56 = call i32 @ql_process_mac_rx_intr(%struct.ql3_adapter* %53, %struct.ib_mac_iocb_rsp* %55)
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %86

59:                                               ; preds = %43, %43
  %60 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %61 = load %struct.net_rsp_iocb*, %struct.net_rsp_iocb** %5, align 8
  %62 = bitcast %struct.net_rsp_iocb* %61 to %struct.ib_ip_iocb_rsp*
  %63 = call i32 @ql_process_macip_rx_intr(%struct.ql3_adapter* %60, %struct.ib_ip_iocb_rsp* %62)
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %86

66:                                               ; preds = %43
  %67 = load %struct.net_rsp_iocb*, %struct.net_rsp_iocb** %5, align 8
  %68 = bitcast %struct.net_rsp_iocb* %67 to i64*
  store i64* %68, i64** %8, align 8
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = load %struct.net_rsp_iocb*, %struct.net_rsp_iocb** %5, align 8
  %71 = getelementptr inbounds %struct.net_rsp_iocb, %struct.net_rsp_iocb* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i64*, i64** %8, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %8, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %8, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %8, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 3
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @netdev_err(%struct.net_device* %69, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i32 %72, i64 %75, i64 %78, i64 %81, i64 %84)
  br label %86

86:                                               ; preds = %66, %59, %52, %47
  %87 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %88, align 8
  %91 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NUM_RSP_Q_ENTRIES, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %86
  %97 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %100 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %99, i32 0, i32 3
  %101 = load %struct.net_rsp_iocb*, %struct.net_rsp_iocb** %100, align 8
  %102 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %102, i32 0, i32 2
  store %struct.net_rsp_iocb* %101, %struct.net_rsp_iocb** %103, align 8
  br label %109

104:                                              ; preds = %86
  %105 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %105, i32 0, i32 2
  %107 = load %struct.net_rsp_iocb*, %struct.net_rsp_iocb** %106, align 8
  %108 = getelementptr inbounds %struct.net_rsp_iocb, %struct.net_rsp_iocb* %107, i32 1
  store %struct.net_rsp_iocb* %108, %struct.net_rsp_iocb** %106, align 8
  br label %109

109:                                              ; preds = %104, %96
  br label %12

110:                                              ; preds = %26
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @ql_process_mac_tx_intr(%struct.ql3_adapter*, %struct.ob_mac_iocb_rsp*) #1

declare dso_local i32 @ql_process_mac_rx_intr(%struct.ql3_adapter*, %struct.ib_mac_iocb_rsp*) #1

declare dso_local i32 @ql_process_macip_rx_intr(%struct.ql3_adapter*, %struct.ib_ip_iocb_rsp*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
