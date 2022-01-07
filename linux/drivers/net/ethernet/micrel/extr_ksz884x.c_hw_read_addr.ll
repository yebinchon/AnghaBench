; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_read_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_read_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i64, i32*, i32*, i32, i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@KS884X_ADDR_0_OFFSET = common dso_local global i64 0, align 8
@DEFAULT_MAC_ADDRESS = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*)* @hw_read_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_read_addr(%struct.ksz_hw* %0) #0 {
  %2 = alloca %struct.ksz_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %24, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @ETH_ALEN, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %27

8:                                                ; preds = %4
  %9 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @KS884X_ADDR_0_OFFSET, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = call i32 @readb(i64 %16)
  %18 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %19 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @MAC_ADDR_ORDER(i32 %21)
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %17, i32* %23, align 4
  br label %24

24:                                               ; preds = %8
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %4

27:                                               ; preds = %4
  %28 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %29 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %73, label %32

32:                                               ; preds = %27
  %33 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %34 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %37 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @ETH_ALEN, align 4
  %40 = call i32 @memcpy(i32* %35, i32* %38, i32 %39)
  %41 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %42 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @empty_addr(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %32
  %47 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %48 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** @DEFAULT_MAC_ADDRESS, align 8
  %51 = load i32, i32* @ETH_ALEN, align 4
  %52 = call i32 @memcpy(i32* %49, i32* %50, i32 %51)
  %53 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %54 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32*, i32** @DEFAULT_MAC_ADDRESS, align 8
  %57 = load i32, i32* @ETH_ALEN, align 4
  %58 = call i32 @memcpy(i32* %55, i32* %56, i32 %57)
  %59 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %60 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %63 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %61
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 4
  %70 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %71 = call i32 @hw_set_addr(%struct.ksz_hw* %70)
  br label %72

72:                                               ; preds = %46, %32
  br label %73

73:                                               ; preds = %72, %27
  ret void
}

declare dso_local i32 @readb(i64) #1

declare dso_local i64 @MAC_ADDR_ORDER(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @empty_addr(i32*) #1

declare dso_local i32 @hw_set_addr(%struct.ksz_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
