; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_ilt_cli_blk_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_ilt_cli_blk_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_ilt_client_cfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.qed_ilt_cli_blk = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_ilt_client_cfg*, %struct.qed_ilt_cli_blk*, i32, i32, i32)* @qed_ilt_cli_blk_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_ilt_cli_blk_fill(%struct.qed_ilt_client_cfg* %0, %struct.qed_ilt_cli_blk* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.qed_ilt_client_cfg*, align 8
  %7 = alloca %struct.qed_ilt_cli_blk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qed_ilt_client_cfg* %0, %struct.qed_ilt_client_cfg** %6, align 8
  store %struct.qed_ilt_cli_blk* %1, %struct.qed_ilt_cli_blk** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %6, align 8
  %13 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ILT_PAGE_IN_BYTES(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %7, align 8
  %18 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %42

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %7, align 8
  %25 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %7, align 8
  %27 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sdiv i32 %31, %32
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %7, align 8
  %37 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %30, %22
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %7, align 8
  %41 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %21
  ret void
}

declare dso_local i32 @ILT_PAGE_IN_BYTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
