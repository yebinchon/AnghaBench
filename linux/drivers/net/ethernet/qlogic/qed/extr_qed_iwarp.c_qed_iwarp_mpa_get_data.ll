; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_mpa_get_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_mpa_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.unaligned_opaque_data = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.unaligned_opaque_data*, i32, i32)* @qed_iwarp_mpa_get_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iwarp_mpa_get_data(%struct.qed_hwfn* %0, %struct.unaligned_opaque_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.unaligned_opaque_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.unaligned_opaque_data* %1, %struct.unaligned_opaque_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @HILO_64(i32 %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %6, align 8
  %14 = bitcast i32* %9 to %struct.unaligned_opaque_data*
  %15 = bitcast %struct.unaligned_opaque_data* %13 to i8*
  %16 = bitcast %struct.unaligned_opaque_data* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 4 %16, i64 24, i1 false)
  %17 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %6, align 8
  %18 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %6, align 8
  %21 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @le16_to_cpu(i64 %22)
  %24 = add nsw i64 %19, %23
  %25 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %6, align 8
  %26 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %6, align 8
  %28 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %6, align 8
  %32 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  ret void
}

declare dso_local i32 @HILO_64(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
