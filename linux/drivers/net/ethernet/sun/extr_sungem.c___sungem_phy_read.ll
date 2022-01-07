; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c___sungem_phy_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c___sungem_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i64 }

@MIF_FRAME_PHYAD = common dso_local global i32 0, align 4
@MIF_FRAME_REGAD = common dso_local global i32 0, align 4
@MIF_FRAME_TAMSB = common dso_local global i32 0, align 4
@MIF_FRAME = common dso_local global i64 0, align 8
@MIF_FRAME_TALSB = common dso_local global i32 0, align 4
@MIF_FRAME_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gem*, i32, i32)* @__sungem_phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sungem_phy_read(%struct.gem* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gem*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gem* %0, %struct.gem** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 10000, i32* %8, align 4
  store i32 1073741824, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = or i32 %9, 536870912
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 %11, 23
  %13 = load i32, i32* @MIF_FRAME_PHYAD, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 %17, 18
  %19 = load i32, i32* @MIF_FRAME_REGAD, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @MIF_FRAME_TAMSB, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.gem*, %struct.gem** %4, align 8
  %28 = getelementptr inbounds %struct.gem, %struct.gem* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MIF_FRAME, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  br label %33

33:                                               ; preds = %49, %3
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load %struct.gem*, %struct.gem** %4, align 8
  %39 = getelementptr inbounds %struct.gem, %struct.gem* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MIF_FRAME, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @MIF_FRAME_TALSB, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %51

49:                                               ; preds = %37
  %50 = call i32 @udelay(i32 10)
  br label %33

51:                                               ; preds = %48, %33
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i32 65535, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @MIF_FRAME_DATA, align 4
  %58 = and i32 %56, %57
  ret i32 %58
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
