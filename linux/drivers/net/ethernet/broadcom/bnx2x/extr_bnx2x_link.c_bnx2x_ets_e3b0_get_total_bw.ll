; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_ets_e3b0_get_total_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_ets_e3b0_get_total_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.bnx2x_ets_params = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@bnx2x_cos_state_bw = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"bnx2x_ets_E3B0_config BWwas set to 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"bnx2x_ets_E3B0_config total BW shouldn't be 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"bnx2x_ets_E3B0_config total BW should be 100\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_params*, %struct.bnx2x_ets_params*, i32*)* @bnx2x_ets_e3b0_get_total_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_ets_e3b0_get_total_bw(%struct.link_params* %0, %struct.bnx2x_ets_params* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.bnx2x_ets_params*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.link_params* %0, %struct.link_params** %5, align 8
  store %struct.bnx2x_ets_params* %1, %struct.bnx2x_ets_params** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.link_params*, %struct.link_params** %5, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 0
  %13 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  store %struct.bnx2x* %13, %struct.bnx2x** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %14 = load i32*, i32** %7, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %9, align 8
  br label %15

15:                                               ; preds = %67, %3
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.bnx2x_ets_params*, %struct.bnx2x_ets_params** %6, align 8
  %18 = getelementptr inbounds %struct.bnx2x_ets_params, %struct.bnx2x_ets_params* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %70

21:                                               ; preds = %15
  %22 = load %struct.bnx2x_ets_params*, %struct.bnx2x_ets_params** %6, align 8
  %23 = getelementptr inbounds %struct.bnx2x_ets_params, %struct.bnx2x_ets_params* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @bnx2x_cos_state_bw, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %21
  store i64 1, i64* %10, align 8
  %32 = load %struct.bnx2x_ets_params*, %struct.bnx2x_ets_params** %6, align 8
  %33 = getelementptr inbounds %struct.bnx2x_ets_params, %struct.bnx2x_ets_params* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %31
  %43 = load i32, i32* @NETIF_MSG_LINK, align 4
  %44 = call i32 @DP(i32 %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.bnx2x_ets_params*, %struct.bnx2x_ets_params** %6, align 8
  %46 = getelementptr inbounds %struct.bnx2x_ets_params, %struct.bnx2x_ets_params* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %42, %31
  %54 = load %struct.bnx2x_ets_params*, %struct.bnx2x_ets_params** %6, align 8
  %55 = getelementptr inbounds %struct.bnx2x_ets_params, %struct.bnx2x_ets_params* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %62
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %53, %21
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %9, align 8
  br label %15

70:                                               ; preds = %15
  %71 = load i64, i64* %10, align 8
  %72 = icmp eq i64 %71, 1
  br i1 %72, label %73, label %89

73:                                               ; preds = %70
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 100
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i32, i32* @NETIF_MSG_LINK, align 4
  %83 = call i32 @DP(i32 %82, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %90

86:                                               ; preds = %77
  %87 = load i32, i32* @NETIF_MSG_LINK, align 4
  %88 = call i32 @DP(i32 %87, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %73, %70
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %81
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @DP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
