; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_ip6_proto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_ip6_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_prs_entry = type { i32 }

@IPPROTO_TCP = common dso_local global i16 0, align 2
@IPPROTO_UDP = common dso_local global i16 0, align 2
@IPPROTO_ICMPV6 = common dso_local global i16 0, align 2
@IPPROTO_IPIP = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4
@MVPP2_PE_FIRST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PE_LAST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_IP6 = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_FLOWS = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_LU_GEN_BIT = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_UDF_TYPE_L4 = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_OP_SEL_UDF_ADD = common dso_local global i32 0, align 4
@MVPP2_PRS_TCAM_PROTO_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_IPV6_NO_EXT_AI_BIT = common dso_local global i32 0, align 4
@MVPP2_PRS_PORT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2*, i16, i32, i32)* @mvpp2_prs_ip6_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_prs_ip6_proto(%struct.mvpp2* %0, i16 zeroext %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mvpp2*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mvpp2_prs_entry, align 4
  %11 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %6, align 8
  store i16 %1, i16* %7, align 2
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i16, i16* %7, align 2
  %13 = zext i16 %12 to i32
  %14 = load i16, i16* @IPPROTO_TCP, align 2
  %15 = zext i16 %14 to i32
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %4
  %18 = load i16, i16* %7, align 2
  %19 = zext i16 %18 to i32
  %20 = load i16, i16* @IPPROTO_UDP, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load i16, i16* %7, align 2
  %25 = zext i16 %24 to i32
  %26 = load i16, i16* @IPPROTO_ICMPV6, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load i16, i16* %7, align 2
  %31 = zext i16 %30 to i32
  %32 = load i16, i16* @IPPROTO_IPIP, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %78

38:                                               ; preds = %29, %23, %17, %4
  %39 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %40 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  %41 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  %42 = call i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2* %39, i32 %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %5, align 4
  br label %78

47:                                               ; preds = %38
  %48 = call i32 @memset(%struct.mvpp2_prs_entry* %10, i32 0, i32 4)
  %49 = load i32, i32* @MVPP2_PRS_LU_IP6, align 4
  %50 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %10, i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %10, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @MVPP2_PRS_LU_FLOWS, align 4
  %54 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %10, i32 %53)
  %55 = load i32, i32* @MVPP2_PRS_SRAM_LU_GEN_BIT, align 4
  %56 = call i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry* %10, i32 %55, i32 1)
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %10, i32 %57, i32 %58)
  %60 = load i32, i32* @MVPP2_PRS_SRAM_UDF_TYPE_L4, align 4
  %61 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_UDF_ADD, align 4
  %62 = call i32 @mvpp2_prs_sram_offset_set(%struct.mvpp2_prs_entry* %10, i32 %60, i32 -2, i32 %61)
  %63 = load i16, i16* %7, align 2
  %64 = load i32, i32* @MVPP2_PRS_TCAM_PROTO_MASK, align 4
  %65 = call i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %10, i32 0, i16 zeroext %63, i32 %64)
  %66 = load i32, i32* @MVPP2_PRS_IPV6_NO_EXT_AI_BIT, align 4
  %67 = load i32, i32* @MVPP2_PRS_IPV6_NO_EXT_AI_BIT, align 4
  %68 = call i32 @mvpp2_prs_tcam_ai_update(%struct.mvpp2_prs_entry* %10, i32 %66, i32 %67)
  %69 = load i32, i32* @MVPP2_PRS_PORT_MASK, align 4
  %70 = call i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry* %10, i32 %69)
  %71 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %72 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %10, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MVPP2_PRS_LU_IP6, align 4
  %75 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %71, i32 %73, i32 %74)
  %76 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %77 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %76, %struct.mvpp2_prs_entry* %10)
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %47, %45, %35
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @memset(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_offset_set(%struct.mvpp2_prs_entry*, i32, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry*, i32, i16 zeroext, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_ai_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_shadow_set(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_hw_write(%struct.mvpp2*, %struct.mvpp2_prs_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
