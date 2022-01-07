; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_mcam_find_zero_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_mcam_find_zero_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64, i64, i64, i64*)* @npc_mcam_find_zero_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @npc_mcam_find_zero_area(i64* %0, i64 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 0, i64* %12, align 8
  %16 = load i64*, i64** %11, align 8
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %61, %5
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i64 @find_next_zero_bit(i64* %18, i64 %19, i64 %20)
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i64, i64* %12, align 8
  store i64 %26, i64* %6, align 8
  br label %66

27:                                               ; preds = %17
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* %10, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i64, i64* %8, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i64, i64* %8, align 8
  br label %39

35:                                               ; preds = %27
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %10, align 8
  %38 = add nsw i64 %36, %37
  br label %39

39:                                               ; preds = %35, %33
  %40 = phi i64 [ %34, %33 ], [ %38, %35 ]
  store i64 %40, i64* %15, align 8
  %41 = load i64*, i64** %7, align 8
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i64 @find_next_bit(i64* %41, i64 %42, i64 %43)
  store i64 %44, i64* %14, align 8
  %45 = load i64*, i64** %11, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %13, align 8
  %49 = sub nsw i64 %47, %48
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %13, align 8
  %54 = sub nsw i64 %52, %53
  %55 = load i64*, i64** %11, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i64, i64* %13, align 8
  store i64 %56, i64* %12, align 8
  br label %57

57:                                               ; preds = %51, %39
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %15, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i64, i64* %14, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %9, align 8
  br label %17

64:                                               ; preds = %57
  %65 = load i64, i64* %12, align 8
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %64, %25
  %67 = load i64, i64* %6, align 8
  ret i64 %67
}

declare dso_local i64 @find_next_zero_bit(i64*, i64, i64) #1

declare dso_local i64 @find_next_bit(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
