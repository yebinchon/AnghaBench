; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_add_to_cos_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_add_to_cos_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.cos_entry_help_data = type { i64 }

@DCBX_INVALID_COS_BW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.cos_entry_help_data*, i64)* @bnx2x_dcbx_add_to_cos_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_dcbx_add_to_cos_bw(%struct.bnx2x* %0, %struct.cos_entry_help_data* %1, i64 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.cos_entry_help_data*, align 8
  %6 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.cos_entry_help_data* %1, %struct.cos_entry_help_data** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.cos_entry_help_data*, %struct.cos_entry_help_data** %5, align 8
  %8 = getelementptr inbounds %struct.cos_entry_help_data, %struct.cos_entry_help_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DCBX_INVALID_COS_BW, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.cos_entry_help_data*, %struct.cos_entry_help_data** %5, align 8
  %15 = getelementptr inbounds %struct.cos_entry_help_data, %struct.cos_entry_help_data* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %22

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.cos_entry_help_data*, %struct.cos_entry_help_data** %5, align 8
  %19 = getelementptr inbounds %struct.cos_entry_help_data, %struct.cos_entry_help_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, %17
  store i64 %21, i64* %19, align 8
  br label %22

22:                                               ; preds = %16, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
