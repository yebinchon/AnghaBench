; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_dcb.c_i40e_parse_org_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_dcb.c_i40e_parse_org_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_lldp_org_tlv = type { i32 }
%struct.i40e_dcbx_config = type { i32 }

@I40E_LLDP_TLV_OUI_MASK = common dso_local global i32 0, align 4
@I40E_LLDP_TLV_OUI_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_lldp_org_tlv*, %struct.i40e_dcbx_config*)* @i40e_parse_org_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_parse_org_tlv(%struct.i40e_lldp_org_tlv* %0, %struct.i40e_dcbx_config* %1) #0 {
  %3 = alloca %struct.i40e_lldp_org_tlv*, align 8
  %4 = alloca %struct.i40e_dcbx_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i40e_lldp_org_tlv* %0, %struct.i40e_lldp_org_tlv** %3, align 8
  store %struct.i40e_dcbx_config* %1, %struct.i40e_dcbx_config** %4, align 8
  %7 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %3, align 8
  %8 = getelementptr inbounds %struct.i40e_lldp_org_tlv, %struct.i40e_lldp_org_tlv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ntohl(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @I40E_LLDP_TLV_OUI_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @I40E_LLDP_TLV_OUI_SHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %25 [
    i32 128, label %17
    i32 129, label %21
  ]

17:                                               ; preds = %2
  %18 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %3, align 8
  %19 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %20 = call i32 @i40e_parse_ieee_tlv(%struct.i40e_lldp_org_tlv* %18, %struct.i40e_dcbx_config* %19)
  br label %26

21:                                               ; preds = %2
  %22 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %3, align 8
  %23 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %24 = call i32 @i40e_parse_cee_tlv(%struct.i40e_lldp_org_tlv* %22, %struct.i40e_dcbx_config* %23)
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %21, %17
  ret void
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @i40e_parse_ieee_tlv(%struct.i40e_lldp_org_tlv*, %struct.i40e_dcbx_config*) #1

declare dso_local i32 @i40e_parse_cee_tlv(%struct.i40e_lldp_org_tlv*, %struct.i40e_dcbx_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
