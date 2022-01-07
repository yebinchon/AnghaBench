; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_put_host_mem_chunks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_put_host_mem_chunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.host_memory_chunk = type { i8*, i8*, i8* }
%struct.wmi_tlv = type { i64, i8*, i8* }

@WMI_TLV_TAG_STRUCT_WLAN_HOST_MEMORY_CHUNK = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"wmi-tlv chunk %d len %d, addr 0x%llx, id 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, i8*)* @ath10k_wmi_tlv_put_host_mem_chunks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_tlv_put_host_mem_chunks(%struct.ath10k* %0, i8* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.host_memory_chunk*, align 8
  %6 = alloca %struct.wmi_tlv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @WMI_TLV_TAG_STRUCT_WLAN_HOST_MEMORY_CHUNK, align 4
  %11 = call i8* @__cpu_to_le16(i32 %10)
  store i8* %11, i8** %9, align 8
  %12 = call i8* @__cpu_to_le16(i32 24)
  store i8* %12, i8** %8, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %105, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %16 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %108

20:                                               ; preds = %13
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %22, %struct.wmi_tlv** %6, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.wmi_tlv*, %struct.wmi_tlv** %6, align 8
  %25 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.wmi_tlv*, %struct.wmi_tlv** %6, align 8
  %28 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.wmi_tlv*, %struct.wmi_tlv** %6, align 8
  %30 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = bitcast i8* %32 to %struct.host_memory_chunk*
  store %struct.host_memory_chunk* %33, %struct.host_memory_chunk** %5, align 8
  %34 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %35 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i8* @__cpu_to_le32(i64 %42)
  %44 = load %struct.host_memory_chunk*, %struct.host_memory_chunk** %5, align 8
  %45 = getelementptr inbounds %struct.host_memory_chunk, %struct.host_memory_chunk* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %47 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i8* @__cpu_to_le32(i64 %54)
  %56 = load %struct.host_memory_chunk*, %struct.host_memory_chunk** %5, align 8
  %57 = getelementptr inbounds %struct.host_memory_chunk, %struct.host_memory_chunk* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %59 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i8* @__cpu_to_le32(i64 %66)
  %68 = load %struct.host_memory_chunk*, %struct.host_memory_chunk** %5, align 8
  %69 = getelementptr inbounds %struct.host_memory_chunk, %struct.host_memory_chunk* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %71 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %74 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %83 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %92 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @ath10k_dbg(%struct.ath10k* %70, i32 %71, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %72, i64 %81, i64 %90, i64 %99)
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr i8, i8* %101, i64 24
  store i8* %102, i8** %4, align 8
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr i8, i8* %103, i64 24
  store i8* %104, i8** %4, align 8
  br label %105

105:                                              ; preds = %20
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %13

108:                                              ; preds = %13
  ret void
}

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i8* @__cpu_to_le32(i64) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
