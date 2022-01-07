; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_mac_address_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_mac_address_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_aqc_mac_address_read_data = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_mac_address_read = type { i32 }

@i40e_aqc_opc_mac_address_read = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, i32*, %struct.i40e_aqc_mac_address_read_data*, %struct.i40e_asq_cmd_details*)* @i40e_aq_mac_address_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_aq_mac_address_read(%struct.i40e_hw* %0, i32* %1, %struct.i40e_aqc_mac_address_read_data* %2, %struct.i40e_asq_cmd_details* %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.i40e_aqc_mac_address_read_data*, align 8
  %8 = alloca %struct.i40e_asq_cmd_details*, align 8
  %9 = alloca %struct.i40e_aq_desc, align 4
  %10 = alloca %struct.i40e_aqc_mac_address_read*, align 8
  %11 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.i40e_aqc_mac_address_read_data* %2, %struct.i40e_aqc_mac_address_read_data** %7, align 8
  store %struct.i40e_asq_cmd_details* %3, %struct.i40e_asq_cmd_details** %8, align 8
  %12 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %9, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to %struct.i40e_aqc_mac_address_read*
  store %struct.i40e_aqc_mac_address_read* %14, %struct.i40e_aqc_mac_address_read** %10, align 8
  %15 = load i32, i32* @i40e_aqc_opc_mac_address_read, align 4
  %16 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %9, i32 %15)
  %17 = load i32, i32* @I40E_AQ_FLAG_BUF, align 4
  %18 = call i32 @cpu_to_le16(i32 %17)
  %19 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %9, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 4
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %23 = load %struct.i40e_aqc_mac_address_read_data*, %struct.i40e_aqc_mac_address_read_data** %7, align 8
  %24 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %8, align 8
  %25 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %22, %struct.i40e_aq_desc* %9, %struct.i40e_aqc_mac_address_read_data* %23, i32 4, %struct.i40e_asq_cmd_details* %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.i40e_aqc_mac_address_read*, %struct.i40e_aqc_mac_address_read** %10, align 8
  %27 = getelementptr inbounds %struct.i40e_aqc_mac_address_read, %struct.i40e_aqc_mac_address_read* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %11, align 4
  ret i32 %31
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, %struct.i40e_aqc_mac_address_read_data*, i32, %struct.i40e_asq_cmd_details*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
