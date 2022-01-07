; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c___tg3_set_one_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c___tg3_set_one_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@MAC_ADDR_0_HIGH = common dso_local global i64 0, align 8
@MAC_ADDR_0_LOW = common dso_local global i64 0, align 8
@MAC_EXTADDR_0_HIGH = common dso_local global i64 0, align 8
@MAC_EXTADDR_0_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i32*, i32)* @__tg3_set_one_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tg3_set_one_mac_addr(%struct.tg3* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 8
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %12, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 24
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 16
  %25 = or i32 %20, %24
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 8
  %30 = or i32 %25, %29
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 5
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %30, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %52

37:                                               ; preds = %3
  %38 = load i64, i64* @MAC_ADDR_0_HIGH, align 8
  %39 = load i32, i32* %6, align 4
  %40 = mul nsw i32 %39, 8
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @tw32(i64 %42, i32 %43)
  %45 = load i64, i64* @MAC_ADDR_0_LOW, align 8
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 %46, 8
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %45, %48
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @tw32(i64 %49, i32 %50)
  br label %69

52:                                               ; preds = %3
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, 4
  store i32 %54, i32* %6, align 4
  %55 = load i64, i64* @MAC_EXTADDR_0_HIGH, align 8
  %56 = load i32, i32* %6, align 4
  %57 = mul nsw i32 %56, 8
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %55, %58
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @tw32(i64 %59, i32 %60)
  %62 = load i64, i64* @MAC_EXTADDR_0_LOW, align 8
  %63 = load i32, i32* %6, align 4
  %64 = mul nsw i32 %63, 8
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %62, %65
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @tw32(i64 %66, i32 %67)
  br label %69

69:                                               ; preds = %52, %37
  ret void
}

declare dso_local i32 @tw32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
