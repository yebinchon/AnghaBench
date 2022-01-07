; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_start_tx_tone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_start_tx_tone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b43_phy_lp* }
%struct.b43_phy_lp = type { i32 }
%struct.cordic_iq = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32)* @lpphy_start_tx_tone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_start_tx_tone(%struct.b43_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.b43_phy_lp*, align 8
  %8 = alloca [64 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cordic_iq, align 4
  %14 = alloca %struct.cordic_iq, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %17, align 8
  store %struct.b43_phy_lp* %18, %struct.b43_phy_lp** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 36, %19
  %21 = sdiv i32 %20, 20
  %22 = shl i32 %21, 16
  %23 = sdiv i32 %22, 100
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %7, align 8
  %26 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %30

30:                                               ; preds = %51, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @abs(i32 %32) #4
  %34 = mul nsw i32 %31, %33
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 20000, %35
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 20000, %39
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @abs(i32 %41) #4
  %43 = sdiv i32 %40, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp sgt i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = call i64 @B43_WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %104

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %30

54:                                               ; preds = %30
  br label %56

55:                                               ; preds = %3
  store i32 2, i32* %10, align 4
  br label %56

56:                                               ; preds = %55, %54
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %92, %56
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %95

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @CORDIC_FIXED(i32 %62)
  %64 = call i64 @cordic_calc_iq(i32 %63)
  %65 = bitcast %struct.cordic_iq* %14 to i64*
  store i64 %64, i64* %65, align 4
  %66 = bitcast %struct.cordic_iq* %13 to i8*
  %67 = bitcast %struct.cordic_iq* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 8, i1 false)
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %11, align 4
  %71 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %13, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = mul nsw i32 %72, %73
  %75 = and i32 %74, 255
  %76 = call i32 @CORDIC_FLOAT(i32 %75)
  %77 = shl i32 %76, 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 %79
  store i32 %77, i32* %80, align 4
  %81 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %13, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = mul nsw i32 %82, %83
  %85 = and i32 %84, 255
  %86 = call i32 @CORDIC_FLOAT(i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %86
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %61
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %57

95:                                               ; preds = %57
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %97 = call i32 @B43_LPTAB16(i32 5, i32 0)
  %98 = load i32, i32* %10, align 4
  %99 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %100 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %96, i32 %97, i32 %98, i32* %99)
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @lpphy_run_samples(%struct.b43_wldev* %101, i32 %102, i32 65535, i32 0)
  br label %104

104:                                              ; preds = %95, %49
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i64 @B43_WARN_ON(i32) #2

declare dso_local i64 @cordic_calc_iq(i32) #2

declare dso_local i32 @CORDIC_FIXED(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @CORDIC_FLOAT(i32) #2

declare dso_local i32 @b43_lptab_write_bulk(%struct.b43_wldev*, i32, i32, i32*) #2

declare dso_local i32 @B43_LPTAB16(i32, i32) #2

declare dso_local i32 @lpphy_run_samples(%struct.b43_wldev*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
