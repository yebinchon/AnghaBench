; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_pfc_nig_rx_priority_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_pfc_nig_rx_priority_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@NIG_REG_P1_RX_COS0_PRIORITY_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_RX_COS0_PRIORITY_MASK = common dso_local global i32 0, align 4
@NIG_REG_P1_RX_COS1_PRIORITY_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_RX_COS1_PRIORITY_MASK = common dso_local global i32 0, align 4
@NIG_REG_P1_RX_COS2_PRIORITY_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_RX_COS2_PRIORITY_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NIG_REG_P0_RX_COS3_PRIORITY_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_RX_COS4_PRIORITY_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_RX_COS5_PRIORITY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32, i32, i32)* @bnx2x_pfc_nig_rx_priority_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_pfc_nig_rx_priority_mask(%struct.bnx2x* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %63 [
    i32 0, label %12
    i32 1, label %21
    i32 2, label %30
    i32 3, label %39
    i32 4, label %47
    i32 5, label %55
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @NIG_REG_P1_RX_COS0_PRIORITY_MASK, align 4
  br label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @NIG_REG_P0_RX_COS0_PRIORITY_MASK, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %10, align 4
  br label %63

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @NIG_REG_P1_RX_COS1_PRIORITY_MASK, align 4
  br label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @NIG_REG_P0_RX_COS1_PRIORITY_MASK, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %10, align 4
  br label %63

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @NIG_REG_P1_RX_COS2_PRIORITY_MASK, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @NIG_REG_P0_RX_COS2_PRIORITY_MASK, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %10, align 4
  br label %63

39:                                               ; preds = %4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %68

45:                                               ; preds = %39
  %46 = load i32, i32* @NIG_REG_P0_RX_COS3_PRIORITY_MASK, align 4
  store i32 %46, i32* %10, align 4
  br label %63

47:                                               ; preds = %4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %68

53:                                               ; preds = %47
  %54 = load i32, i32* @NIG_REG_P0_RX_COS4_PRIORITY_MASK, align 4
  store i32 %54, i32* %10, align 4
  br label %63

55:                                               ; preds = %4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %68

61:                                               ; preds = %55
  %62 = load i32, i32* @NIG_REG_P0_RX_COS5_PRIORITY_MASK, align 4
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %4, %61, %53, %45, %37, %28, %19
  %64 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @REG_WR(%struct.bnx2x* %64, i32 %65, i32 %66)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %63, %58, %50, %42
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
