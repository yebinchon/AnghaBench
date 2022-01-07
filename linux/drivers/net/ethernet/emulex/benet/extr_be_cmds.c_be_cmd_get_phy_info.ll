; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_phy_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_phy_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i8*, i8*, i8* }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_get_phy_info = type { i32, i32, i32, i32, i32, i32 }
%struct.be_dma_mem = type { i32, i32, %struct.be_phy_info* }
%struct.be_phy_info = type { i32, i32, i32, i32, i32, i32 }

@OPCODE_COMMON_GET_PHY_DETAILS = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Memory alloc failure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BE_SUPPORTED_SPEED_10GBPS = common dso_local global i32 0, align 4
@BE_SUPPORTED_SPEED_1GBPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_phy_info(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_mcc_wrb*, align 8
  %5 = alloca %struct.be_cmd_req_get_phy_info*, align 8
  %6 = alloca %struct.be_dma_mem, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_phy_info*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %9 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %10 = load i32, i32* @OPCODE_COMMON_GET_PHY_DETAILS, align 4
  %11 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %12 = call i32 @be_cmd_allowed(%struct.be_adapter* %9, i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %133

17:                                               ; preds = %1
  %18 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %22 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %21)
  store %struct.be_mcc_wrb* %22, %struct.be_mcc_wrb** %4, align 8
  %23 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %24 = icmp ne %struct.be_mcc_wrb* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %128

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 0
  store i32 24, i32* %29, align 8
  %30 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 1
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call %struct.be_phy_info* @dma_alloc_coherent(i32* %33, i32 %35, i32* %36, i32 %37)
  %39 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  store %struct.be_phy_info* %38, %struct.be_phy_info** %39, align 8
  %40 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  %41 = load %struct.be_phy_info*, %struct.be_phy_info** %40, align 8
  %42 = icmp ne %struct.be_phy_info* %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %28
  %44 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %128

51:                                               ; preds = %28
  %52 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  %53 = load %struct.be_phy_info*, %struct.be_phy_info** %52, align 8
  %54 = bitcast %struct.be_phy_info* %53 to %struct.be_cmd_req_get_phy_info*
  store %struct.be_cmd_req_get_phy_info* %54, %struct.be_cmd_req_get_phy_info** %5, align 8
  %55 = load %struct.be_cmd_req_get_phy_info*, %struct.be_cmd_req_get_phy_info** %5, align 8
  %56 = getelementptr inbounds %struct.be_cmd_req_get_phy_info, %struct.be_cmd_req_get_phy_info* %55, i32 0, i32 5
  %57 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %58 = load i32, i32* @OPCODE_COMMON_GET_PHY_DETAILS, align 4
  %59 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %60 = call i32 @be_wrb_cmd_hdr_prepare(i32* %56, i32 %57, i32 %58, i32 24, %struct.be_mcc_wrb* %59, %struct.be_dma_mem* %6)
  %61 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %62 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %116, label %65

65:                                               ; preds = %51
  %66 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  %67 = load %struct.be_phy_info*, %struct.be_phy_info** %66, align 8
  %68 = getelementptr inbounds %struct.be_phy_info, %struct.be_phy_info* %67, i64 4
  store %struct.be_phy_info* %68, %struct.be_phy_info** %8, align 8
  %69 = load %struct.be_phy_info*, %struct.be_phy_info** %8, align 8
  %70 = getelementptr inbounds %struct.be_phy_info, %struct.be_phy_info* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @le16_to_cpu(i32 %71)
  %73 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 4
  store i8* %72, i8** %75, align 8
  %76 = load %struct.be_phy_info*, %struct.be_phy_info** %8, align 8
  %77 = getelementptr inbounds %struct.be_phy_info, %struct.be_phy_info* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @le16_to_cpu(i32 %78)
  %80 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  store i8* %79, i8** %82, align 8
  %83 = load %struct.be_phy_info*, %struct.be_phy_info** %8, align 8
  %84 = getelementptr inbounds %struct.be_phy_info, %struct.be_phy_info* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @le16_to_cpu(i32 %85)
  %87 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  store i8* %86, i8** %89, align 8
  %90 = load %struct.be_phy_info*, %struct.be_phy_info** %8, align 8
  %91 = getelementptr inbounds %struct.be_phy_info, %struct.be_phy_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @le16_to_cpu(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %96 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load %struct.be_phy_info*, %struct.be_phy_info** %8, align 8
  %99 = getelementptr inbounds %struct.be_phy_info, %struct.be_phy_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le32_to_cpu(i32 %100)
  %102 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  %105 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %106 = call i64 @BE2_chip(%struct.be_adapter* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %65
  %109 = load i32, i32* @BE_SUPPORTED_SPEED_10GBPS, align 4
  %110 = load i32, i32* @BE_SUPPORTED_SPEED_1GBPS, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %113 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  br label %115

115:                                              ; preds = %108, %65
  br label %116

116:                                              ; preds = %115, %51
  %117 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %117, i32 0, i32 1
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  %124 = load %struct.be_phy_info*, %struct.be_phy_info** %123, align 8
  %125 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @dma_free_coherent(i32* %120, i32 %122, %struct.be_phy_info* %124, i32 %126)
  br label %128

128:                                              ; preds = %116, %43, %25
  %129 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %130 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %129, i32 0, i32 0
  %131 = call i32 @mutex_unlock(i32* %130)
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %128, %14
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @be_cmd_allowed(%struct.be_adapter*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_phy_info* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @BE2_chip(%struct.be_adapter*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.be_phy_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
