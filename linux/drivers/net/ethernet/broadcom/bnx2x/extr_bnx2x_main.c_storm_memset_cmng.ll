; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_storm_memset_cmng.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_storm_memset_cmng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.cmng_init = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32* }

@BAR_XSTRORM_INTMEM = common dso_local global i64 0, align 8
@VN_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.cmng_init*, i32)* @storm_memset_cmng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storm_memset_cmng(%struct.bnx2x* %0, %struct.cmng_init* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.cmng_init*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.cmng_init* %1, %struct.cmng_init** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 4, i64* %8, align 8
  %11 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @XSTORM_CMNG_PER_PORT_VARS_OFFSET(i32 %12)
  %14 = add nsw i64 %11, %13
  store i64 %14, i64* %9, align 8
  %15 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.cmng_init*, %struct.cmng_init** %5, align 8
  %19 = getelementptr inbounds %struct.cmng_init, %struct.cmng_init* %18, i32 0, i32 1
  %20 = bitcast i32* %19 to i64*
  %21 = call i32 @__storm_memset_struct(%struct.bnx2x* %15, i64 %16, i64 %17, i64* %20)
  %22 = load i32, i32* @VN_0, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %64, %3
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %26 = call i32 @BP_MAX_VN_NUM(%struct.bnx2x* %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %23
  %29 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @func_by_vn(%struct.bnx2x* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @XSTORM_RATE_SHAPING_PER_VN_VARS_OFFSET(i32 %33)
  %35 = add nsw i64 %32, %34
  store i64 %35, i64* %9, align 8
  store i64 4, i64* %8, align 8
  %36 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.cmng_init*, %struct.cmng_init** %5, align 8
  %40 = getelementptr inbounds %struct.cmng_init, %struct.cmng_init* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = bitcast i32* %45 to i64*
  %47 = call i32 @__storm_memset_struct(%struct.bnx2x* %36, i64 %37, i64 %38, i64* %46)
  %48 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @XSTORM_FAIRNESS_PER_VN_VARS_OFFSET(i32 %49)
  %51 = add nsw i64 %48, %50
  store i64 %51, i64* %9, align 8
  store i64 4, i64* %8, align 8
  %52 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.cmng_init*, %struct.cmng_init** %5, align 8
  %56 = getelementptr inbounds %struct.cmng_init, %struct.cmng_init* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = bitcast i32* %61 to i64*
  %63 = call i32 @__storm_memset_struct(%struct.bnx2x* %52, i64 %53, i64 %54, i64* %62)
  br label %64

64:                                               ; preds = %28
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %23

67:                                               ; preds = %23
  ret void
}

declare dso_local i64 @XSTORM_CMNG_PER_PORT_VARS_OFFSET(i32) #1

declare dso_local i32 @__storm_memset_struct(%struct.bnx2x*, i64, i64, i64*) #1

declare dso_local i32 @BP_MAX_VN_NUM(%struct.bnx2x*) #1

declare dso_local i32 @func_by_vn(%struct.bnx2x*, i32) #1

declare dso_local i64 @XSTORM_RATE_SHAPING_PER_VN_VARS_OFFSET(i32) #1

declare dso_local i64 @XSTORM_FAIRNESS_PER_VN_VARS_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
