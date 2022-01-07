; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_mac8390.c_mac8390_memsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_mac8390.c_mac8390_memsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @mac8390_memsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac8390_memsize(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %60, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %63

13:                                               ; preds = %10
  %14 = load i64, i64* %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = mul nsw i32 %15, 4096
  %17 = sext i32 %16 to i64
  %18 = add i64 %14, %17
  %19 = inttoptr i64 %18 to i16*
  store i16* %19, i16** %6, align 8
  %20 = load i16*, i16** %6, align 8
  %21 = call i64 @hwreg_present(i16* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %63

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  %26 = or i32 42400, %25
  %27 = trunc i32 %26 to i16
  %28 = load i16*, i16** %6, align 8
  store volatile i16 %27, i16* %28, align 2
  %29 = load i16*, i16** %6, align 8
  %30 = load volatile i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = load i32, i32* %4, align 4
  %33 = or i32 42400, %32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %63

36:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %56, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load i64, i64* %2, align 8
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 %43, 4096
  %45 = sext i32 %44 to i64
  %46 = add i64 %42, %45
  %47 = inttoptr i64 %46 to i16*
  store i16* %47, i16** %7, align 8
  %48 = load i16*, i16** %7, align 8
  %49 = load volatile i16, i16* %48, align 2
  %50 = zext i16 %49 to i32
  %51 = load i32, i32* %5, align 4
  %52 = or i32 42400, %51
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %59

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %37

59:                                               ; preds = %54, %37
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %10

63:                                               ; preds = %35, %23, %10
  %64 = load i64, i64* %3, align 8
  %65 = call i32 @local_irq_restore(i64 %64)
  %66 = load i32, i32* %4, align 4
  %67 = mul nsw i32 %66, 4096
  ret i32 %67
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @hwreg_present(i16*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
