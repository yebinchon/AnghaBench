; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_mac_address_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_mac_address_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_mac_address_write = type { i32, i8*, i8* }

@i40e_aqc_opc_mac_address_write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_mac_address_write(%struct.i40e_hw* %0, i32 %1, i32* %2, %struct.i40e_asq_cmd_details* %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.i40e_asq_cmd_details*, align 8
  %9 = alloca %struct.i40e_aq_desc, align 4
  %10 = alloca %struct.i40e_aqc_mac_address_write*, align 8
  %11 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.i40e_asq_cmd_details* %3, %struct.i40e_asq_cmd_details** %8, align 8
  %12 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %9, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to %struct.i40e_aqc_mac_address_write*
  store %struct.i40e_aqc_mac_address_write* %14, %struct.i40e_aqc_mac_address_write** %10, align 8
  %15 = load i32, i32* @i40e_aqc_opc_mac_address_write, align 4
  %16 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %9, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i8* @cpu_to_le16(i32 %17)
  %19 = load %struct.i40e_aqc_mac_address_write*, %struct.i40e_aqc_mac_address_write** %10, align 8
  %20 = getelementptr inbounds %struct.i40e_aqc_mac_address_write, %struct.i40e_aqc_mac_address_write* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %24, %27
  %29 = call i8* @cpu_to_le16(i32 %28)
  %30 = load %struct.i40e_aqc_mac_address_write*, %struct.i40e_aqc_mac_address_write** %10, align 8
  %31 = getelementptr inbounds %struct.i40e_aqc_mac_address_write, %struct.i40e_aqc_mac_address_write* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 24
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 16
  %40 = or i32 %35, %39
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  %45 = or i32 %40, %44
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 5
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %45, %48
  %50 = call i32 @cpu_to_le32(i32 %49)
  %51 = load %struct.i40e_aqc_mac_address_write*, %struct.i40e_aqc_mac_address_write** %10, align 8
  %52 = getelementptr inbounds %struct.i40e_aqc_mac_address_write, %struct.i40e_aqc_mac_address_write* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %54 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %8, align 8
  %55 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %53, %struct.i40e_aq_desc* %9, i32* null, i32 0, %struct.i40e_asq_cmd_details* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  ret i32 %56
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
