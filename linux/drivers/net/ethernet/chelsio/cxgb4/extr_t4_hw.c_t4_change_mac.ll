; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_change_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_change_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.fw_vi_mac_cmd = type { i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.fw_vi_mac_exact* }
%struct.fw_vi_mac_exact = type { i32, i32 }

@FW_VI_MAC_ADD_PERSIST_MAC = common dso_local global i32 0, align 4
@FW_VI_MAC_ADD_MAC = common dso_local global i32 0, align 4
@FW_VI_MAC_SMT_AND_MPSTCAM = common dso_local global i32 0, align 4
@FW_VI_MAC_MPS_TCAM_ENTRY = common dso_local global i32 0, align 4
@FW_VI_MAC_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4
@FW_VI_MAC_CMD_VALID_F = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHELSIO_T5 = common dso_local global i64 0, align 8
@FW_VIID_VIN_M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_change_mac(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.fw_vi_mac_cmd, align 8
  %18 = alloca %struct.fw_vi_mac_exact*, align 8
  %19 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %20 = getelementptr inbounds %struct.fw_vi_mac_cmd, %struct.fw_vi_mac_cmd* %17, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.fw_vi_mac_exact*, %struct.fw_vi_mac_exact** %21, align 8
  store %struct.fw_vi_mac_exact* %22, %struct.fw_vi_mac_exact** %18, align 8
  %23 = load %struct.adapter*, %struct.adapter** %8, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %7
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @FW_VI_MAC_ADD_PERSIST_MAC, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @FW_VI_MAC_ADD_MAC, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %37, %7
  %40 = load i32*, i32** %14, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @FW_VI_MAC_SMT_AND_MPSTCAM, align 4
  br label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @FW_VI_MAC_MPS_TCAM_ENTRY, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %16, align 4
  %48 = call i32 @memset(%struct.fw_vi_mac_cmd* %17, i32 0, i32 24)
  %49 = load i32, i32* @FW_VI_MAC_CMD, align 4
  %50 = call i32 @FW_CMD_OP_V(i32 %49)
  %51 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @FW_VI_MAC_CMD_VIID_V(i32 %55)
  %57 = or i32 %54, %56
  %58 = call i8* @cpu_to_be32(i32 %57)
  %59 = getelementptr inbounds %struct.fw_vi_mac_cmd, %struct.fw_vi_mac_cmd* %17, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = call i32 @FW_CMD_LEN16_V(i32 1)
  %61 = call i8* @cpu_to_be32(i32 %60)
  %62 = getelementptr inbounds %struct.fw_vi_mac_cmd, %struct.fw_vi_mac_cmd* %17, i32 0, i32 1
  store i8* %61, i8** %62, align 8
  %63 = load i32, i32* @FW_VI_MAC_CMD_VALID_F, align 4
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @FW_VI_MAC_CMD_SMAC_RESULT_V(i32 %64)
  %66 = or i32 %63, %65
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @FW_VI_MAC_CMD_IDX_V(i32 %67)
  %69 = or i32 %66, %68
  %70 = call i32 @cpu_to_be16(i32 %69)
  %71 = load %struct.fw_vi_mac_exact*, %struct.fw_vi_mac_exact** %18, align 8
  %72 = getelementptr inbounds %struct.fw_vi_mac_exact, %struct.fw_vi_mac_exact* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.fw_vi_mac_exact*, %struct.fw_vi_mac_exact** %18, align 8
  %74 = getelementptr inbounds %struct.fw_vi_mac_exact, %struct.fw_vi_mac_exact* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @memcpy(i32 %75, i32* %76, i32 4)
  %78 = load %struct.adapter*, %struct.adapter** %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @t4_wr_mbox(%struct.adapter* %78, i32 %79, %struct.fw_vi_mac_cmd* %17, i32 24, %struct.fw_vi_mac_cmd* %17)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %132

83:                                               ; preds = %46
  %84 = load %struct.fw_vi_mac_exact*, %struct.fw_vi_mac_exact** %18, align 8
  %85 = getelementptr inbounds %struct.fw_vi_mac_exact, %struct.fw_vi_mac_exact* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @be16_to_cpu(i32 %86)
  %88 = call i32 @FW_VI_MAC_CMD_IDX_G(i32 %87)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %19, align 4
  %91 = icmp uge i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %92, %83
  %96 = load i32*, i32** %14, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %131

98:                                               ; preds = %95
  %99 = load %struct.adapter*, %struct.adapter** %8, align 8
  %100 = getelementptr inbounds %struct.adapter, %struct.adapter* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.fw_vi_mac_cmd, %struct.fw_vi_mac_cmd* %17, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @be32_to_cpu(i8* %106)
  %108 = call i32 @FW_VI_MAC_CMD_SMTID_G(i32 %107)
  %109 = load i32*, i32** %14, align 8
  store i32 %108, i32* %109, align 4
  br label %130

110:                                              ; preds = %98
  %111 = load %struct.adapter*, %struct.adapter** %8, align 8
  %112 = getelementptr inbounds %struct.adapter, %struct.adapter* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @CHELSIO_CHIP_VERSION(i32 %114)
  %116 = load i64, i64* @CHELSIO_T5, align 8
  %117 = icmp sle i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @FW_VIID_VIN_M, align 4
  %121 = and i32 %119, %120
  %122 = shl i32 %121, 1
  %123 = load i32*, i32** %14, align 8
  store i32 %122, i32* %123, align 4
  br label %129

124:                                              ; preds = %110
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @FW_VIID_VIN_M, align 4
  %127 = and i32 %125, %126
  %128 = load i32*, i32** %14, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %124, %118
  br label %130

130:                                              ; preds = %129, %104
  br label %131

131:                                              ; preds = %130, %95
  br label %132

132:                                              ; preds = %131, %46
  %133 = load i32, i32* %15, align 4
  ret i32 %133
}

declare dso_local i32 @memset(%struct.fw_vi_mac_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_VI_MAC_CMD_VIID_V(i32) #1

declare dso_local i32 @FW_CMD_LEN16_V(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @FW_VI_MAC_CMD_SMAC_RESULT_V(i32) #1

declare dso_local i32 @FW_VI_MAC_CMD_IDX_V(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_vi_mac_cmd*, i32, %struct.fw_vi_mac_cmd*) #1

declare dso_local i32 @FW_VI_MAC_CMD_IDX_G(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @FW_VI_MAC_CMD_SMTID_G(i32) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

declare dso_local i64 @CHELSIO_CHIP_VERSION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
