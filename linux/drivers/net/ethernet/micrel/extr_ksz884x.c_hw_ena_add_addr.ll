; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_ena_add_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_ena_add_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i64 }

@ADD_ADDR_ENABLE = common dso_local global i32 0, align 4
@ADD_ADDR_INCR = common dso_local global i32 0, align 4
@KS_ADD_ADDR_0_LO = common dso_local global i64 0, align 8
@KS_ADD_ADDR_0_HI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*, i32, i32*)* @hw_ena_add_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_ena_add_addr(%struct.ksz_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ksz_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %23, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load i32, i32* %9, align 4
  %15 = shl i32 %14, 8
  store i32 %15, i32* %9, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %10

26:                                               ; preds = %10
  %27 = load i32, i32* @ADD_ADDR_ENABLE, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 2, i32* %7, align 4
  br label %30

30:                                               ; preds = %43, %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 6
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = shl i32 %34, 8
  store i32 %35, i32* %8, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %30

46:                                               ; preds = %30
  %47 = load i32, i32* @ADD_ADDR_INCR, align 4
  %48 = load i32, i32* %5, align 4
  %49 = mul nsw i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %52 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = load i64, i64* @KS_ADD_ADDR_0_LO, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %50, i64 %58)
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %62 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load i64, i64* @KS_ADD_ADDR_0_HI, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %60, i64 %68)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
