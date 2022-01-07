; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_cmng_fns_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_cmng_fns_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.cmng_init_input = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }

@CMNG_FNS_MINMAX = common dso_local global i64 0, align 8
@VN_0 = common dso_local global i32 0, align 4
@CMNG_FLAGS_PER_PORT_RATE_SHAPING_VN = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"rate shaping and fairness are disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i64, i64)* @bnx2x_cmng_fns_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_cmng_fns_init(%struct.bnx2x* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cmng_init_input, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = call i32 @memset(%struct.cmng_init_input* %7, i32 0, i32 16)
  %10 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %7, i32 0, i32 1
  store i64 %13, i64* %14, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @CMNG_FNS_MINMAX, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %7, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %60

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %27 = call i32 @bnx2x_read_mf_cfg(%struct.bnx2x* %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %30 = call i32 @bnx2x_calc_vn_min(%struct.bnx2x* %29, %struct.cmng_init_input* %7)
  %31 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %28
  %37 = load i32, i32* @VN_0, align 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %47, %36
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %41 = call i32 @BP_MAX_VN_NUM(%struct.bnx2x* %40)
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @bnx2x_calc_vn_max(%struct.bnx2x* %44, i32 %45, %struct.cmng_init_input* %7)
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %38

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %28
  %52 = load i32, i32* @CMNG_FLAGS_PER_PORT_RATE_SHAPING_VN, align 4
  %53 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %7, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %58 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %57, i32 0, i32 0
  %59 = call i32 @bnx2x_init_cmng(%struct.cmng_init_input* %7, i32* %58)
  br label %63

60:                                               ; preds = %18, %3
  %61 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %62 = call i32 @DP(i32 %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %51
  ret void
}

declare dso_local i32 @memset(%struct.cmng_init_input*, i32, i32) #1

declare dso_local i32 @bnx2x_read_mf_cfg(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_calc_vn_min(%struct.bnx2x*, %struct.cmng_init_input*) #1

declare dso_local i32 @BP_MAX_VN_NUM(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_calc_vn_max(%struct.bnx2x*, i32, %struct.cmng_init_input*) #1

declare dso_local i32 @bnx2x_init_cmng(%struct.cmng_init_input*, i32*) #1

declare dso_local i32 @DP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
