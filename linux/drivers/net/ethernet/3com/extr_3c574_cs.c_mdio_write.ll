; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Wn4_PhysicalMgmt = common dso_local global i32 0, align 4
@mii_preamble_required = common dso_local global i64 0, align 8
@MDIO_DATA_WRITE1 = common dso_local global i32 0, align 4
@MDIO_DATA_WRITE0 = common dso_local global i32 0, align 4
@MDIO_SHIFT_CLK = common dso_local global i32 0, align 4
@MDIO_ENB_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdio_write(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 23
  %15 = or i32 1342308352, %14
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 %16, 18
  %18 = or i32 %15, %17
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @Wn4_PhysicalMgmt, align 4
  %23 = add i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i64, i64* @mii_preamble_required, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @mdio_sync(i32 %27, i32 32)
  br label %29

29:                                               ; preds = %26, %4
  store i32 31, i32* %11, align 4
  br label %30

30:                                               ; preds = %53, %29
  %31 = load i32, i32* %11, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %11, align 4
  %36 = shl i32 1, %35
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @MDIO_DATA_WRITE1, align 4
  br label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @MDIO_DATA_WRITE0, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @outw(i32 %45, i32 %46)
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @MDIO_SHIFT_CLK, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @outw(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %11, align 4
  br label %30

56:                                               ; preds = %30
  store i32 1, i32* %11, align 4
  br label %57

57:                                               ; preds = %69, %56
  %58 = load i32, i32* %11, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load i32, i32* @MDIO_ENB_IN, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @outw(i32 %61, i32 %62)
  %64 = load i32, i32* @MDIO_ENB_IN, align 4
  %65 = load i32, i32* @MDIO_SHIFT_CLK, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @outw(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %11, align 4
  br label %57

72:                                               ; preds = %57
  ret void
}

declare dso_local i32 @mdio_sync(i32, i32) #1

declare dso_local i32 @outw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
