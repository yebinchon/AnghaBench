; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_gen_load_samples.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_gen_load_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }
%struct.cordic_iq = type { i32, i32 }

@B43_NPHY_BBCFG = common dso_local global i32 0, align 4
@B43_NPHY_BBCFG_RSTRX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"allocation for samples generation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i32, i32, i32)* @b43_nphy_gen_load_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_nphy_gen_load_samples(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.b43_wldev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cordic_iq*, align 8
  %16 = alloca %struct.cordic_iq, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %18 = call i64 @b43_is_40mhz(%struct.b43_wldev* %17)
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 40, i32 20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = shl i32 %22, 3
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %4
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %28 = load i32, i32* @B43_NPHY_BBCFG, align 4
  %29 = call i32 @b43_phy_read(%struct.b43_wldev* %27, i32 %28)
  %30 = load i32, i32* @B43_NPHY_BBCFG_RSTRX, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 82, i32* %11, align 4
  br label %35

34:                                               ; preds = %26
  store i32 80, i32* %11, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %37 = call i64 @b43_is_40mhz(%struct.b43_wldev* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = shl i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* %11, align 4
  %44 = shl i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %42, %4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.cordic_iq* @kcalloc(i32 %46, i32 8, i32 %47)
  store %struct.cordic_iq* %48, %struct.cordic_iq** %15, align 8
  %49 = load %struct.cordic_iq*, %struct.cordic_iq** %15, align 8
  %50 = icmp ne %struct.cordic_iq* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %53 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @b43err(i32 %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %128

56:                                               ; preds = %45
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 %57, 36
  %59 = load i32, i32* %11, align 4
  %60 = sdiv i32 %58, %59
  %61 = shl i32 %60, 16
  %62 = sdiv i32 %61, 100
  store i32 %62, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %111, %56
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %114

67:                                               ; preds = %63
  %68 = load %struct.cordic_iq*, %struct.cordic_iq** %15, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %68, i64 %70
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @CORDIC_FIXED(i32 %72)
  %74 = call i64 @cordic_calc_iq(i32 %73)
  %75 = bitcast %struct.cordic_iq* %16 to i64*
  store i64 %74, i64* %75, align 4
  %76 = bitcast %struct.cordic_iq* %71 to i8*
  %77 = bitcast %struct.cordic_iq* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 8, i1 false)
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %14, align 4
  %81 = load %struct.cordic_iq*, %struct.cordic_iq** %15, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %81, i64 %83
  %85 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = mul nsw i32 %86, %87
  %89 = call i8* @CORDIC_FLOAT(i32 %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.cordic_iq*, %struct.cordic_iq** %15, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %91, i64 %93
  %95 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %94, i32 0, i32 0
  store i32 %90, i32* %95, align 4
  %96 = load %struct.cordic_iq*, %struct.cordic_iq** %15, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %96, i64 %98
  %100 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %8, align 4
  %103 = mul nsw i32 %101, %102
  %104 = call i8* @CORDIC_FLOAT(i32 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.cordic_iq*, %struct.cordic_iq** %15, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %106, i64 %108
  %110 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %109, i32 0, i32 1
  store i32 %105, i32* %110, align 4
  br label %111

111:                                              ; preds = %67
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %63

114:                                              ; preds = %63
  %115 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %116 = load %struct.cordic_iq*, %struct.cordic_iq** %15, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @b43_nphy_load_samples(%struct.b43_wldev* %115, %struct.cordic_iq* %116, i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load %struct.cordic_iq*, %struct.cordic_iq** %15, align 8
  %120 = call i32 @kfree(%struct.cordic_iq* %119)
  %121 = load i32, i32* %10, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %126

124:                                              ; preds = %114
  %125 = load i32, i32* %12, align 4
  br label %126

126:                                              ; preds = %124, %123
  %127 = phi i32 [ 0, %123 ], [ %125, %124 ]
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %126, %51
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i64 @b43_is_40mhz(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local %struct.cordic_iq* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i64 @cordic_calc_iq(i32) #1

declare dso_local i32 @CORDIC_FIXED(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @CORDIC_FLOAT(i32) #1

declare dso_local i32 @b43_nphy_load_samples(%struct.b43_wldev*, %struct.cordic_iq*, i32) #1

declare dso_local i32 @kfree(%struct.cordic_iq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
