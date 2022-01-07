; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_fan_failure_det_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_fan_failure_det_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_phy = type { i64 }

@EXT_PHY1 = common dso_local global i64 0, align 8
@MAX_PHYS = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"populate phy failed\0A\00", align 1
@FLAGS_FAN_FAILURE_DET_REQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bnx2x_fan_failure_det_req(%struct.bnx2x* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bnx2x_phy, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %11, align 8
  %13 = load i64, i64* @EXT_PHY1, align 8
  store i64 %13, i64* %10, align 8
  br label %14

14:                                               ; preds = %36, %4
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @MAX_PHYS, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i64, i64* %9, align 8
  %24 = call i64 @bnx2x_populate_phy(%struct.bnx2x* %19, i64 %20, i32 %21, i32 %22, i64 %23, %struct.bnx2x_phy* %12)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @NETIF_MSG_LINK, align 4
  %28 = call i32 @DP(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %41

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %12, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FLAGS_FAN_FAILURE_DET_REQ, align 8
  %33 = and i64 %31, %32
  %34 = load i64, i64* %11, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %29
  %37 = load i64, i64* %10, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %10, align 8
  br label %14

39:                                               ; preds = %14
  %40 = load i64, i64* %11, align 8
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %39, %26
  %42 = load i64, i64* %5, align 8
  ret i64 %42
}

declare dso_local i64 @bnx2x_populate_phy(%struct.bnx2x*, i64, i32, i32, i64, %struct.bnx2x_phy*) #1

declare dso_local i32 @DP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
