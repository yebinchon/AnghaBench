; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.vsc73xx* }
%struct.vsc73xx = type { i32 }
%struct.vsc73xx_counter = type { i8* }

@ETH_SS_STATS = common dso_local global i64 0, align 8
@VSC73XX_BLOCK_MAC = common dso_local global i32 0, align 4
@VSC73XX_C_CFG = common dso_local global i32 0, align 4
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"RxEtherStatsOctets\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"TxEtherStatsOctets\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, i64, i32*)* @vsc73xx_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsc73xx_get_strings(%struct.dsa_switch* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vsc73xx_counter*, align 8
  %10 = alloca %struct.vsc73xx*, align 8
  %11 = alloca [6 x i64], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %17 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %16, i32 0, i32 0
  %18 = load %struct.vsc73xx*, %struct.vsc73xx** %17, align 8
  store %struct.vsc73xx* %18, %struct.vsc73xx** %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @ETH_SS_STATS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %137

23:                                               ; preds = %4
  %24 = load %struct.vsc73xx*, %struct.vsc73xx** %10, align 8
  %25 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @VSC73XX_C_CFG, align 4
  %28 = call i32 @vsc73xx_read(%struct.vsc73xx* %24, i32 %25, i32 %26, i32 %27, i64* %14)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %137

32:                                               ; preds = %23
  %33 = load i64, i64* %14, align 8
  %34 = and i64 %33, 31
  %35 = getelementptr inbounds [6 x i64], [6 x i64]* %11, i64 0, i64 0
  store i64 %34, i64* %35, align 16
  %36 = load i64, i64* %14, align 8
  %37 = ashr i64 %36, 5
  %38 = and i64 %37, 31
  %39 = getelementptr inbounds [6 x i64], [6 x i64]* %11, i64 0, i64 1
  store i64 %38, i64* %39, align 8
  %40 = load i64, i64* %14, align 8
  %41 = ashr i64 %40, 10
  %42 = and i64 %41, 31
  %43 = getelementptr inbounds [6 x i64], [6 x i64]* %11, i64 0, i64 2
  store i64 %42, i64* %43, align 16
  %44 = load i64, i64* %14, align 8
  %45 = ashr i64 %44, 16
  %46 = and i64 %45, 31
  %47 = getelementptr inbounds [6 x i64], [6 x i64]* %11, i64 0, i64 3
  store i64 %46, i64* %47, align 8
  %48 = load i64, i64* %14, align 8
  %49 = ashr i64 %48, 21
  %50 = and i64 %49, 31
  %51 = getelementptr inbounds [6 x i64], [6 x i64]* %11, i64 0, i64 4
  store i64 %50, i64* %51, align 16
  %52 = load i64, i64* %14, align 8
  %53 = ashr i64 %52, 26
  %54 = and i64 %53, 31
  %55 = getelementptr inbounds [6 x i64], [6 x i64]* %11, i64 0, i64 5
  store i64 %54, i64* %55, align 8
  store i32 0, i32* %13, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %63 = call i32 @strncpy(i32* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %93, %32
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 3
  br i1 %68, label %69, label %96

69:                                               ; preds = %66
  %70 = load %struct.vsc73xx*, %struct.vsc73xx** %10, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [6 x i64], [6 x i64]* %11, i64 0, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call %struct.vsc73xx_counter* @vsc73xx_find_counter(%struct.vsc73xx* %70, i64 %74, i32 0)
  store %struct.vsc73xx_counter* %75, %struct.vsc73xx_counter** %9, align 8
  %76 = load %struct.vsc73xx_counter*, %struct.vsc73xx_counter** %9, align 8
  %77 = icmp ne %struct.vsc73xx_counter* %76, null
  br i1 %77, label %78, label %90

78:                                               ; preds = %69
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = load %struct.vsc73xx_counter*, %struct.vsc73xx_counter** %9, align 8
  %86 = getelementptr inbounds %struct.vsc73xx_counter, %struct.vsc73xx_counter* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %89 = call i32 @strncpy(i32* %84, i8* %87, i32 %88)
  br label %90

90:                                               ; preds = %78, %69
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %66

96:                                               ; preds = %66
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %100 = mul nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  %103 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %104 = call i32 @strncpy(i32* %102, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  store i32 3, i32* %12, align 4
  br label %107

107:                                              ; preds = %134, %96
  %108 = load i32, i32* %12, align 4
  %109 = icmp slt i32 %108, 6
  br i1 %109, label %110, label %137

110:                                              ; preds = %107
  %111 = load %struct.vsc73xx*, %struct.vsc73xx** %10, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [6 x i64], [6 x i64]* %11, i64 0, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = call %struct.vsc73xx_counter* @vsc73xx_find_counter(%struct.vsc73xx* %111, i64 %115, i32 1)
  store %struct.vsc73xx_counter* %116, %struct.vsc73xx_counter** %9, align 8
  %117 = load %struct.vsc73xx_counter*, %struct.vsc73xx_counter** %9, align 8
  %118 = icmp ne %struct.vsc73xx_counter* %117, null
  br i1 %118, label %119, label %131

119:                                              ; preds = %110
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %123 = mul nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  %126 = load %struct.vsc73xx_counter*, %struct.vsc73xx_counter** %9, align 8
  %127 = getelementptr inbounds %struct.vsc73xx_counter, %struct.vsc73xx_counter* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %130 = call i32 @strncpy(i32* %125, i8* %128, i32 %129)
  br label %131

131:                                              ; preds = %119, %110
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  br label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  br label %107

137:                                              ; preds = %22, %31, %107
  ret void
}

declare dso_local i32 @vsc73xx_read(%struct.vsc73xx*, i32, i32, i32, i64*) #1

declare dso_local i32 @strncpy(i32*, i8*, i32) #1

declare dso_local %struct.vsc73xx_counter* @vsc73xx_find_counter(%struct.vsc73xx*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
