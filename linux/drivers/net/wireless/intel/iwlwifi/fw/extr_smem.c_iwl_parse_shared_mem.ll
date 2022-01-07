; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_smem.c_iwl_parse_shared_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_smem.c_iwl_parse_shared_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i8**, i8*, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8** }
%struct.TYPE_5__ = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_shared_mem_cfg_v2 = type { i8**, i8*, i8**, i8** }

@IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_fw_runtime*, %struct.iwl_rx_packet*)* @iwl_parse_shared_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_parse_shared_mem(%struct.iwl_fw_runtime* %0, %struct.iwl_rx_packet* %1) #0 {
  %3 = alloca %struct.iwl_fw_runtime*, align 8
  %4 = alloca %struct.iwl_rx_packet*, align 8
  %5 = alloca %struct.iwl_shared_mem_cfg_v2*, align 8
  %6 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %3, align 8
  store %struct.iwl_rx_packet* %1, %struct.iwl_rx_packet** %4, align 8
  %7 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %8 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.iwl_shared_mem_cfg_v2*
  store %struct.iwl_shared_mem_cfg_v2* %11, %struct.iwl_shared_mem_cfg_v2** %5, align 8
  %12 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.iwl_shared_mem_cfg_v2*, %struct.iwl_shared_mem_cfg_v2** %5, align 8
  %16 = getelementptr inbounds %struct.iwl_shared_mem_cfg_v2, %struct.iwl_shared_mem_cfg_v2* %15, i32 0, i32 3
  %17 = load i8**, i8*** %16, align 8
  %18 = call i32 @ARRAY_SIZE(i8** %17)
  %19 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %20 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %48, %2
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.iwl_shared_mem_cfg_v2*, %struct.iwl_shared_mem_cfg_v2** %5, align 8
  %25 = getelementptr inbounds %struct.iwl_shared_mem_cfg_v2, %struct.iwl_shared_mem_cfg_v2* %24, i32 0, i32 3
  %26 = load i8**, i8*** %25, align 8
  %27 = call i32 @ARRAY_SIZE(i8** %26)
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %22
  %30 = load %struct.iwl_shared_mem_cfg_v2*, %struct.iwl_shared_mem_cfg_v2** %5, align 8
  %31 = getelementptr inbounds %struct.iwl_shared_mem_cfg_v2, %struct.iwl_shared_mem_cfg_v2* %30, i32 0, i32 3
  %32 = load i8**, i8*** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @le32_to_cpu(i8* %36)
  %38 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %39 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* %37, i8** %47, align 8
  br label %48

48:                                               ; preds = %29
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %22

51:                                               ; preds = %22
  %52 = load %struct.iwl_shared_mem_cfg_v2*, %struct.iwl_shared_mem_cfg_v2** %5, align 8
  %53 = getelementptr inbounds %struct.iwl_shared_mem_cfg_v2, %struct.iwl_shared_mem_cfg_v2* %52, i32 0, i32 2
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @le32_to_cpu(i8* %56)
  %58 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %59 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i8* %57, i8** %63, align 8
  %64 = load %struct.iwl_shared_mem_cfg_v2*, %struct.iwl_shared_mem_cfg_v2** %5, align 8
  %65 = getelementptr inbounds %struct.iwl_shared_mem_cfg_v2, %struct.iwl_shared_mem_cfg_v2* %64, i32 0, i32 2
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i8* @le32_to_cpu(i8* %68)
  %70 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %71 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  store i8* %69, i8** %72, align 8
  %73 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %74 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* @IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG, align 4
  %78 = call i64 @fw_has_capa(i32* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %117

80:                                               ; preds = %51
  %81 = call i32 @BUILD_BUG_ON(i32 0)
  %82 = load %struct.iwl_shared_mem_cfg_v2*, %struct.iwl_shared_mem_cfg_v2** %5, align 8
  %83 = getelementptr inbounds %struct.iwl_shared_mem_cfg_v2, %struct.iwl_shared_mem_cfg_v2* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @le32_to_cpu(i8* %84)
  %86 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %87 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  store i8* %85, i8** %88, align 8
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %113, %80
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %92 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i8**, i8*** %93, align 8
  %95 = call i32 @ARRAY_SIZE(i8** %94)
  %96 = icmp slt i32 %90, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %89
  %98 = load %struct.iwl_shared_mem_cfg_v2*, %struct.iwl_shared_mem_cfg_v2** %5, align 8
  %99 = getelementptr inbounds %struct.iwl_shared_mem_cfg_v2, %struct.iwl_shared_mem_cfg_v2* %98, i32 0, i32 0
  %100 = load i8**, i8*** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* @le32_to_cpu(i8* %104)
  %106 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %107 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i8**, i8*** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  store i8* %105, i8** %112, align 8
  br label %113

113:                                              ; preds = %97
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %89

116:                                              ; preds = %89
  br label %117

117:                                              ; preds = %116, %51
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i8* @le32_to_cpu(i8*) #1

declare dso_local i64 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
