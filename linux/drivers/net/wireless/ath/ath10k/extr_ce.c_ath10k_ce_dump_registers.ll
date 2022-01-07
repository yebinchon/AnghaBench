; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_dump_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_dump_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_fw_crash_data = type { %struct.ath10k_ce_crash_data* }
%struct.ath10k_ce_crash_data = type { i8*, i8*, i8*, i8*, i8* }
%struct.ath10k_ce = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Copy Engine register dump:\0A\00", align 1
@CE_COUNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"[%02d]: 0x%08x %3u %3u %3u %3u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_ce_dump_registers(%struct.ath10k* %0, %struct.ath10k_fw_crash_data* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_fw_crash_data*, align 8
  %5 = alloca %struct.ath10k_ce*, align 8
  %6 = alloca %struct.ath10k_ce_crash_data, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.ath10k_fw_crash_data* %1, %struct.ath10k_fw_crash_data** %4, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %9)
  store %struct.ath10k_ce* %10, %struct.ath10k_ce** %5, align 8
  %11 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %12 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %11, i32 0, i32 0
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ath10k_ce*, %struct.ath10k_ce** %5, align 8
  %17 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_bh(i32* %17)
  store i64 0, i64* %8, align 8
  br label %19

19:                                               ; preds = %79, %2
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @CE_COUNT, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %82

23:                                               ; preds = %19
  %24 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @ath10k_ce_base_address(%struct.ath10k* %24, i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i8* @cpu_to_le32(i64 %27)
  %29 = getelementptr inbounds %struct.ath10k_ce_crash_data, %struct.ath10k_ce_crash_data* %6, i32 0, i32 4
  store i8* %28, i8** %29, align 8
  %30 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @ath10k_ce_src_ring_write_index_get(%struct.ath10k* %30, i64 %31)
  %33 = call i8* @cpu_to_le32(i64 %32)
  %34 = getelementptr inbounds %struct.ath10k_ce_crash_data, %struct.ath10k_ce_crash_data* %6, i32 0, i32 3
  store i8* %33, i8** %34, align 8
  %35 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @ath10k_ce_src_ring_read_index_get(%struct.ath10k* %35, i64 %36)
  %38 = call i8* @cpu_to_le32(i64 %37)
  %39 = getelementptr inbounds %struct.ath10k_ce_crash_data, %struct.ath10k_ce_crash_data* %6, i32 0, i32 2
  store i8* %38, i8** %39, align 8
  %40 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @ath10k_ce_dest_ring_write_index_get(%struct.ath10k* %40, i64 %41)
  %43 = call i8* @cpu_to_le32(i64 %42)
  %44 = getelementptr inbounds %struct.ath10k_ce_crash_data, %struct.ath10k_ce_crash_data* %6, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  %45 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @ath10k_ce_dest_ring_read_index_get(%struct.ath10k* %45, i64 %46)
  %48 = call i8* @cpu_to_le32(i64 %47)
  %49 = getelementptr inbounds %struct.ath10k_ce_crash_data, %struct.ath10k_ce_crash_data* %6, i32 0, i32 0
  store i8* %48, i8** %49, align 8
  %50 = load %struct.ath10k_fw_crash_data*, %struct.ath10k_fw_crash_data** %4, align 8
  %51 = icmp ne %struct.ath10k_fw_crash_data* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %23
  %53 = load %struct.ath10k_fw_crash_data*, %struct.ath10k_fw_crash_data** %4, align 8
  %54 = getelementptr inbounds %struct.ath10k_fw_crash_data, %struct.ath10k_fw_crash_data* %53, i32 0, i32 0
  %55 = load %struct.ath10k_ce_crash_data*, %struct.ath10k_ce_crash_data** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.ath10k_ce_crash_data, %struct.ath10k_ce_crash_data* %55, i64 %56
  %58 = bitcast %struct.ath10k_ce_crash_data* %57 to i8*
  %59 = bitcast %struct.ath10k_ce_crash_data* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 40, i1 false)
  br label %60

60:                                               ; preds = %52, %23
  %61 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds %struct.ath10k_ce_crash_data, %struct.ath10k_ce_crash_data* %6, i32 0, i32 4
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @le32_to_cpu(i8* %64)
  %66 = getelementptr inbounds %struct.ath10k_ce_crash_data, %struct.ath10k_ce_crash_data* %6, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @le32_to_cpu(i8* %67)
  %69 = getelementptr inbounds %struct.ath10k_ce_crash_data, %struct.ath10k_ce_crash_data* %6, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @le32_to_cpu(i8* %70)
  %72 = getelementptr inbounds %struct.ath10k_ce_crash_data, %struct.ath10k_ce_crash_data* %6, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @le32_to_cpu(i8* %73)
  %75 = getelementptr inbounds %struct.ath10k_ce_crash_data, %struct.ath10k_ce_crash_data* %6, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @le32_to_cpu(i8* %76)
  %78 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %62, i32 %65, i32 %68, i32 %71, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %60
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %8, align 8
  br label %19

82:                                               ; preds = %19
  %83 = load %struct.ath10k_ce*, %struct.ath10k_ce** %5, align 8
  %84 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock_bh(i32* %84)
  ret void
}

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @ath10k_ce_base_address(%struct.ath10k*, i64) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @ath10k_ce_src_ring_write_index_get(%struct.ath10k*, i64) #1

declare dso_local i64 @ath10k_ce_src_ring_read_index_get(%struct.ath10k*, i64) #1

declare dso_local i64 @ath10k_ce_dest_ring_write_index_get(%struct.ath10k*, i64) #1

declare dso_local i64 @ath10k_ce_dest_ring_read_index_get(%struct.ath10k*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
