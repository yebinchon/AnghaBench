; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_ethtool.c_dpaa_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_ethtool.c_dpaa_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@DPAA_STATS_GLOBAL_LEN = common dso_local global i32 0, align 4
@DPAA_STATS_PERCPU_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s [CPU %d]\00", align 1
@dpaa_stats_percpu = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"%s [TOTAL]\00", align 1
@DPAA_BPS_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"bpool %c [CPU %d]\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"bpool %c [TOTAL]\00", align 1
@dpaa_stats_global = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @dpaa_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpaa_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %14 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = trunc i64 %15 to i32
  %19 = call i32 @memset(i8* %17, i32 0, i32 %18)
  %20 = load i32*, i32** %6, align 8
  store i32* %20, i32** %13, align 8
  %21 = call i32 (...) @num_online_cpus()
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @DPAA_STATS_GLOBAL_LEN, align 4
  %23 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %68, %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @DPAA_STATS_PERCPU_LEN, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %50, %29
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %36 = load i8**, i8*** @dpaa_stats_percpu, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %41)
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %45 = call i32 @memcpy(i32* %43, i8* %17, i32 %44)
  %46 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %47 = load i32*, i32** %13, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %13, align 8
  br label %50

50:                                               ; preds = %34
  %51 = load i32, i32* %8, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %30

53:                                               ; preds = %30
  %54 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %55 = load i8**, i8*** @dpaa_stats_percpu, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %63 = call i32 @memcpy(i32* %61, i8* %17, i32 %62)
  %64 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %65 = load i32*, i32** %13, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %13, align 8
  br label %68

68:                                               ; preds = %53
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %25

71:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %109, %71
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @DPAA_BPS_NUM, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %112

76:                                               ; preds = %72
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %94, %76
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %83 = load i32, i32* %7, align 4
  %84 = add i32 97, %83
  %85 = load i32, i32* %8, align 4
  %86 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %89 = call i32 @memcpy(i32* %87, i8* %17, i32 %88)
  %90 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %91 = load i32*, i32** %13, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %13, align 8
  br label %94

94:                                               ; preds = %81
  %95 = load i32, i32* %8, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %77

97:                                               ; preds = %77
  %98 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %99 = load i32, i32* %7, align 4
  %100 = add i32 97, %99
  %101 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = load i32*, i32** %13, align 8
  %103 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %104 = call i32 @memcpy(i32* %102, i8* %17, i32 %103)
  %105 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %106 = load i32*, i32** %13, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %13, align 8
  br label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %7, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %72

112:                                              ; preds = %72
  %113 = load i32*, i32** %13, align 8
  %114 = load i8*, i8** @dpaa_stats_global, align 8
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @memcpy(i32* %113, i8* %114, i32 %115)
  %117 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %117)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @num_online_cpus(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
