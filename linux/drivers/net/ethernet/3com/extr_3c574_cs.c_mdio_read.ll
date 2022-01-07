; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Wn4_PhysicalMgmt = common dso_local global i32 0, align 4
@mii_preamble_required = common dso_local global i64 0, align 8
@MDIO_DATA_WRITE1 = common dso_local global i32 0, align 4
@MDIO_DATA_WRITE0 = common dso_local global i32 0, align 4
@MDIO_SHIFT_CLK = common dso_local global i32 0, align 4
@MDIO_ENB_IN = common dso_local global i32 0, align 4
@MDIO_DATA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_read(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = shl i32 %12, 5
  %14 = or i32 251904, %13
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @Wn4_PhysicalMgmt, align 4
  %19 = add i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i64, i64* @mii_preamble_required, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @mdio_sync(i32 %23, i32 32)
  br label %25

25:                                               ; preds = %22, %3
  store i32 14, i32* %7, align 4
  br label %26

26:                                               ; preds = %49, %25
  %27 = load i32, i32* %7, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 1, %31
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @MDIO_DATA_WRITE1, align 4
  br label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @MDIO_DATA_WRITE0, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @outw(i32 %41, i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @MDIO_SHIFT_CLK, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @outw(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %7, align 4
  br label %26

52:                                               ; preds = %26
  store i32 19, i32* %7, align 4
  br label %53

53:                                               ; preds = %75, %52
  %54 = load i32, i32* %7, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %53
  %57 = load i32, i32* @MDIO_ENB_IN, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @outw(i32 %57, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = shl i32 %60, 1
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @inw(i32 %62)
  %64 = load i32, i32* @MDIO_DATA_READ, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = or i32 %61, %68
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* @MDIO_ENB_IN, align 4
  %71 = load i32, i32* @MDIO_SHIFT_CLK, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @outw(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %56
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %7, align 4
  br label %53

78:                                               ; preds = %53
  %79 = load i32, i32* %9, align 4
  %80 = lshr i32 %79, 1
  %81 = and i32 %80, 65535
  ret i32 %81
}

declare dso_local i32 @mdio_sync(i32, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @inw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
