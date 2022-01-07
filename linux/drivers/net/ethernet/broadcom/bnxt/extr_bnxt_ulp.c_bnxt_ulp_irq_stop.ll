; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_ulp_irq_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_ulp_irq_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.bnxt_en_dev* }
%struct.bnxt_en_dev = type { i32, %struct.bnxt_ulp* }
%struct.bnxt_ulp = type { i32, i32, i32 }
%struct.bnxt_ulp_ops = type { i32 (i32)* }

@BNXT_EN_FLAG_MSIX_REQUESTED = common dso_local global i32 0, align 4
@BNXT_ROCE_ULP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_ulp_irq_stop(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca %struct.bnxt_en_dev*, align 8
  %4 = alloca %struct.bnxt_ulp_ops*, align 8
  %5 = alloca %struct.bnxt_ulp*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %6 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %7 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %6, i32 0, i32 0
  %8 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %7, align 8
  store %struct.bnxt_en_dev* %8, %struct.bnxt_en_dev** %3, align 8
  %9 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %3, align 8
  %10 = icmp ne %struct.bnxt_en_dev* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %3, align 8
  %13 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BNXT_EN_FLAG_MSIX_REQUESTED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11, %1
  br label %58

19:                                               ; preds = %11
  %20 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %21 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %20, i32 0, i32 0
  %22 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %21, align 8
  %23 = load i64, i64* @BNXT_ROCE_ULP, align 8
  %24 = call i64 @bnxt_ulp_registered(%struct.bnxt_en_dev* %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %19
  %27 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %3, align 8
  %28 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %27, i32 0, i32 1
  %29 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %28, align 8
  %30 = load i64, i64* @BNXT_ROCE_ULP, align 8
  %31 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %29, i64 %30
  store %struct.bnxt_ulp* %31, %struct.bnxt_ulp** %5, align 8
  %32 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %5, align 8
  %33 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %58

37:                                               ; preds = %26
  %38 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %5, align 8
  %39 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.bnxt_ulp_ops* @rtnl_dereference(i32 %40)
  store %struct.bnxt_ulp_ops* %41, %struct.bnxt_ulp_ops** %4, align 8
  %42 = load %struct.bnxt_ulp_ops*, %struct.bnxt_ulp_ops** %4, align 8
  %43 = icmp ne %struct.bnxt_ulp_ops* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.bnxt_ulp_ops*, %struct.bnxt_ulp_ops** %4, align 8
  %46 = getelementptr inbounds %struct.bnxt_ulp_ops, %struct.bnxt_ulp_ops* %45, i32 0, i32 0
  %47 = load i32 (i32)*, i32 (i32)** %46, align 8
  %48 = icmp ne i32 (i32)* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44, %37
  br label %58

50:                                               ; preds = %44
  %51 = load %struct.bnxt_ulp_ops*, %struct.bnxt_ulp_ops** %4, align 8
  %52 = getelementptr inbounds %struct.bnxt_ulp_ops, %struct.bnxt_ulp_ops* %51, i32 0, i32 0
  %53 = load i32 (i32)*, i32 (i32)** %52, align 8
  %54 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %5, align 8
  %55 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 %53(i32 %56)
  br label %58

58:                                               ; preds = %18, %36, %49, %50, %19
  ret void
}

declare dso_local i64 @bnxt_ulp_registered(%struct.bnxt_en_dev*, i64) #1

declare dso_local %struct.bnxt_ulp_ops* @rtnl_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
