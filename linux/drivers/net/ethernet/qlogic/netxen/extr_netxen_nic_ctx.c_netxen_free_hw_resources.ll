; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_ctx.c_netxen_free_hw_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_ctx.c_netxen_free_hw_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, i32, i32, i32, %struct.nx_host_tx_ring*, %struct.netxen_recv_context, i32, %struct.TYPE_2__ }
%struct.nx_host_tx_ring = type { i32*, i32 }
%struct.netxen_recv_context = type { %struct.nx_host_sds_ring*, %struct.nx_host_rds_ring*, i32*, i32 }
%struct.nx_host_sds_ring = type { i32*, i32 }
%struct.nx_host_rds_ring = type { i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@__NX_FW_ATTACHED = common dso_local global i32 0, align 4
@NETXEN_CTX_D3_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netxen_free_hw_resources(%struct.netxen_adapter* %0) #0 {
  %2 = alloca %struct.netxen_adapter*, align 8
  %3 = alloca %struct.netxen_recv_context*, align 8
  %4 = alloca %struct.nx_host_rds_ring*, align 8
  %5 = alloca %struct.nx_host_sds_ring*, align 8
  %6 = alloca %struct.nx_host_tx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %2, align 8
  %9 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @NX_IS_REVISION_P2(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @__NX_FW_ATTACHED, align 4
  %20 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %20, i32 0, i32 6
  %22 = call i32 @test_and_clear_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %44

25:                                               ; preds = %18
  %26 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %27 = call i32 @nx_fw_cmd_destroy_rx_ctx(%struct.netxen_adapter* %26)
  %28 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %29 = call i32 @nx_fw_cmd_destroy_tx_ctx(%struct.netxen_adapter* %28)
  br label %42

30:                                               ; preds = %1
  %31 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %32 = call i32 @netxen_api_lock(%struct.netxen_adapter* %31)
  %33 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @CRB_CTX_SIGNATURE_REG(i32 %34)
  %36 = load i32, i32* @NETXEN_CTX_D3_RESET, align 4
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @NXWR32(%struct.netxen_adapter* %33, i32 %35, i32 %38)
  %40 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %41 = call i32 @netxen_api_unlock(%struct.netxen_adapter* %40)
  br label %42

42:                                               ; preds = %30, %25
  %43 = call i32 @msleep(i32 20)
  br label %44

44:                                               ; preds = %42, %24
  %45 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %45, i32 0, i32 5
  store %struct.netxen_recv_context* %46, %struct.netxen_recv_context** %3, align 8
  %47 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %3, align 8
  %48 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %44
  %52 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %3, align 8
  %56 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %3, align 8
  %59 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @pci_free_consistent(i32 %54, i32 8, i32* %57, i32 %60)
  %62 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %3, align 8
  %63 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %62, i32 0, i32 2
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %51, %44
  %65 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %65, i32 0, i32 4
  %67 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %66, align 8
  store %struct.nx_host_tx_ring* %67, %struct.nx_host_tx_ring** %6, align 8
  %68 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %6, align 8
  %69 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %64
  %73 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %74 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %6, align 8
  %77 = call i32 @TX_DESC_RINGSIZE(%struct.nx_host_tx_ring* %76)
  %78 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %6, align 8
  %79 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %6, align 8
  %82 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @pci_free_consistent(i32 %75, i32 %77, i32* %80, i32 %83)
  %85 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %6, align 8
  %86 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %85, i32 0, i32 0
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %72, %64
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %121, %87
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %91 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %124

94:                                               ; preds = %88
  %95 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %3, align 8
  %96 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %95, i32 0, i32 1
  %97 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %97, i64 %99
  store %struct.nx_host_rds_ring* %100, %struct.nx_host_rds_ring** %4, align 8
  %101 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %4, align 8
  %102 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %120

105:                                              ; preds = %94
  %106 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %107 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %4, align 8
  %110 = call i32 @RCV_DESC_RINGSIZE(%struct.nx_host_rds_ring* %109)
  %111 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %4, align 8
  %112 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %4, align 8
  %115 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @pci_free_consistent(i32 %108, i32 %110, i32* %113, i32 %116)
  %118 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %4, align 8
  %119 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %118, i32 0, i32 0
  store i32* null, i32** %119, align 8
  br label %120

120:                                              ; preds = %105, %94
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %88

124:                                              ; preds = %88
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %158, %124
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %128 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %161

131:                                              ; preds = %125
  %132 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %3, align 8
  %133 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %132, i32 0, i32 0
  %134 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %134, i64 %136
  store %struct.nx_host_sds_ring* %137, %struct.nx_host_sds_ring** %5, align 8
  %138 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %5, align 8
  %139 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %157

142:                                              ; preds = %131
  %143 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %144 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %5, align 8
  %147 = call i32 @STATUS_DESC_RINGSIZE(%struct.nx_host_sds_ring* %146)
  %148 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %5, align 8
  %149 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %5, align 8
  %152 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @pci_free_consistent(i32 %145, i32 %147, i32* %150, i32 %153)
  %155 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %5, align 8
  %156 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %155, i32 0, i32 0
  store i32* null, i32** %156, align 8
  br label %157

157:                                              ; preds = %142, %131
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %7, align 4
  br label %125

161:                                              ; preds = %125
  ret void
}

declare dso_local i32 @NX_IS_REVISION_P2(i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @nx_fw_cmd_destroy_rx_ctx(%struct.netxen_adapter*) #1

declare dso_local i32 @nx_fw_cmd_destroy_tx_ctx(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_api_lock(%struct.netxen_adapter*) #1

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i32, i32) #1

declare dso_local i32 @CRB_CTX_SIGNATURE_REG(i32) #1

declare dso_local i32 @netxen_api_unlock(%struct.netxen_adapter*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

declare dso_local i32 @TX_DESC_RINGSIZE(%struct.nx_host_tx_ring*) #1

declare dso_local i32 @RCV_DESC_RINGSIZE(%struct.nx_host_rds_ring*) #1

declare dso_local i32 @STATUS_DESC_RINGSIZE(%struct.nx_host_sds_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
