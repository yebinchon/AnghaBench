; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_cee_fill_strict_pri.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_cee_fill_strict_pri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.cos_help_data = type { %struct.cos_entry_help_data* }
%struct.cos_entry_help_data = type { i64, i32, i32, i32 }

@DCBX_INVALID_COS_BW = common dso_local global i32 0, align 4
@BNX2X_DCBX_STRICT_COS_HIGHEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bnx2x*, %struct.cos_help_data*, i64, i64, i64)* @bnx2x_dcbx_cee_fill_strict_pri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnx2x_dcbx_cee_fill_strict_pri(%struct.bnx2x* %0, %struct.cos_help_data* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca %struct.cos_help_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.cos_entry_help_data*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %7, align 8
  store %struct.cos_help_data* %1, %struct.cos_help_data** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %14 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %11, align 8
  %18 = call i64 @bnx2x_dcbx_spread_strict_pri(%struct.bnx2x* %13, %struct.cos_help_data* %14, i64 %15, i64 %16, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %5
  %21 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %22 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %21, i32 0, i32 0
  %23 = load %struct.cos_entry_help_data*, %struct.cos_entry_help_data** %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds %struct.cos_entry_help_data, %struct.cos_entry_help_data* %23, i64 %24
  store %struct.cos_entry_help_data* %25, %struct.cos_entry_help_data** %12, align 8
  %26 = load i32, i32* @DCBX_INVALID_COS_BW, align 4
  %27 = load %struct.cos_entry_help_data*, %struct.cos_entry_help_data** %12, align 8
  %28 = getelementptr inbounds %struct.cos_entry_help_data, %struct.cos_entry_help_data* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @BNX2X_DCBX_STRICT_COS_HIGHEST, align 4
  %30 = load %struct.cos_entry_help_data*, %struct.cos_entry_help_data** %12, align 8
  %31 = getelementptr inbounds %struct.cos_entry_help_data, %struct.cos_entry_help_data* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.cos_entry_help_data*, %struct.cos_entry_help_data** %12, align 8
  %34 = getelementptr inbounds %struct.cos_entry_help_data, %struct.cos_entry_help_data* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %36 = load %struct.cos_entry_help_data*, %struct.cos_entry_help_data** %12, align 8
  %37 = getelementptr inbounds %struct.cos_entry_help_data, %struct.cos_entry_help_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @DCBX_IS_PFC_PRI_SOME_PAUSE(%struct.bnx2x* %35, i64 %38)
  %40 = load %struct.cos_entry_help_data*, %struct.cos_entry_help_data** %12, align 8
  %41 = getelementptr inbounds %struct.cos_entry_help_data, %struct.cos_entry_help_data* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  store i64 1, i64* %6, align 8
  br label %44

42:                                               ; preds = %5
  %43 = load i64, i64* %10, align 8
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %42, %20
  %45 = load i64, i64* %6, align 8
  ret i64 %45
}

declare dso_local i64 @bnx2x_dcbx_spread_strict_pri(%struct.bnx2x*, %struct.cos_help_data*, i64, i64, i64) #1

declare dso_local i32 @DCBX_IS_PFC_PRI_SOME_PAUSE(%struct.bnx2x*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
