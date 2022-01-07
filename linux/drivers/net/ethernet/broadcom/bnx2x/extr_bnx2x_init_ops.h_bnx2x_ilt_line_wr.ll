; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_init_ops.h_bnx2x_ilt_line_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_init_ops.h_bnx2x_ilt_line_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@PXP2_REG_RQ_ONCHIP_AT = common dso_local global i64 0, align 8
@PXP2_REG_RQ_ONCHIP_AT_B0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32, i32)* @bnx2x_ilt_line_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_ilt_line_wr(%struct.bnx2x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %9 = call i64 @CHIP_IS_E1(%struct.bnx2x* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i64, i64* @PXP2_REG_RQ_ONCHIP_AT, align 8
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 %13, 8
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  store i64 %16, i64* %7, align 8
  br label %23

17:                                               ; preds = %3
  %18 = load i64, i64* @PXP2_REG_RQ_ONCHIP_AT_B0, align 8
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 %19, 8
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %17, %11
  %24 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ILT_ADDR1(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ILT_ADDR2(i32 %28)
  %30 = call i32 @bnx2x_wr_64(%struct.bnx2x* %24, i64 %25, i32 %27, i32 %29)
  ret void
}

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_wr_64(%struct.bnx2x*, i64, i32, i32) #1

declare dso_local i32 @ILT_ADDR1(i32) #1

declare dso_local i32 @ILT_ADDR2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
