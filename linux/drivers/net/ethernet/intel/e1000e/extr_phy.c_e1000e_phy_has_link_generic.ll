; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000e_phy_has_link_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000e_phy_has_link_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_phy_has_link_generic(%struct.e1000_hw* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %9, align 8
  %12 = load i32*, i32** %8, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %59, %4
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %62

17:                                               ; preds = %13
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %19 = load i32, i32* @MII_BMSR, align 4
  %20 = call i64 @e1e_rphy(%struct.e1000_hw* %18, i32 %19, i64* %11)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load i64, i64* %7, align 8
  %25 = icmp sge i64 %24, 1000
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = sdiv i64 %27, 1000
  %29 = call i32 @msleep(i64 %28)
  br label %33

30:                                               ; preds = %23
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @udelay(i64 %31)
  br label %33

33:                                               ; preds = %30, %26
  br label %34

34:                                               ; preds = %33, %17
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %36 = load i32, i32* @MII_BMSR, align 4
  %37 = call i64 @e1e_rphy(%struct.e1000_hw* %35, i32 %36, i64* %11)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %62

41:                                               ; preds = %34
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @BMSR_LSTATUS, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32*, i32** %8, align 8
  store i32 1, i32* %47, align 4
  br label %62

48:                                               ; preds = %41
  %49 = load i64, i64* %7, align 8
  %50 = icmp sge i64 %49, 1000
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i64, i64* %7, align 8
  %53 = sdiv i64 %52, 1000
  %54 = call i32 @msleep(i64 %53)
  br label %58

55:                                               ; preds = %48
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @udelay(i64 %56)
  br label %58

58:                                               ; preds = %55, %51
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %10, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %10, align 8
  br label %13

62:                                               ; preds = %46, %40, %13
  %63 = load i64, i64* %9, align 8
  ret i64 %63
}

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i64*) #1

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @udelay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
