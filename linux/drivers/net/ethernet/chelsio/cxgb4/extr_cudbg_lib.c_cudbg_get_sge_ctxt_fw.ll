; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_get_sge_ctxt_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_get_sge_ctxt_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { i32 }
%struct.cudbg_ch_cntxt = type { i64, i8*, i32 }

@CTXT_FLM = common dso_local global i8* null, align 8
@CTXT_CNM = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cudbg_init*, i64, i8*, %struct.cudbg_ch_cntxt**)* @cudbg_get_sge_ctxt_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cudbg_get_sge_ctxt_fw(%struct.cudbg_init* %0, i64 %1, i8* %2, %struct.cudbg_ch_cntxt** %3) #0 {
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cudbg_ch_cntxt**, align 8
  %9 = alloca %struct.cudbg_ch_cntxt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.cudbg_init* %0, %struct.cudbg_init** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.cudbg_ch_cntxt** %3, %struct.cudbg_ch_cntxt*** %8, align 8
  %12 = load %struct.cudbg_ch_cntxt**, %struct.cudbg_ch_cntxt*** %8, align 8
  %13 = load %struct.cudbg_ch_cntxt*, %struct.cudbg_ch_cntxt** %12, align 8
  store %struct.cudbg_ch_cntxt* %13, %struct.cudbg_ch_cntxt** %9, align 8
  store i64 0, i64* %11, align 8
  br label %14

14:                                               ; preds = %63, %4
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %66

18:                                               ; preds = %14
  %19 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.cudbg_ch_cntxt*, %struct.cudbg_ch_cntxt** %9, align 8
  %23 = getelementptr inbounds %struct.cudbg_ch_cntxt, %struct.cudbg_ch_cntxt* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @cudbg_read_sge_ctxt(%struct.cudbg_init* %19, i64 %20, i8* %21, i32 %24)
  %26 = load %struct.cudbg_ch_cntxt*, %struct.cudbg_ch_cntxt** %9, align 8
  %27 = getelementptr inbounds %struct.cudbg_ch_cntxt, %struct.cudbg_ch_cntxt* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @cudbg_sge_ctxt_check_valid(i32 %28, i8* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %18
  br label %63

34:                                               ; preds = %18
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.cudbg_ch_cntxt*, %struct.cudbg_ch_cntxt** %9, align 8
  %37 = getelementptr inbounds %struct.cudbg_ch_cntxt, %struct.cudbg_ch_cntxt* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.cudbg_ch_cntxt*, %struct.cudbg_ch_cntxt** %9, align 8
  %40 = getelementptr inbounds %struct.cudbg_ch_cntxt, %struct.cudbg_ch_cntxt* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.cudbg_ch_cntxt*, %struct.cudbg_ch_cntxt** %9, align 8
  %42 = getelementptr inbounds %struct.cudbg_ch_cntxt, %struct.cudbg_ch_cntxt* %41, i32 1
  store %struct.cudbg_ch_cntxt* %42, %struct.cudbg_ch_cntxt** %9, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** @CTXT_FLM, align 8
  %45 = icmp eq i8* %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %34
  %47 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i8*, i8** @CTXT_CNM, align 8
  %50 = load %struct.cudbg_ch_cntxt*, %struct.cudbg_ch_cntxt** %9, align 8
  %51 = getelementptr inbounds %struct.cudbg_ch_cntxt, %struct.cudbg_ch_cntxt* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @cudbg_read_sge_ctxt(%struct.cudbg_init* %47, i64 %48, i8* %49, i32 %52)
  %54 = load i8*, i8** @CTXT_CNM, align 8
  %55 = load %struct.cudbg_ch_cntxt*, %struct.cudbg_ch_cntxt** %9, align 8
  %56 = getelementptr inbounds %struct.cudbg_ch_cntxt, %struct.cudbg_ch_cntxt* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.cudbg_ch_cntxt*, %struct.cudbg_ch_cntxt** %9, align 8
  %59 = getelementptr inbounds %struct.cudbg_ch_cntxt, %struct.cudbg_ch_cntxt* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.cudbg_ch_cntxt*, %struct.cudbg_ch_cntxt** %9, align 8
  %61 = getelementptr inbounds %struct.cudbg_ch_cntxt, %struct.cudbg_ch_cntxt* %60, i32 1
  store %struct.cudbg_ch_cntxt* %61, %struct.cudbg_ch_cntxt** %9, align 8
  br label %62

62:                                               ; preds = %46, %34
  br label %63

63:                                               ; preds = %62, %33
  %64 = load i64, i64* %11, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %11, align 8
  br label %14

66:                                               ; preds = %14
  %67 = load %struct.cudbg_ch_cntxt*, %struct.cudbg_ch_cntxt** %9, align 8
  %68 = load %struct.cudbg_ch_cntxt**, %struct.cudbg_ch_cntxt*** %8, align 8
  store %struct.cudbg_ch_cntxt* %67, %struct.cudbg_ch_cntxt** %68, align 8
  ret void
}

declare dso_local i32 @cudbg_read_sge_ctxt(%struct.cudbg_init*, i64, i8*, i32) #1

declare dso_local i32 @cudbg_sge_ctxt_check_valid(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
