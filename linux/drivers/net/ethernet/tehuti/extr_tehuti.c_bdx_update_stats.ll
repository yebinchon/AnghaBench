; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdx_priv = type { %struct.bdx_stats }
%struct.bdx_stats = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bdx_priv*)* @bdx_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdx_update_stats(%struct.bdx_priv* %0) #0 {
  %2 = alloca %struct.bdx_priv*, align 8
  %3 = alloca %struct.bdx_stats*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bdx_priv* %0, %struct.bdx_priv** %2, align 8
  %7 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %8 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %7, i32 0, i32 0
  store %struct.bdx_stats* %8, %struct.bdx_stats** %3, align 8
  %9 = load %struct.bdx_stats*, %struct.bdx_stats** %3, align 8
  %10 = bitcast %struct.bdx_stats* %9 to i32*
  store i32* %10, i32** %4, align 8
  store i32 29184, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %24, %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 12
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @bdx_read_l2stat(%struct.bdx_priv* %15, i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 16
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %11

27:                                               ; preds = %11
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 29376
  %30 = zext i1 %29 to i32
  %31 = call i32 @BDX_ASSERT(i32 %30)
  store i32 29424, i32* %6, align 4
  br label %32

32:                                               ; preds = %45, %27
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 16
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @bdx_read_l2stat(%struct.bdx_priv* %36, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 16
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %32

48:                                               ; preds = %32
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 29488
  %51 = zext i1 %50 to i32
  %52 = call i32 @BDX_ASSERT(i32 %51)
  store i32 29552, i32* %6, align 4
  br label %53

53:                                               ; preds = %66, %48
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 19
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @bdx_read_l2stat(%struct.bdx_priv* %57, i32 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 16
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %53

69:                                               ; preds = %53
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 29600
  %72 = zext i1 %71 to i32
  %73 = call i32 @BDX_ASSERT(i32 %72)
  store i32 29632, i32* %6, align 4
  br label %74

74:                                               ; preds = %87, %69
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 23
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @bdx_read_l2stat(%struct.bdx_priv* %78, i32 %79)
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %80, i32* %84, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 16
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %74

90:                                               ; preds = %74
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 29696
  %93 = zext i1 %92 to i32
  %94 = call i32 @BDX_ASSERT(i32 %93)
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ne i64 1, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @BDX_ASSERT(i32 %98)
  ret void
}

declare dso_local i32 @bdx_read_l2stat(%struct.bdx_priv*, i32) #1

declare dso_local i32 @BDX_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
