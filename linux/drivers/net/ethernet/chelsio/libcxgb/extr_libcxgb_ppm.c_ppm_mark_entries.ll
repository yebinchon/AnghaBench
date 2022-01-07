; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/libcxgb/extr_libcxgb_ppm.c_ppm_mark_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/libcxgb/extr_libcxgb_ppm.c_ppm_mark_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_ppm = type { %struct.cxgbi_ppod_data* }
%struct.cxgbi_ppod_data = type { i64, i32, i32 }

@PPOD_IDX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_ppm*, i32, i32, i64)* @ppm_mark_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppm_mark_entries(%struct.cxgbi_ppm* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.cxgbi_ppm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.cxgbi_ppod_data*, align 8
  store %struct.cxgbi_ppm* %0, %struct.cxgbi_ppm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %5, align 8
  %11 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %10, i32 0, i32 0
  %12 = load %struct.cxgbi_ppod_data*, %struct.cxgbi_ppod_data** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cxgbi_ppod_data, %struct.cxgbi_ppod_data* %12, i64 %14
  store %struct.cxgbi_ppod_data* %15, %struct.cxgbi_ppod_data** %9, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.cxgbi_ppod_data*, %struct.cxgbi_ppod_data** %9, align 8
  %18 = getelementptr inbounds %struct.cxgbi_ppod_data, %struct.cxgbi_ppod_data* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.cxgbi_ppod_data*, %struct.cxgbi_ppod_data** %9, align 8
  %21 = getelementptr inbounds %struct.cxgbi_ppod_data, %struct.cxgbi_ppod_data* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.cxgbi_ppod_data*, %struct.cxgbi_ppod_data** %9, align 8
  %23 = getelementptr inbounds %struct.cxgbi_ppod_data, %struct.cxgbi_ppod_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PPOD_IDX_SHIFT, align 4
  %26 = shl i32 1, %25
  %27 = sub nsw i32 %26, 1
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load %struct.cxgbi_ppod_data*, %struct.cxgbi_ppod_data** %9, align 8
  %31 = getelementptr inbounds %struct.cxgbi_ppod_data, %struct.cxgbi_ppod_data* %30, i32 0, i32 2
  store i32 0, i32* %31, align 4
  br label %37

32:                                               ; preds = %4
  %33 = load %struct.cxgbi_ppod_data*, %struct.cxgbi_ppod_data** %9, align 8
  %34 = getelementptr inbounds %struct.cxgbi_ppod_data, %struct.cxgbi_ppod_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32, %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
