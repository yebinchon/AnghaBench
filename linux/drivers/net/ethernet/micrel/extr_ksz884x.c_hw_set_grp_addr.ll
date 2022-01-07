; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_set_grp_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_set_grp_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i32, i64, i32*, i32* }

@HW_MULTICAST_SIZE = common dso_local global i32 0, align 4
@KS884X_MULTICAST_0_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*)* @hw_set_grp_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_set_grp_addr(%struct.ksz_hw* %0) #0 {
  %2 = alloca %struct.ksz_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %2, align 8
  %7 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* @HW_MULTICAST_SIZE, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  %13 = trunc i64 %12 to i32
  %14 = call i32 @memset(i32* %9, i32 0, i32 %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %46, %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %18 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %15
  %22 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %23 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ether_crc(i32 6, i32 %28)
  %30 = ashr i32 %29, 26
  %31 = and i32 %30, 63
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 3
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 7
  %36 = shl i32 1, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %39 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %37
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %21
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %15

49:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %71, %49
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @HW_MULTICAST_SIZE, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  %55 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %56 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %63 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @KS884X_MULTICAST_0_OFFSET, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = call i32 @writeb(i32 %61, i64 %69)
  br label %71

71:                                               ; preds = %54
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %50

74:                                               ; preds = %50
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ether_crc(i32, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
