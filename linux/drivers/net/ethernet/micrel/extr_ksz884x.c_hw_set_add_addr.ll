; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_set_add_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_set_add_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i32*, i64 }

@ADDITIONAL_ENTRIES = common dso_local global i32 0, align 4
@ADD_ADDR_INCR = common dso_local global i32 0, align 4
@KS_ADD_ADDR_0_HI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*)* @hw_set_add_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_set_add_addr(%struct.ksz_hw* %0) #0 {
  %2 = alloca %struct.ksz_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %42, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @ADDITIONAL_ENTRIES, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %45

8:                                                ; preds = %4
  %9 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @empty_addr(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %8
  %19 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %20 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @ADD_ADDR_INCR, align 4
  %23 = load i32, i32* %3, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %21, %25
  %27 = load i64, i64* @KS_ADD_ADDR_0_HI, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 0, i64 %28)
  br label %41

30:                                               ; preds = %8
  %31 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %34 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @hw_ena_add_addr(%struct.ksz_hw* %31, i32 %32, i32 %39)
  br label %41

41:                                               ; preds = %30, %18
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %4

45:                                               ; preds = %4
  ret void
}

declare dso_local i64 @empty_addr(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @hw_ena_add_addr(%struct.ksz_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
