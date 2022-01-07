; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_check_srcdst_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_check_srcdst_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpe_ctx = type { %struct.vpe_q_data* }
%struct.vpe_q_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@Q_DATA_SRC = common dso_local global i64 0, align 8
@Q_DATA_DST = common dso_local global i64 0, align 8
@SC_MAX_PIXEL_HEIGHT = common dso_local global i32 0, align 4
@SC_MAX_PIXEL_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpe_ctx*)* @check_srcdst_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_srcdst_sizes(%struct.vpe_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vpe_ctx*, align 8
  %4 = alloca %struct.vpe_q_data*, align 8
  %5 = alloca %struct.vpe_q_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vpe_ctx* %0, %struct.vpe_ctx** %3, align 8
  %10 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %10, i32 0, i32 0
  %12 = load %struct.vpe_q_data*, %struct.vpe_q_data** %11, align 8
  %13 = load i64, i64* @Q_DATA_SRC, align 8
  %14 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %12, i64 %13
  store %struct.vpe_q_data* %14, %struct.vpe_q_data** %4, align 8
  %15 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %15, i32 0, i32 0
  %17 = load %struct.vpe_q_data*, %struct.vpe_q_data** %16, align 8
  %18 = load i64, i64* @Q_DATA_DST, align 8
  %19 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %17, i64 %18
  store %struct.vpe_q_data* %19, %struct.vpe_q_data** %5, align 8
  %20 = load %struct.vpe_q_data*, %struct.vpe_q_data** %4, align 8
  %21 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.vpe_q_data*, %struct.vpe_q_data** %4, align 8
  %25 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %29 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %33 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %1
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %62

44:                                               ; preds = %39, %1
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @SC_MAX_PIXEL_HEIGHT, align 4
  %47 = icmp ule i32 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @SC_MAX_PIXEL_WIDTH, align 4
  %51 = icmp ule i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @SC_MAX_PIXEL_HEIGHT, align 4
  %55 = icmp ule i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @SC_MAX_PIXEL_WIDTH, align 4
  %59 = icmp ule i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %62

61:                                               ; preds = %56, %52, %48, %44
  store i32 -1, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %60, %43
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
