; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_set_rx_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_set_rx_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@NIG_REG_LLH0_BRB1_DRV_MASK = common dso_local global i64 0, align 8
@NIG_REG_LLH0_BRB1_DRV_MASK_MF = common dso_local global i64 0, align 8
@NIG_REG_LLH1_BRB1_NOT_MCP = common dso_local global i64 0, align 8
@NIG_REG_LLH0_BRB1_NOT_MCP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_set_rx_filter(%struct.link_params* %0, i32 %1) #0 {
  %3 = alloca %struct.link_params*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.link_params*, %struct.link_params** %3, align 8
  %8 = getelementptr inbounds %struct.link_params, %struct.link_params* %7, i32 0, i32 1
  %9 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  store %struct.bnx2x* %9, %struct.bnx2x** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %10, 31
  store i32 %11, i32* %6, align 4
  %12 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %13 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = mul nsw i32 %16, 32
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %22 = load i64, i64* @NIG_REG_LLH0_BRB1_DRV_MASK, align 8
  %23 = load %struct.link_params*, %struct.link_params** %3, align 8
  %24 = getelementptr inbounds %struct.link_params, %struct.link_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %25, 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %22, %27
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @REG_WR(%struct.bnx2x* %21, i64 %28, i32 %29)
  %31 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %32 = call i32 @CHIP_IS_E1(%struct.bnx2x* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %20
  %35 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %36 = load i64, i64* @NIG_REG_LLH0_BRB1_DRV_MASK_MF, align 8
  %37 = load %struct.link_params*, %struct.link_params** %3, align 8
  %38 = getelementptr inbounds %struct.link_params, %struct.link_params* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %39, 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %36, %41
  %43 = load i32, i32* %4, align 4
  %44 = mul nsw i32 %43, 3
  %45 = call i32 @REG_WR(%struct.bnx2x* %35, i64 %42, i32 %44)
  br label %46

46:                                               ; preds = %34, %20
  %47 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %48 = load %struct.link_params*, %struct.link_params** %3, align 8
  %49 = getelementptr inbounds %struct.link_params, %struct.link_params* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i64, i64* @NIG_REG_LLH1_BRB1_NOT_MCP, align 8
  br label %56

54:                                               ; preds = %46
  %55 = load i64, i64* @NIG_REG_LLH0_BRB1_NOT_MCP, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i64 [ %53, %52 ], [ %55, %54 ]
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @REG_WR(%struct.bnx2x* %47, i64 %57, i32 %58)
  ret void
}

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @CHIP_IS_E1(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
