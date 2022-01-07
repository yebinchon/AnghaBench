; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_map_nw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_map_nw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.bnx2x_dcbx_cos_params* }
%struct.bnx2x_dcbx_cos_params = type { i32 }
%struct.TYPE_4__ = type { i32* }

@MAX_PFC_PRIORITIES = common dso_local global i32 0, align 4
@LLFC_TRAFFIC_TYPE_NW = common dso_local global i64 0, align 8
@LLFC_DRIVER_TRAFFIC_TYPE_MAX = common dso_local global i32 0, align 4
@BNX2X_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cos %d extended with 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_dcbx_map_nw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_dcbx_map_nw(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x_dcbx_cos_params*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %8 = load i32, i32* @MAX_PFC_PRIORITIES, align 4
  %9 = shl i32 1, %8
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %4, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %12 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* @LLFC_TRAFFIC_TYPE_NW, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %22 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.bnx2x_dcbx_cos_params*, %struct.bnx2x_dcbx_cos_params** %24, align 8
  store %struct.bnx2x_dcbx_cos_params* %25, %struct.bnx2x_dcbx_cos_params** %7, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %40, %1
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @LLFC_DRIVER_TRAFFIC_TYPE_MAX, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 1, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %26

43:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %77, %43
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %47 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.bnx2x_dcbx_cos_params*, %struct.bnx2x_dcbx_cos_params** %49, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.bnx2x_dcbx_cos_params* %50)
  %52 = icmp slt i32 %45, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %44
  %54 = load %struct.bnx2x_dcbx_cos_params*, %struct.bnx2x_dcbx_cos_params** %7, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.bnx2x_dcbx_cos_params, %struct.bnx2x_dcbx_cos_params* %54, i64 %56
  %58 = getelementptr inbounds %struct.bnx2x_dcbx_cos_params, %struct.bnx2x_dcbx_cos_params* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %53
  %64 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @DP(i32 %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.bnx2x_dcbx_cos_params*, %struct.bnx2x_dcbx_cos_params** %7, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.bnx2x_dcbx_cos_params, %struct.bnx2x_dcbx_cos_params* %69, i64 %71
  %73 = getelementptr inbounds %struct.bnx2x_dcbx_cos_params, %struct.bnx2x_dcbx_cos_params* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %68
  store i32 %75, i32* %73, align 4
  br label %80

76:                                               ; preds = %53
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %44

80:                                               ; preds = %63, %44
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.bnx2x_dcbx_cos_params*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
