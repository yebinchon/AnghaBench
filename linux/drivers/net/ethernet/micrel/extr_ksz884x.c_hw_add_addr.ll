; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_add_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_add_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i32, i32*, i32 }

@ADDITIONAL_ENTRIES = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz_hw*, i32*)* @hw_add_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_add_addr(%struct.ksz_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ksz_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @ADDITIONAL_ENTRIES, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @ether_addr_equal(i32 %11, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %52, %16
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %20 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %17
  %24 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %25 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @ether_addr_equal(i32 %30, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %81

35:                                               ; preds = %23
  %36 = load i32, i32* @ADDITIONAL_ENTRIES, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %41 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @empty_addr(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %39, %35
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %17

55:                                               ; preds = %17
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @ADDITIONAL_ENTRIES, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %61 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* @ETH_ALEN, align 4
  %69 = call i32 @memcpy(i32 %66, i32* %67, i32 %68)
  %70 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %73 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @hw_ena_add_addr(%struct.ksz_hw* %70, i32 %71, i32 %78)
  store i32 0, i32* %3, align 4
  br label %81

80:                                               ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %59, %34, %15
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @ether_addr_equal(i32, i32*) #1

declare dso_local i64 @empty_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @hw_ena_add_addr(%struct.ksz_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
