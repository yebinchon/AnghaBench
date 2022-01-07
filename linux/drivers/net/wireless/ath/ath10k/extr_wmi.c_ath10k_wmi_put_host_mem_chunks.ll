; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_put_host_mem_chunks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_put_host_mem_chunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.wmi_host_mem_chunks = type { %struct.host_memory_chunk*, i8* }
%struct.host_memory_chunk = type { i8*, i8*, i8* }

@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"wmi chunk %d len %d requested, addr 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_wmi_put_host_mem_chunks(%struct.ath10k* %0, %struct.wmi_host_mem_chunks* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.wmi_host_mem_chunks*, align 8
  %5 = alloca %struct.host_memory_chunk*, align 8
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.wmi_host_mem_chunks* %1, %struct.wmi_host_mem_chunks** %4, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i8* @__cpu_to_le32(i32 %10)
  %12 = load %struct.wmi_host_mem_chunks*, %struct.wmi_host_mem_chunks** %4, align 8
  %13 = getelementptr inbounds %struct.wmi_host_mem_chunks, %struct.wmi_host_mem_chunks* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %87, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %17 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %90

21:                                               ; preds = %14
  %22 = load %struct.wmi_host_mem_chunks*, %struct.wmi_host_mem_chunks** %4, align 8
  %23 = getelementptr inbounds %struct.wmi_host_mem_chunks, %struct.wmi_host_mem_chunks* %22, i32 0, i32 0
  %24 = load %struct.host_memory_chunk*, %struct.host_memory_chunk** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.host_memory_chunk, %struct.host_memory_chunk* %24, i64 %26
  store %struct.host_memory_chunk* %27, %struct.host_memory_chunk** %5, align 8
  %28 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %29 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @__cpu_to_le32(i32 %36)
  %38 = load %struct.host_memory_chunk*, %struct.host_memory_chunk** %5, align 8
  %39 = getelementptr inbounds %struct.host_memory_chunk, %struct.host_memory_chunk* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %41 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @__cpu_to_le32(i32 %48)
  %50 = load %struct.host_memory_chunk*, %struct.host_memory_chunk** %5, align 8
  %51 = getelementptr inbounds %struct.host_memory_chunk, %struct.host_memory_chunk* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %53 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @__cpu_to_le32(i32 %60)
  %62 = load %struct.host_memory_chunk*, %struct.host_memory_chunk** %5, align 8
  %63 = getelementptr inbounds %struct.host_memory_chunk, %struct.host_memory_chunk* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %65 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %68 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %77 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = call i32 @ath10k_dbg(%struct.ath10k* %64, i32 %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %75, i64 %85)
  br label %87

87:                                               ; preds = %21
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %14

90:                                               ; preds = %14
  ret void
}

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
