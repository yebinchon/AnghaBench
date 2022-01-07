; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_create_power_curve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_create_power_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.ath5k_create_power_curve.idx = private unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4
@AR5K_PWRTABLE_LINEAR_PCDAC = common dso_local global i32 0, align 4
@AR5K_EEPROM_POWER_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*, i32, i32*, i32)* @ath5k_create_power_curve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_create_power_curve(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = bitcast [2 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast ([2 x i32]* @__const.ath5k_create_power_curve.idx to i8*), i64 8, i1 false)
  %19 = load i32, i32* %8, align 4
  %20 = mul nsw i32 2, %19
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  br label %102

24:                                               ; preds = %7
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* @AR5K_PWRTABLE_LINEAR_PCDAC, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %16, align 4
  store i32 0, i32* %8, align 4
  store i32 63, i32* %9, align 4
  br label %30

30:                                               ; preds = %28, %24
  store i32 0, i32* %17, align 4
  br label %31

31:                                               ; preds = %99, %30
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %33, %34
  %36 = icmp sle i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* @AR5K_EEPROM_POWER_TABLE_SIZE, align 4
  %40 = icmp slt i32 %38, %39
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi i1 [ false, %31 ], [ %40, %37 ]
  br i1 %42, label %43, label %102

43:                                               ; preds = %41
  %44 = load i32, i32* %16, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %44, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %43
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %12, align 4
  %56 = sub nsw i32 %55, 1
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %58, %52, %43
  %66 = load i32, i32* %16, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @ath5k_get_interpolated_value(i32 %66, i32 %72, i32 %78, i32 %84, i32 %90)
  %92 = trunc i64 %91 to i32
  %93 = load i32*, i32** %13, align 8
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 2
  store i32 %98, i32* %16, align 4
  br label %99

99:                                               ; preds = %65
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %17, align 4
  br label %31

102:                                              ; preds = %23, %41
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ath5k_get_interpolated_value(i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
