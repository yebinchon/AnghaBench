; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_ulp_sriov_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_ulp_sriov_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.bnxt_en_dev* }
%struct.bnxt_en_dev = type { %struct.bnxt_ulp* }
%struct.bnxt_ulp = type { i32, i32 }
%struct.bnxt_ulp_ops = type { i32 (i32, i32)* }

@BNXT_MAX_ULP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_ulp_sriov_cfg(%struct.bnxt* %0, i32 %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_en_dev*, align 8
  %6 = alloca %struct.bnxt_ulp_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnxt_ulp*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 0
  %11 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %10, align 8
  store %struct.bnxt_en_dev* %11, %struct.bnxt_en_dev** %5, align 8
  %12 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %5, align 8
  %13 = icmp ne %struct.bnxt_en_dev* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %58

15:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %55, %15
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @BNXT_MAX_ULP, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %16
  %21 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %5, align 8
  %22 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %21, i32 0, i32 0
  %23 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %23, i64 %25
  store %struct.bnxt_ulp* %26, %struct.bnxt_ulp** %8, align 8
  %27 = call i32 (...) @rcu_read_lock()
  %28 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %8, align 8
  %29 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.bnxt_ulp_ops* @rcu_dereference(i32 %30)
  store %struct.bnxt_ulp_ops* %31, %struct.bnxt_ulp_ops** %6, align 8
  %32 = load %struct.bnxt_ulp_ops*, %struct.bnxt_ulp_ops** %6, align 8
  %33 = icmp ne %struct.bnxt_ulp_ops* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load %struct.bnxt_ulp_ops*, %struct.bnxt_ulp_ops** %6, align 8
  %36 = getelementptr inbounds %struct.bnxt_ulp_ops, %struct.bnxt_ulp_ops* %35, i32 0, i32 0
  %37 = load i32 (i32, i32)*, i32 (i32, i32)** %36, align 8
  %38 = icmp ne i32 (i32, i32)* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %34, %20
  %40 = call i32 (...) @rcu_read_unlock()
  br label %55

41:                                               ; preds = %34
  %42 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %8, align 8
  %43 = call i32 @bnxt_ulp_get(%struct.bnxt_ulp* %42)
  %44 = call i32 (...) @rcu_read_unlock()
  %45 = load %struct.bnxt_ulp_ops*, %struct.bnxt_ulp_ops** %6, align 8
  %46 = getelementptr inbounds %struct.bnxt_ulp_ops, %struct.bnxt_ulp_ops* %45, i32 0, i32 0
  %47 = load i32 (i32, i32)*, i32 (i32, i32)** %46, align 8
  %48 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %8, align 8
  %49 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 %47(i32 %50, i32 %51)
  %53 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %8, align 8
  %54 = call i32 @bnxt_ulp_put(%struct.bnxt_ulp* %53)
  br label %55

55:                                               ; preds = %41, %39
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %16

58:                                               ; preds = %14, %16
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.bnxt_ulp_ops* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @bnxt_ulp_get(%struct.bnxt_ulp*) #1

declare dso_local i32 @bnxt_ulp_put(%struct.bnxt_ulp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
