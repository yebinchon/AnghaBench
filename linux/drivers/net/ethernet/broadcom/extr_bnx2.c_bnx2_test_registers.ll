; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_test_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_test_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i32, i32 }
%struct.bnx2 = type { i32 }

@bnx2_test_registers.reg_tbl = internal constant [93 x %struct.anon] [%struct.anon { i32 108, i32 0, i32 0, i32 63 }, %struct.anon { i32 144, i32 0, i32 -1, i32 0 }, %struct.anon { i32 148, i32 0, i32 0, i32 0 }, %struct.anon { i32 1028, i32 1, i32 16128, i32 0 }, %struct.anon { i32 1048, i32 1, i32 0, i32 -1 }, %struct.anon { i32 1052, i32 1, i32 0, i32 -1 }, %struct.anon { i32 1056, i32 1, i32 0, i32 -2130706433 }, %struct.anon { i32 1060, i32 1, i32 0, i32 0 }, %struct.anon { i32 1064, i32 1, i32 0, i32 1 }, %struct.anon { i32 1104, i32 1, i32 0, i32 65535 }, %struct.anon { i32 1108, i32 1, i32 0, i32 -1 }, %struct.anon { i32 1112, i32 1, i32 0, i32 -1 }, %struct.anon { i32 2056, i32 1, i32 0, i32 -1 }, %struct.anon { i32 2132, i32 1, i32 0, i32 -1 }, %struct.anon { i32 2152, i32 1, i32 0, i32 2004318071 }, %struct.anon { i32 2156, i32 1, i32 0, i32 2004318071 }, %struct.anon { i32 2160, i32 1, i32 0, i32 2004318071 }, %struct.anon { i32 2164, i32 1, i32 0, i32 2004318071 }, %struct.anon { i32 3072, i32 1, i32 0, i32 1 }, %struct.anon { i32 3076, i32 1, i32 0, i32 67043329 }, %struct.anon { i32 3080, i32 1, i32 252702835, i32 0 }, %struct.anon { i32 4096, i32 0, i32 0, i32 1 }, %struct.anon { i32 4100, i32 1, i32 0, i32 983041 }, %struct.anon { i32 5128, i32 0, i32 29362176, i32 0 }, %struct.anon { i32 5276, i32 0, i32 -2147418113, i32 0 }, %struct.anon { i32 5288, i32 0, i32 0, i32 511 }, %struct.anon { i32 5292, i32 0, i32 268435455, i32 268435456 }, %struct.anon { i32 5296, i32 0, i32 2, i32 1 }, %struct.anon { i32 5304, i32 0, i32 0, i32 0 }, %struct.anon { i32 5312, i32 0, i32 0, i32 9 }, %struct.anon { i32 5316, i32 0, i32 16383, i32 0 }, %struct.anon { i32 5324, i32 0, i32 0, i32 1 }, %struct.anon { i32 5328, i32 0, i32 -1, i32 0 }, %struct.anon { i32 6144, i32 0, i32 0, i32 1 }, %struct.anon { i32 6148, i32 0, i32 0, i32 3 }, %struct.anon { i32 10240, i32 0, i32 0, i32 1 }, %struct.anon { i32 10244, i32 0, i32 0, i32 16129 }, %struct.anon { i32 10248, i32 0, i32 255803139, i32 0 }, %struct.anon { i32 10256, i32 0, i32 -65536, i32 0 }, %struct.anon { i32 10260, i32 0, i32 -65536, i32 0 }, %struct.anon { i32 10264, i32 0, i32 -65536, i32 0 }, %struct.anon { i32 10268, i32 0, i32 -65536, i32 0 }, %struct.anon { i32 10292, i32 0, i32 -1, i32 0 }, %struct.anon { i32 10304, i32 0, i32 0, i32 -1 }, %struct.anon { i32 10308, i32 0, i32 0, i32 -1 }, %struct.anon { i32 10312, i32 0, i32 -1, i32 0 }, %struct.anon { i32 10316, i32 0, i32 -134154240, i32 134154239 }, %struct.anon { i32 11264, i32 0, i32 0, i32 17 }, %struct.anon { i32 11268, i32 0, i32 0, i32 196615 }, %struct.anon { i32 15360, i32 0, i32 0, i32 1 }, %struct.anon { i32 15364, i32 0, i32 0, i32 458752 }, %struct.anon { i32 15368, i32 0, i32 32625, i32 133169152 }, %struct.anon { i32 15372, i32 0, i32 524287996, i32 0 }, %struct.anon { i32 15376, i32 0, i32 -1, i32 0 }, %struct.anon { i32 15380, i32 0, i32 0, i32 -1 }, %struct.anon { i32 15384, i32 0, i32 0, i32 -1 }, %struct.anon { i32 15388, i32 0, i32 -4096, i32 0 }, %struct.anon { i32 15392, i32 0, i32 -256, i32 0 }, %struct.anon { i32 20484, i32 0, i32 0, i32 127 }, %struct.anon { i32 20488, i32 0, i32 251660287, i32 0 }, %struct.anon { i32 23552, i32 0, i32 0, i32 1 }, %struct.anon { i32 23556, i32 0, i32 0, i32 196623 }, %struct.anon { i32 23560, i32 0, i32 3, i32 0 }, %struct.anon { i32 23564, i32 0, i32 65528, i32 0 }, %struct.anon { i32 23568, i32 0, i32 0, i32 -1 }, %struct.anon { i32 23680, i32 0, i32 0, i32 259068913 }, %struct.anon { i32 23684, i32 0, i32 0, i32 62259 }, %struct.anon { i32 23688, i32 0, i32 0, i32 488307 }, %struct.anon { i32 23692, i32 0, i32 0, i32 522039 }, %struct.anon { i32 26632, i32 0, i32 65407, i32 0 }, %struct.anon { i32 26636, i32 0, i32 -1, i32 0 }, %struct.anon { i32 26640, i32 0, i32 -1, i32 0 }, %struct.anon { i32 26644, i32 0, i32 -1, i32 0 }, %struct.anon { i32 26648, i32 0, i32 -1, i32 0 }, %struct.anon { i32 26652, i32 0, i32 -1, i32 0 }, %struct.anon { i32 26656, i32 0, i32 16711935, i32 0 }, %struct.anon { i32 26660, i32 0, i32 16711935, i32 0 }, %struct.anon { i32 26664, i32 0, i32 16711935, i32 0 }, %struct.anon { i32 26668, i32 0, i32 67044351, i32 0 }, %struct.anon { i32 26672, i32 0, i32 67044351, i32 0 }, %struct.anon { i32 26676, i32 0, i32 67044351, i32 0 }, %struct.anon { i32 26680, i32 0, i32 67044351, i32 0 }, %struct.anon { i32 26684, i32 0, i32 65535, i32 0 }, %struct.anon { i32 26688, i32 0, i32 4080, i32 0 }, %struct.anon { i32 26692, i32 0, i32 16776960, i32 0 }, %struct.anon { i32 26700, i32 0, i32 -1, i32 0 }, %struct.anon { i32 26704, i32 0, i32 2139062143, i32 0 }, %struct.anon { i32 26708, i32 0, i32 2139062143, i32 0 }, %struct.anon { i32 26712, i32 0, i32 2139062143, i32 0 }, %struct.anon { i32 26716, i32 0, i32 2139062143, i32 0 }, %struct.anon { i32 26888, i32 0, i32 0, i32 130831 }, %struct.anon { i32 26892, i32 0, i32 0, i32 268304624 }, %struct.anon { i32 65535, i32 0, i32 0, i32 0 }], align 16
@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_test_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_test_registers(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %12 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %13 = call i64 @BNX2_CHIP(%struct.bnx2* %12)
  %14 = load i64, i64* @BNX2_CHIP_5709, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %132, %17
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [93 x %struct.anon], [93 x %struct.anon]* @bnx2_test_registers.reg_tbl, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 16
  %24 = icmp ne i32 %23, 65535
  br i1 %24, label %25, label %135

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [93 x %struct.anon], [93 x %struct.anon]* @bnx2_test_registers.reg_tbl, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i32, i32* %11, align 4
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %132

38:                                               ; preds = %33, %25
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [93 x %struct.anon], [93 x %struct.anon]* @bnx2_test_registers.reg_tbl, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 16
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [93 x %struct.anon], [93 x %struct.anon]* @bnx2_test_registers.reg_tbl, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [93 x %struct.anon], [93 x %struct.anon]* @bnx2_test_registers.reg_tbl, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %8, align 4
  %54 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %55 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %56, %57
  %59 = call i32 @readl(i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %61 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %62, %63
  %65 = call i32 @writel(i32 0, i32 %64)
  %66 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %67 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %68, %69
  %71 = call i32 @readl(i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %38
  br label %122

77:                                               ; preds = %38
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %122

86:                                               ; preds = %77
  %87 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %88 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %89, %90
  %92 = call i32 @writel(i32 -1, i32 %91)
  %93 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %94 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %95, %96
  %98 = call i32 @readl(i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %7, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %86
  br label %122

105:                                              ; preds = %86
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %8, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %122

114:                                              ; preds = %105
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %117 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %118, %119
  %121 = call i32 @writel(i32 %115, i32 %120)
  br label %132

122:                                              ; preds = %113, %104, %85, %76
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %125 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %126, %127
  %129 = call i32 @writel(i32 %123, i32 %128)
  %130 = load i32, i32* @ENODEV, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %135

132:                                              ; preds = %114, %37
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %4, align 4
  br label %18

135:                                              ; preds = %122, %18
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i64 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
