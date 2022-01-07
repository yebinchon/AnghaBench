; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/libcxgb/extr_libcxgb_ppm.c_cxgbi_ppm_ppod_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/libcxgb/extr_libcxgb_ppm.c_cxgbi_ppm_ppod_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_ppm = type { i64, %struct.cxgbi_ppod_data* }
%struct.cxgbi_ppod_data = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"ippm: idx too big %u > %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"ippm: idx %u, npods 0.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"release idx %u, npods %u.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbi_ppm_ppod_release(%struct.cxgbi_ppm* %0, i64 %1) #0 {
  %3 = alloca %struct.cxgbi_ppm*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.cxgbi_ppod_data*, align 8
  store %struct.cxgbi_ppm* %0, %struct.cxgbi_ppm** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %3, align 8
  %8 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %6, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %3, align 8
  %14 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 (i8*, i64, ...) @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %15)
  br label %42

17:                                               ; preds = %2
  %18 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %3, align 8
  %19 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %18, i32 0, i32 1
  %20 = load %struct.cxgbi_ppod_data*, %struct.cxgbi_ppod_data** %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.cxgbi_ppod_data, %struct.cxgbi_ppod_data* %20, i64 %21
  store %struct.cxgbi_ppod_data* %22, %struct.cxgbi_ppod_data** %5, align 8
  %23 = load %struct.cxgbi_ppod_data*, %struct.cxgbi_ppod_data** %5, align 8
  %24 = getelementptr inbounds %struct.cxgbi_ppod_data, %struct.cxgbi_ppod_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load i64, i64* %4, align 8
  %29 = call i32 (i8*, i64, ...) @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  br label %42

30:                                               ; preds = %17
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.cxgbi_ppod_data*, %struct.cxgbi_ppod_data** %5, align 8
  %33 = getelementptr inbounds %struct.cxgbi_ppod_data, %struct.cxgbi_ppod_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %31, i32 %34)
  %36 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.cxgbi_ppod_data*, %struct.cxgbi_ppod_data** %5, align 8
  %39 = getelementptr inbounds %struct.cxgbi_ppod_data, %struct.cxgbi_ppod_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ppm_unmark_entries(%struct.cxgbi_ppm* %36, i64 %37, i32 %40)
  br label %42

42:                                               ; preds = %30, %27, %11
  ret void
}

declare dso_local i32 @pr_warn(i8*, i64, ...) #1

declare dso_local i32 @pr_debug(i8*, i64, i32) #1

declare dso_local i32 @ppm_unmark_entries(%struct.cxgbi_ppm*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
