; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c_nfp_eth_port_translate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c_nfp_eth_port_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_nsp = type { i32 }
%union.eth_table_entry = type { i32 }
%struct.nfp_eth_table_port = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NSP_ETH_PORT_INDEX = common dso_local global i32 0, align 4
@NSP_ETH_NBI_PORT_COUNT = common dso_local global i32 0, align 4
@NSP_ETH_PORT_LANES = common dso_local global i32 0, align 4
@NSP_ETH_STATE_ENABLED = common dso_local global i32 0, align 4
@NSP_ETH_STATE_TX_ENABLED = common dso_local global i32 0, align 4
@NSP_ETH_STATE_RX_ENABLED = common dso_local global i32 0, align 4
@NSP_ETH_STATE_RATE = common dso_local global i32 0, align 4
@NSP_ETH_STATE_INTERFACE = common dso_local global i32 0, align 4
@NSP_ETH_STATE_MEDIA = common dso_local global i32 0, align 4
@NSP_ETH_PORT_PHYLABEL = common dso_local global i32 0, align 4
@NSP_ETH_PORT_LABEL = common dso_local global i32 0, align 4
@NSP_ETH_STATE_OVRD_CHNG = common dso_local global i32 0, align 4
@NSP_ETH_STATE_ANEG = common dso_local global i32 0, align 4
@NSP_ETH_PORT_FEC_SUPP_BASER = common dso_local global i32 0, align 4
@NFP_FEC_BASER_BIT = common dso_local global i32 0, align 4
@NSP_ETH_PORT_FEC_SUPP_RS = common dso_local global i32 0, align 4
@NFP_FEC_REED_SOLOMON_BIT = common dso_local global i32 0, align 4
@NFP_FEC_AUTO = common dso_local global i32 0, align 4
@NFP_FEC_DISABLED = common dso_local global i32 0, align 4
@NSP_ETH_STATE_FEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_nsp*, %union.eth_table_entry*, i32, %struct.nfp_eth_table_port*)* @nfp_eth_port_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_eth_port_translate(%struct.nfp_nsp* %0, %union.eth_table_entry* %1, i32 %2, %struct.nfp_eth_table_port* %3) #0 {
  %5 = alloca %struct.nfp_nsp*, align 8
  %6 = alloca %union.eth_table_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_eth_table_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nfp_nsp* %0, %struct.nfp_nsp** %5, align 8
  store %union.eth_table_entry* %1, %union.eth_table_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nfp_eth_table_port* %3, %struct.nfp_eth_table_port** %8, align 8
  %13 = load %union.eth_table_entry*, %union.eth_table_entry** %6, align 8
  %14 = bitcast %union.eth_table_entry* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le64_to_cpu(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load %union.eth_table_entry*, %union.eth_table_entry** %6, align 8
  %18 = bitcast %union.eth_table_entry* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le64_to_cpu(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @NSP_ETH_PORT_INDEX, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @FIELD_GET(i32 %21, i32 %22)
  %24 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %25 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %28 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @NSP_ETH_NBI_PORT_COUNT, align 4
  %31 = udiv i32 %29, %30
  %32 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %33 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @NSP_ETH_NBI_PORT_COUNT, align 4
  %36 = urem i32 %34, %35
  %37 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %38 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @NSP_ETH_PORT_LANES, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @FIELD_GET(i32 %39, i32 %40)
  %42 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %43 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @NSP_ETH_STATE_ENABLED, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @FIELD_GET(i32 %44, i32 %45)
  %47 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %48 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @NSP_ETH_STATE_TX_ENABLED, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @FIELD_GET(i32 %49, i32 %50)
  %52 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %53 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @NSP_ETH_STATE_RX_ENABLED, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @FIELD_GET(i32 %54, i32 %55)
  %57 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %58 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @NSP_ETH_STATE_RATE, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @FIELD_GET(i32 %59, i32 %60)
  %62 = call i32 @nfp_eth_rate2speed(i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %64 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = mul i32 %65, %66
  %68 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %69 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @NSP_ETH_STATE_INTERFACE, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @FIELD_GET(i32 %70, i32 %71)
  %73 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %74 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %73, i32 0, i32 9
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @NSP_ETH_STATE_MEDIA, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @FIELD_GET(i32 %75, i32 %76)
  %78 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %79 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %78, i32 0, i32 10
  store i32 %77, i32* %79, align 4
  %80 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %81 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %80, i32 0, i32 17
  %82 = load i32, i32* %81, align 4
  %83 = load %union.eth_table_entry*, %union.eth_table_entry** %6, align 8
  %84 = bitcast %union.eth_table_entry* %83 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @nfp_eth_copy_mac_reverse(i32 %82, i32 %85)
  %87 = load i32, i32* @NSP_ETH_PORT_PHYLABEL, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @FIELD_GET(i32 %87, i32 %88)
  %90 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %91 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %90, i32 0, i32 11
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @NSP_ETH_PORT_LABEL, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @FIELD_GET(i32 %92, i32 %93)
  %95 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %96 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %95, i32 0, i32 12
  store i32 %94, i32* %96, align 4
  %97 = load %struct.nfp_nsp*, %struct.nfp_nsp** %5, align 8
  %98 = call i32 @nfp_nsp_get_abi_ver_minor(%struct.nfp_nsp* %97)
  %99 = icmp slt i32 %98, 17
  br i1 %99, label %100, label %101

100:                                              ; preds = %4
  br label %156

101:                                              ; preds = %4
  %102 = load i32, i32* @NSP_ETH_STATE_OVRD_CHNG, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @FIELD_GET(i32 %102, i32 %103)
  %105 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %106 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %105, i32 0, i32 13
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @NSP_ETH_STATE_ANEG, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @FIELD_GET(i32 %107, i32 %108)
  %110 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %111 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %110, i32 0, i32 14
  store i32 %109, i32* %111, align 4
  %112 = load %struct.nfp_nsp*, %struct.nfp_nsp** %5, align 8
  %113 = call i32 @nfp_nsp_get_abi_ver_minor(%struct.nfp_nsp* %112)
  %114 = icmp slt i32 %113, 22
  br i1 %114, label %115, label %116

115:                                              ; preds = %101
  br label %156

116:                                              ; preds = %101
  %117 = load i32, i32* @NSP_ETH_PORT_FEC_SUPP_BASER, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @FIELD_GET(i32 %117, i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @NFP_FEC_BASER_BIT, align 4
  %122 = shl i32 %120, %121
  %123 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %124 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %123, i32 0, i32 15
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* @NSP_ETH_PORT_FEC_SUPP_RS, align 4
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @FIELD_GET(i32 %127, i32 %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @NFP_FEC_REED_SOLOMON_BIT, align 4
  %132 = shl i32 %130, %131
  %133 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %134 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %133, i32 0, i32 15
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %138 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %137, i32 0, i32 15
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %116
  %142 = load i32, i32* @NFP_FEC_AUTO, align 4
  %143 = load i32, i32* @NFP_FEC_DISABLED, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %146 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %145, i32 0, i32 15
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %141, %116
  %150 = load i32, i32* @NSP_ETH_STATE_FEC, align 4
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @FIELD_GET(i32 %150, i32 %151)
  %153 = shl i32 1, %152
  %154 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %155 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %154, i32 0, i32 16
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %149, %115, %100
  ret void
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @nfp_eth_rate2speed(i32) #1

declare dso_local i32 @nfp_eth_copy_mac_reverse(i32, i32) #1

declare dso_local i32 @nfp_nsp_get_abi_ver_minor(%struct.nfp_nsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
