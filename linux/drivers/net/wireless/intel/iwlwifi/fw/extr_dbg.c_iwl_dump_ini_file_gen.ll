; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_file_gen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_file_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.iwl_fw_ini_trigger* }
%struct.iwl_fw_ini_trigger = type { i8* }
%struct.list_head = type { i32 }
%struct.iwl_fw_ini_dump_entry = type { i32, i32, i64 }
%struct.iwl_fw_ini_dump_file_hdr = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@IWL_FW_INI_ERROR_DUMP_BARKER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iwl_fw_runtime*, i32, %struct.list_head*)* @iwl_dump_ini_file_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwl_dump_ini_file_gen(%struct.iwl_fw_runtime* %0, i32 %1, %struct.list_head* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.iwl_fw_runtime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.iwl_fw_ini_dump_entry*, align 8
  %9 = alloca %struct.iwl_fw_ini_dump_file_hdr*, align 8
  %10 = alloca %struct.iwl_fw_ini_trigger*, align 8
  %11 = alloca i64, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %12 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @iwl_fw_ini_trigger_on(%struct.iwl_fw_runtime* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %81

17:                                               ; preds = %3
  %18 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %19 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.iwl_fw_ini_trigger*, %struct.iwl_fw_ini_trigger** %25, align 8
  store %struct.iwl_fw_ini_trigger* %26, %struct.iwl_fw_ini_trigger** %10, align 8
  %27 = load %struct.iwl_fw_ini_trigger*, %struct.iwl_fw_ini_trigger** %10, align 8
  %28 = icmp ne %struct.iwl_fw_ini_trigger* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load %struct.iwl_fw_ini_trigger*, %struct.iwl_fw_ini_trigger** %10, align 8
  %31 = getelementptr inbounds %struct.iwl_fw_ini_trigger, %struct.iwl_fw_ini_trigger* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @le32_to_cpu(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29, %17
  store i64 0, i64* %4, align 8
  br label %81

36:                                               ; preds = %29
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.iwl_fw_ini_dump_entry* @kmalloc(i32 32, i32 %37)
  store %struct.iwl_fw_ini_dump_entry* %38, %struct.iwl_fw_ini_dump_entry** %8, align 8
  %39 = load %struct.iwl_fw_ini_dump_entry*, %struct.iwl_fw_ini_dump_entry** %8, align 8
  %40 = icmp ne %struct.iwl_fw_ini_dump_entry* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i64 0, i64* %4, align 8
  br label %81

42:                                               ; preds = %36
  %43 = load %struct.iwl_fw_ini_dump_entry*, %struct.iwl_fw_ini_dump_entry** %8, align 8
  %44 = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, %struct.iwl_fw_ini_dump_entry* %43, i32 0, i32 0
  store i32 16, i32* %44, align 8
  %45 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %46 = load %struct.iwl_fw_ini_trigger*, %struct.iwl_fw_ini_trigger** %10, align 8
  %47 = load %struct.list_head*, %struct.list_head** %7, align 8
  %48 = call i64 @iwl_dump_ini_trigger(%struct.iwl_fw_runtime* %45, %struct.iwl_fw_ini_trigger* %46, %struct.list_head* %47)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load %struct.iwl_fw_ini_dump_entry*, %struct.iwl_fw_ini_dump_entry** %8, align 8
  %53 = call i32 @kfree(%struct.iwl_fw_ini_dump_entry* %52)
  store i64 0, i64* %4, align 8
  br label %81

54:                                               ; preds = %42
  %55 = load %struct.iwl_fw_ini_dump_entry*, %struct.iwl_fw_ini_dump_entry** %8, align 8
  %56 = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, %struct.iwl_fw_ini_dump_entry* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = bitcast i8* %58 to %struct.iwl_fw_ini_dump_file_hdr*
  store %struct.iwl_fw_ini_dump_file_hdr* %59, %struct.iwl_fw_ini_dump_file_hdr** %9, align 8
  %60 = load i64, i64* @IWL_FW_INI_ERROR_DUMP_BARKER, align 8
  %61 = call i8* @cpu_to_le32(i64 %60)
  %62 = load %struct.iwl_fw_ini_dump_file_hdr*, %struct.iwl_fw_ini_dump_file_hdr** %9, align 8
  %63 = getelementptr inbounds %struct.iwl_fw_ini_dump_file_hdr, %struct.iwl_fw_ini_dump_file_hdr* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load %struct.iwl_fw_ini_dump_entry*, %struct.iwl_fw_ini_dump_entry** %8, align 8
  %66 = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, %struct.iwl_fw_ini_dump_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %64, %68
  %70 = call i8* @cpu_to_le32(i64 %69)
  %71 = load %struct.iwl_fw_ini_dump_file_hdr*, %struct.iwl_fw_ini_dump_file_hdr** %9, align 8
  %72 = getelementptr inbounds %struct.iwl_fw_ini_dump_file_hdr, %struct.iwl_fw_ini_dump_file_hdr* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.iwl_fw_ini_dump_entry*, %struct.iwl_fw_ini_dump_entry** %8, align 8
  %74 = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, %struct.iwl_fw_ini_dump_entry* %73, i32 0, i32 1
  %75 = load %struct.list_head*, %struct.list_head** %7, align 8
  %76 = call i32 @list_add(i32* %74, %struct.list_head* %75)
  %77 = load %struct.iwl_fw_ini_dump_file_hdr*, %struct.iwl_fw_ini_dump_file_hdr** %9, align 8
  %78 = getelementptr inbounds %struct.iwl_fw_ini_dump_file_hdr, %struct.iwl_fw_ini_dump_file_hdr* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @le32_to_cpu(i8* %79)
  store i64 %80, i64* %4, align 8
  br label %81

81:                                               ; preds = %54, %51, %41, %35, %16
  %82 = load i64, i64* %4, align 8
  ret i64 %82
}

declare dso_local i32 @iwl_fw_ini_trigger_on(%struct.iwl_fw_runtime*, i32) #1

declare dso_local i64 @le32_to_cpu(i8*) #1

declare dso_local %struct.iwl_fw_ini_dump_entry* @kmalloc(i32, i32) #1

declare dso_local i64 @iwl_dump_ini_trigger(%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_trigger*, %struct.list_head*) #1

declare dso_local i32 @kfree(%struct.iwl_fw_ini_dump_entry*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
