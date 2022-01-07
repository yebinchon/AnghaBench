; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_func_qcaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_func_qcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"hwrm query qportcfg failure rc: %d\0A\00", align 1
@BNXT_FW_CAP_NEW_RM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_hwrm_func_qcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_func_qcaps(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %5 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %6 = call i32 @__bnxt_hwrm_func_qcaps(%struct.bnxt* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %13 = call i32 @bnxt_hwrm_queue_qportcfg(%struct.bnxt* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @netdev_err(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %48

23:                                               ; preds = %11
  %24 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %25 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 67587
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %30 = call i32 @bnxt_alloc_ctx_mem(%struct.bnxt* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %48

35:                                               ; preds = %28
  %36 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %37 = call i32 @bnxt_hwrm_func_resc_qcaps(%struct.bnxt* %36, i32 1)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @BNXT_FW_CAP_NEW_RM, align 4
  %42 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %43 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %35
  br label %47

47:                                               ; preds = %46, %23
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %33, %16, %9
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @__bnxt_hwrm_func_qcaps(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_queue_qportcfg(%struct.bnxt*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @bnxt_alloc_ctx_mem(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_func_resc_qcaps(%struct.bnxt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
