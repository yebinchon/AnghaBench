; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_fill_cee_pg_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_fill_cee_pg_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_dcb_param = type { i32*, i32* }
%struct.qlcnic_dcb_cee = type { %struct.qlcnic_dcb_pg_cfg* }
%struct.qlcnic_dcb_pg_cfg = type { i32, i64, i64 }

@QLC_DCB_MAX_PG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_cee*)* @qlcnic_dcb_fill_cee_pg_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_dcb_fill_cee_pg_params(%struct.qlcnic_dcb_param* %0, %struct.qlcnic_dcb_cee* %1) #0 {
  %3 = alloca %struct.qlcnic_dcb_param*, align 8
  %4 = alloca %struct.qlcnic_dcb_cee*, align 8
  %5 = alloca %struct.qlcnic_dcb_pg_cfg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.qlcnic_dcb_param* %0, %struct.qlcnic_dcb_param** %3, align 8
  store %struct.qlcnic_dcb_cee* %1, %struct.qlcnic_dcb_cee** %4, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %60, %2
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @QLC_DCB_MAX_PG, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %63

13:                                               ; preds = %9
  %14 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %4, align 8
  %15 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %14, i32 0, i32 0
  %16 = load %struct.qlcnic_dcb_pg_cfg*, %struct.qlcnic_dcb_pg_cfg** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.qlcnic_dcb_pg_cfg, %struct.qlcnic_dcb_pg_cfg* %16, i64 %17
  store %struct.qlcnic_dcb_pg_cfg* %18, %struct.qlcnic_dcb_pg_cfg** %5, align 8
  %19 = load %struct.qlcnic_dcb_pg_cfg*, %struct.qlcnic_dcb_pg_cfg** %5, align 8
  %20 = getelementptr inbounds %struct.qlcnic_dcb_pg_cfg, %struct.qlcnic_dcb_pg_cfg* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %21, 4
  br i1 %22, label %23, label %38

23:                                               ; preds = %13
  %24 = load %struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_param** %3, align 8
  %25 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @QLC_DCB_GET_BWPER_PG(i32 %28, i64 %29)
  store i64 %30, i64* %8, align 8
  %31 = load %struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_param** %3, align 8
  %32 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @QLC_DCB_GET_TSA_PG(i32 %35, i64 %36)
  store i64 %37, i64* %7, align 8
  br label %53

38:                                               ; preds = %13
  %39 = load %struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_param** %3, align 8
  %40 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @QLC_DCB_GET_BWPER_PG(i32 %43, i64 %44)
  store i64 %45, i64* %8, align 8
  %46 = load %struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_param** %3, align 8
  %47 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @QLC_DCB_GET_TSA_PG(i32 %50, i64 %51)
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %38, %23
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.qlcnic_dcb_pg_cfg*, %struct.qlcnic_dcb_pg_cfg** %5, align 8
  %56 = getelementptr inbounds %struct.qlcnic_dcb_pg_cfg, %struct.qlcnic_dcb_pg_cfg* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.qlcnic_dcb_pg_cfg*, %struct.qlcnic_dcb_pg_cfg** %5, align 8
  %59 = getelementptr inbounds %struct.qlcnic_dcb_pg_cfg, %struct.qlcnic_dcb_pg_cfg* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %53
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %6, align 8
  br label %9

63:                                               ; preds = %9
  ret void
}

declare dso_local i64 @QLC_DCB_GET_BWPER_PG(i32, i64) #1

declare dso_local i64 @QLC_DCB_GET_TSA_PG(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
