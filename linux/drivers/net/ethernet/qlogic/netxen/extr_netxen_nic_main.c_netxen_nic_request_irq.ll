; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_nic_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_nic_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, i32, i32, %struct.netxen_recv_context, %struct.net_device* }
%struct.netxen_recv_context = type { %struct.nx_host_sds_ring* }
%struct.nx_host_sds_ring = type { i32, i32 }
%struct.net_device = type { i8*, i32 }

@NETXEN_NIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@netxen_msix_intr = common dso_local global i32 0, align 4
@NETXEN_NIC_MSI_ENABLED = common dso_local global i32 0, align 4
@netxen_msi_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i64 0, align 8
@netxen_intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*)* @netxen_nic_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_nic_request_irq(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nx_host_sds_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.netxen_recv_context*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %11, i32 0, i32 4
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %9, align 8
  %14 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %14, i32 0, i32 3
  store %struct.netxen_recv_context* %15, %struct.netxen_recv_context** %10, align 8
  %16 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NETXEN_NIC_MSIX_ENABLED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @netxen_msix_intr, align 4
  store i32 %23, i32* %4, align 4
  br label %39

24:                                               ; preds = %1
  %25 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NETXEN_NIC_MSI_ENABLED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @netxen_msi_intr, align 4
  store i32 %32, i32* %4, align 4
  br label %38

33:                                               ; preds = %24
  %34 = load i64, i64* @IRQF_SHARED, align 8
  %35 = load i64, i64* %8, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %8, align 8
  %37 = load i32, i32* @netxen_intr, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %31
  br label %39

39:                                               ; preds = %38, %22
  %40 = load %struct.net_device*, %struct.net_device** %9, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %81, %39
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %84

51:                                               ; preds = %45
  %52 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %10, align 8
  %53 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %52, i32 0, i32 0
  %54 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %54, i64 %56
  store %struct.nx_host_sds_ring* %57, %struct.nx_host_sds_ring** %5, align 8
  %58 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %5, align 8
  %59 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.net_device*, %struct.net_device** %9, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @sprintf(i32 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %63, i32 %64)
  %66 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %5, align 8
  %67 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %5, align 8
  %72 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %5, align 8
  %75 = call i32 @request_irq(i32 %68, i32 %69, i64 %70, i32 %73, %struct.nx_host_sds_ring* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %51
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %85

80:                                               ; preds = %51
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %45

84:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %78
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @sprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i64, i32, %struct.nx_host_sds_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
