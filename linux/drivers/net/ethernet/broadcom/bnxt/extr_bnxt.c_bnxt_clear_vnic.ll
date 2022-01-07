; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_clear_vnic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_clear_vnic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32 }

@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@BNXT_FLAG_TPA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_clear_vnic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_clear_vnic(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %3 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %4 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %44

8:                                                ; preds = %1
  %9 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %10 = call i32 @bnxt_hwrm_clear_vnic_filter(%struct.bnxt* %9)
  %11 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %8
  %18 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %19 = call i32 @bnxt_hwrm_clear_vnic_rss(%struct.bnxt* %18)
  %20 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %21 = call i32 @bnxt_hwrm_vnic_ctx_free(%struct.bnxt* %20)
  br label %22

22:                                               ; preds = %17, %8
  %23 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %24 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BNXT_FLAG_TPA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %31 = call i32 @bnxt_set_tpa(%struct.bnxt* %30, i32 0)
  br label %32

32:                                               ; preds = %29, %22
  %33 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %34 = call i32 @bnxt_hwrm_vnic_free(%struct.bnxt* %33)
  %35 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %36 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %43 = call i32 @bnxt_hwrm_vnic_ctx_free(%struct.bnxt* %42)
  br label %44

44:                                               ; preds = %7, %41, %32
  ret void
}

declare dso_local i32 @bnxt_hwrm_clear_vnic_filter(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_clear_vnic_rss(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_vnic_ctx_free(%struct.bnxt*) #1

declare dso_local i32 @bnxt_set_tpa(%struct.bnxt*, i32) #1

declare dso_local i32 @bnxt_hwrm_vnic_free(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
