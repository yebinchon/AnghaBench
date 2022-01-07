; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_by_abs_fid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_by_abs_fid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_virtf = type { i32 }
%struct.bnx2x = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bnx2x_virtf* (%struct.bnx2x*, i64)* @bnx2x_vf_by_abs_fid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bnx2x_virtf* @bnx2x_vf_by_abs_fid(%struct.bnx2x* %0, i64 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @bnx2x_vf_idx_by_abs_fid(%struct.bnx2x* %6, i64 %7)
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %12 = call i64 @BNX2X_NR_VIRTFN(%struct.bnx2x* %11)
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call %struct.bnx2x_virtf* @BP_VF(%struct.bnx2x* %15, i64 %16)
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi %struct.bnx2x_virtf* [ %17, %14 ], [ null, %18 ]
  ret %struct.bnx2x_virtf* %20
}

declare dso_local i32 @bnx2x_vf_idx_by_abs_fid(%struct.bnx2x*, i64) #1

declare dso_local i64 @BNX2X_NR_VIRTFN(%struct.bnx2x*) #1

declare dso_local %struct.bnx2x_virtf* @BP_VF(%struct.bnx2x*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
