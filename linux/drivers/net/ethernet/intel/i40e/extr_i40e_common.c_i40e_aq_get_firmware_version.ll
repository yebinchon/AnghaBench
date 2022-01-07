; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_get_firmware_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_get_firmware_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_get_version = type { i32, i32, i32, i32, i32 }

@i40e_aqc_opc_get_version = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_get_firmware_version(%struct.i40e_hw* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, %struct.i40e_asq_cmd_details* %6) #0 {
  %8 = alloca %struct.i40e_hw*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.i40e_asq_cmd_details*, align 8
  %15 = alloca %struct.i40e_aq_desc, align 4
  %16 = alloca %struct.i40e_aqc_get_version*, align 8
  %17 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.i40e_asq_cmd_details* %6, %struct.i40e_asq_cmd_details** %14, align 8
  %18 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %15, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast i32* %19 to %struct.i40e_aqc_get_version*
  store %struct.i40e_aqc_get_version* %20, %struct.i40e_aqc_get_version** %16, align 8
  %21 = load i32, i32* @i40e_aqc_opc_get_version, align 4
  %22 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %15, i32 %21)
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %24 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %14, align 8
  %25 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %23, %struct.i40e_aq_desc* %15, i32* null, i32 0, %struct.i40e_asq_cmd_details* %24)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %74, label %28

28:                                               ; preds = %7
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.i40e_aqc_get_version*, %struct.i40e_aqc_get_version** %16, align 8
  %33 = getelementptr inbounds %struct.i40e_aqc_get_version, %struct.i40e_aqc_get_version* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i32*, i32** %10, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.i40e_aqc_get_version*, %struct.i40e_aqc_get_version** %16, align 8
  %42 = getelementptr inbounds %struct.i40e_aqc_get_version, %struct.i40e_aqc_get_version* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le16_to_cpu(i32 %43)
  %45 = load i32*, i32** %10, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %40, %37
  %47 = load i32*, i32** %11, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.i40e_aqc_get_version*, %struct.i40e_aqc_get_version** %16, align 8
  %51 = getelementptr inbounds %struct.i40e_aqc_get_version, %struct.i40e_aqc_get_version* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = load i32*, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i32*, i32** %12, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.i40e_aqc_get_version*, %struct.i40e_aqc_get_version** %16, align 8
  %60 = getelementptr inbounds %struct.i40e_aqc_get_version, %struct.i40e_aqc_get_version* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le16_to_cpu(i32 %61)
  %63 = load i32*, i32** %12, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %58, %55
  %65 = load i32*, i32** %13, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.i40e_aqc_get_version*, %struct.i40e_aqc_get_version** %16, align 8
  %69 = getelementptr inbounds %struct.i40e_aqc_get_version, %struct.i40e_aqc_get_version* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le16_to_cpu(i32 %70)
  %72 = load i32*, i32** %13, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %67, %64
  br label %74

74:                                               ; preds = %73, %7
  %75 = load i32, i32* %17, align 4
  ret i32 %75
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
