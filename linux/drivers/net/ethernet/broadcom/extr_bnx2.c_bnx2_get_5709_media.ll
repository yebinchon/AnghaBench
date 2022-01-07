; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_get_5709_media.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_get_5709_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i64, i32 }

@BNX2_MISC_DUAL_MEDIA_CTRL = common dso_local global i32 0, align 4
@BNX2_MISC_DUAL_MEDIA_CTRL_BOND_ID = common dso_local global i64 0, align 8
@BNX2_MISC_DUAL_MEDIA_CTRL_BOND_ID_C = common dso_local global i64 0, align 8
@BNX2_MISC_DUAL_MEDIA_CTRL_BOND_ID_S = common dso_local global i64 0, align 8
@BNX2_PHY_FLAG_SERDES = common dso_local global i32 0, align 4
@BNX2_MISC_DUAL_MEDIA_CTRL_STRAP_OVERRIDE = common dso_local global i64 0, align 8
@BNX2_MISC_DUAL_MEDIA_CTRL_PHY_CTRL = common dso_local global i64 0, align 8
@BNX2_MISC_DUAL_MEDIA_CTRL_PHY_CTRL_STRAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_get_5709_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_get_5709_media(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  %6 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %7 = load i32, i32* @BNX2_MISC_DUAL_MEDIA_CTRL, align 4
  %8 = call i64 @BNX2_RD(%struct.bnx2* %6, i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @BNX2_MISC_DUAL_MEDIA_CTRL_BOND_ID, align 8
  %11 = and i64 %9, %10
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @BNX2_MISC_DUAL_MEDIA_CTRL_BOND_ID_C, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %65

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @BNX2_MISC_DUAL_MEDIA_CTRL_BOND_ID_S, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* @BNX2_PHY_FLAG_SERDES, align 4
  %22 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %23 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %65

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @BNX2_MISC_DUAL_MEDIA_CTRL_STRAP_OVERRIDE, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @BNX2_MISC_DUAL_MEDIA_CTRL_PHY_CTRL, align 8
  %35 = and i64 %33, %34
  %36 = ashr i64 %35, 21
  store i64 %36, i64* %5, align 8
  br label %42

37:                                               ; preds = %27
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @BNX2_MISC_DUAL_MEDIA_CTRL_PHY_CTRL_STRAP, align 8
  %40 = and i64 %38, %39
  %41 = ashr i64 %40, 8
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %44 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load i64, i64* %5, align 8
  switch i64 %48, label %55 [
    i64 4, label %49
    i64 5, label %49
    i64 6, label %49
  ]

49:                                               ; preds = %47, %47, %47
  %50 = load i32, i32* @BNX2_PHY_FLAG_SERDES, align 4
  %51 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %52 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %65

55:                                               ; preds = %47
  br label %65

56:                                               ; preds = %42
  %57 = load i64, i64* %5, align 8
  switch i64 %57, label %64 [
    i64 1, label %58
    i64 2, label %58
    i64 4, label %58
  ]

58:                                               ; preds = %56, %56, %56
  %59 = load i32, i32* @BNX2_PHY_FLAG_SERDES, align 4
  %60 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %61 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %65

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %15, %20, %49, %58, %64, %55
  ret void
}

declare dso_local i64 @BNX2_RD(%struct.bnx2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
