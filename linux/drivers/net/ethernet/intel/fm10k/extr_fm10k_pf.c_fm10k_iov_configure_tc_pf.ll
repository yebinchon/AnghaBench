; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_iov_configure_tc_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_iov_configure_tc_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@FM10K_TC_RATE_INTERVAL_4US_GEN3 = common dso_local global i32 0, align 4
@FM10K_TC_RATE_QUANTA_MASK = common dso_local global i32 0, align 4
@FM10K_ERR_PARAM = common dso_local global i32 0, align 4
@FM10K_TC_RATE_INTERVAL_4US_GEN1 = common dso_local global i32 0, align 4
@FM10K_TC_RATE_INTERVAL_4US_GEN2 = common dso_local global i32 0, align 4
@FM10K_VF_TC_MAX = common dso_local global i32 0, align 4
@FM10K_VF_TC_MIN = common dso_local global i32 0, align 4
@FM10K_TC_MAXCREDIT_64K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*, i64, i32)* @fm10k_iov_configure_tc_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_iov_configure_tc_pf(%struct.fm10k_hw* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fm10k_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @FM10K_TC_RATE_INTERVAL_4US_GEN3, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @FM10K_TC_RATE_QUANTA_MASK, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %14 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %12, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %19, i32* %4, align 4
  br label %74

20:                                               ; preds = %3
  %21 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %22 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %29 [
    i32 129, label %25
    i32 128, label %27
  ]

25:                                               ; preds = %20
  %26 = load i32, i32* @FM10K_TC_RATE_INTERVAL_4US_GEN1, align 4
  store i32 %26, i32* %8, align 4
  br label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @FM10K_TC_RATE_INTERVAL_4US_GEN2, align 4
  store i32 %28, i32* %8, align 4
  br label %30

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %27, %25
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @FM10K_VF_TC_MAX, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @FM10K_VF_TC_MIN, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %33
  %42 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %42, i32* %4, align 4
  br label %74

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %44, 128
  %46 = sdiv i32 %45, 125
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 4000
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = shl i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %55

52:                                               ; preds = %43
  %53 = load i32, i32* %9, align 4
  %54 = ashr i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55, %30
  %57 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @FM10K_TC_RATE(i64 %58)
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %57, i32 %59, i32 %62)
  %64 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @FM10K_TC_MAXCREDIT(i64 %65)
  %67 = load i32, i32* @FM10K_TC_MAXCREDIT_64K, align 4
  %68 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %64, i32 %66, i32 %67)
  %69 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @FM10K_TC_CREDIT(i64 %70)
  %72 = load i32, i32* @FM10K_TC_MAXCREDIT_64K, align 4
  %73 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %69, i32 %71, i32 %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %56, %41, %18
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i32) #1

declare dso_local i32 @FM10K_TC_RATE(i64) #1

declare dso_local i32 @FM10K_TC_MAXCREDIT(i64) #1

declare dso_local i32 @FM10K_TC_CREDIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
