; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_rearm_latch_signal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_rearm_latch_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@NIG_REG_LATCH_STATUS_0 = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"latch_status = 0x%x\0A\00", align 1
@NIG_REG_STATUS_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@NIG_STATUS_EMAC0_MI_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32, i32)* @bnx2x_rearm_latch_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_rearm_latch_signal(%struct.bnx2x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %9 = load i64, i64* @NIG_REG_LATCH_STATUS_0, align 8
  %10 = load i32, i32* %5, align 4
  %11 = mul nsw i32 %10, 8
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  %14 = call i32 @REG_RD(%struct.bnx2x* %8, i64 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @NETIF_MSG_LINK, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @DP(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %22 = load i64, i64* @NIG_REG_STATUS_INTERRUPT_PORT0, align 8
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 %23, 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = load i32, i32* @NIG_STATUS_EMAC0_MI_INT, align 4
  %28 = call i32 @bnx2x_bits_en(%struct.bnx2x* %21, i64 %26, i32 %27)
  br label %38

29:                                               ; preds = %3
  %30 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %31 = load i64, i64* @NIG_REG_STATUS_INTERRUPT_PORT0, align 8
  %32 = load i32, i32* %5, align 4
  %33 = mul nsw i32 %32, 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %31, %34
  %36 = load i32, i32* @NIG_STATUS_EMAC0_MI_INT, align 4
  %37 = call i32 @bnx2x_bits_dis(%struct.bnx2x* %30, i64 %35, i32 %36)
  br label %38

38:                                               ; preds = %29, %20
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %44 = load i64, i64* @NIG_REG_LATCH_STATUS_0, align 8
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 %45, 8
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 65534
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 1
  %53 = or i32 %50, %52
  %54 = call i32 @REG_WR(%struct.bnx2x* %43, i64 %48, i32 %53)
  br label %55

55:                                               ; preds = %42, %38
  ret void
}

declare dso_local i32 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_bits_en(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @bnx2x_bits_dis(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
