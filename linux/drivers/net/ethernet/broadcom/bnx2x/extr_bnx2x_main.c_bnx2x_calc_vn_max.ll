; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_calc_vn_max.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_calc_vn_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cmng_init_input = type { i32* }

@FUNC_MF_CFG_FUNC_HIDE = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"vn %d: vn_max_rate %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32, %struct.cmng_init_input*)* @bnx2x_calc_vn_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_calc_vn_max(%struct.bnx2x* %0, i32 %1, %struct.cmng_init_input* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmng_init_input*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cmng_init_input* %2, %struct.cmng_init_input** %6, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @FUNC_MF_CFG_FUNC_HIDE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %41

22:                                               ; preds = %3
  %23 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @bnx2x_extract_max_cfg(%struct.bnx2x* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %27 = call i64 @IS_MF_PERCENT_BW(%struct.bnx2x* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %31 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sdiv i32 %35, 100
  store i32 %36, i32* %7, align 4
  br label %40

37:                                               ; preds = %22
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %38, 100
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %37, %29
  br label %41

41:                                               ; preds = %40, %21
  %42 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @DP(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.cmng_init_input*, %struct.cmng_init_input** %6, align 8
  %48 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  ret void
}

declare dso_local i32 @bnx2x_extract_max_cfg(%struct.bnx2x*, i32) #1

declare dso_local i64 @IS_MF_PERCENT_BW(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
