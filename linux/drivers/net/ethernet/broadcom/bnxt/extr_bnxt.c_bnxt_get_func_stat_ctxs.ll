; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_get_func_stat_ctxs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_get_func_stat_ctxs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_get_func_stat_ctxs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_get_func_stat_ctxs(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %6 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %7 = call i32 @bnxt_get_ulp_stat_ctxs(%struct.bnxt* %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %9 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %33

15:                                               ; preds = %1
  %16 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %17 = call i64 @bnxt_nq_rings_in_use(%struct.bnxt* %16)
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %21 = call i64 @bnxt_get_ulp_msix_num(%struct.bnxt* %20)
  %22 = add nsw i64 %19, %21
  %23 = icmp sgt i64 %17, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %26 = call i32 @bnxt_get_ulp_msix_base(%struct.bnxt* %25)
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %2, align 4
  br label %33

29:                                               ; preds = %15
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %24, %13
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @bnxt_get_ulp_stat_ctxs(%struct.bnxt*) #1

declare dso_local i64 @bnxt_nq_rings_in_use(%struct.bnxt*) #1

declare dso_local i64 @bnxt_get_ulp_msix_num(%struct.bnxt*) #1

declare dso_local i32 @bnxt_get_ulp_msix_base(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
