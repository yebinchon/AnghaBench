; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_ulp_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_ulp_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.bnxt_en_dev* }
%struct.bnxt_en_dev = type { %struct.bnxt_ulp* }
%struct.bnxt_ulp = type { i32, i32 }
%struct.bnxt_ulp_ops = type { i32 (i32)* }

@BNXT_MAX_ULP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_ulp_stop(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca %struct.bnxt_en_dev*, align 8
  %4 = alloca %struct.bnxt_ulp_ops*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt_ulp*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %7 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %8 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %7, i32 0, i32 0
  %9 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %8, align 8
  store %struct.bnxt_en_dev* %9, %struct.bnxt_en_dev** %3, align 8
  %10 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %3, align 8
  %11 = icmp ne %struct.bnxt_en_dev* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %48

13:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %45, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @BNXT_MAX_ULP, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %14
  %19 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %3, align 8
  %20 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %19, i32 0, i32 0
  %21 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %21, i64 %23
  store %struct.bnxt_ulp* %24, %struct.bnxt_ulp** %6, align 8
  %25 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %6, align 8
  %26 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.bnxt_ulp_ops* @rtnl_dereference(i32 %27)
  store %struct.bnxt_ulp_ops* %28, %struct.bnxt_ulp_ops** %4, align 8
  %29 = load %struct.bnxt_ulp_ops*, %struct.bnxt_ulp_ops** %4, align 8
  %30 = icmp ne %struct.bnxt_ulp_ops* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %18
  %32 = load %struct.bnxt_ulp_ops*, %struct.bnxt_ulp_ops** %4, align 8
  %33 = getelementptr inbounds %struct.bnxt_ulp_ops, %struct.bnxt_ulp_ops* %32, i32 0, i32 0
  %34 = load i32 (i32)*, i32 (i32)** %33, align 8
  %35 = icmp ne i32 (i32)* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %18
  br label %45

37:                                               ; preds = %31
  %38 = load %struct.bnxt_ulp_ops*, %struct.bnxt_ulp_ops** %4, align 8
  %39 = getelementptr inbounds %struct.bnxt_ulp_ops, %struct.bnxt_ulp_ops* %38, i32 0, i32 0
  %40 = load i32 (i32)*, i32 (i32)** %39, align 8
  %41 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %6, align 8
  %42 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 %40(i32 %43)
  br label %45

45:                                               ; preds = %37, %36
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %14

48:                                               ; preds = %12, %14
  ret void
}

declare dso_local %struct.bnxt_ulp_ops* @rtnl_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
