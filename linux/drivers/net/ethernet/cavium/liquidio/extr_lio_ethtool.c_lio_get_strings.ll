; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lio = type { i32, %struct.octeon_device* }
%struct.octeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@oct_stats_strings = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@oct_iq_stats_strings = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"tx-%d-%s\00", align 1
@oct_droq_stats_strings = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"rx-%d-%s\00", align 1
@drv = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Unknown Stringset !!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @lio_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.lio*, align 8
  %8 = alloca %struct.octeon_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.lio* @GET_LIO(%struct.net_device* %14)
  store %struct.lio* %15, %struct.lio** %7, align 8
  %16 = load %struct.lio*, %struct.lio** %7, align 8
  %17 = getelementptr inbounds %struct.lio, %struct.lio* %16, i32 0, i32 1
  %18 = load %struct.octeon_device*, %struct.octeon_device** %17, align 8
  store %struct.octeon_device* %18, %struct.octeon_device** %8, align 8
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %133 [
    i32 128, label %20
    i32 129, label %129
  ]

20:                                               ; preds = %3
  %21 = load i8**, i8*** @oct_stats_strings, align 8
  %22 = call i32 @ARRAY_SIZE(i8** %21)
  store i32 %22, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %39, %20
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = load i8**, i8*** @oct_stats_strings, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i32*, i8*, ...) @sprintf(i32* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %6, align 8
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  br label %23

42:                                               ; preds = %23
  %43 = load i8**, i8*** @oct_iq_stats_strings, align 8
  %44 = call i32 @ARRAY_SIZE(i8** %43)
  store i32 %44, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %82, %42
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %48 = call i32 @MAX_OCTEON_INSTR_QUEUES(%struct.octeon_device* %47)
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %85

50:                                               ; preds = %45
  %51 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %52 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @BIT_ULL(i32 %55)
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  br label %82

60:                                               ; preds = %50
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %78, %60
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %61
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i8**, i8*** @oct_iq_stats_strings, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i32*, i8*, ...) @sprintf(i32* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %67, i8* %72)
  %74 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %6, align 8
  br label %78

78:                                               ; preds = %65
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %61

81:                                               ; preds = %61
  br label %82

82:                                               ; preds = %81, %59
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %45

85:                                               ; preds = %45
  %86 = load i8**, i8*** @oct_droq_stats_strings, align 8
  %87 = call i32 @ARRAY_SIZE(i8** %86)
  store i32 %87, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %125, %85
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %91 = call i32 @MAX_OCTEON_OUTPUT_QUEUES(%struct.octeon_device* %90)
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %128

93:                                               ; preds = %88
  %94 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %95 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @BIT_ULL(i32 %98)
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %93
  br label %125

103:                                              ; preds = %93
  store i32 0, i32* %12, align 4
  br label %104

104:                                              ; preds = %121, %103
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %104
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load i8**, i8*** @oct_droq_stats_strings, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 (i32*, i8*, ...) @sprintf(i32* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %110, i8* %115)
  %117 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32* %120, i32** %6, align 8
  br label %121

121:                                              ; preds = %108
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %104

124:                                              ; preds = %104
  br label %125

125:                                              ; preds = %124, %102
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %88

128:                                              ; preds = %88
  br label %140

129:                                              ; preds = %3
  %130 = load %struct.lio*, %struct.lio** %7, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @lio_get_priv_flags_strings(%struct.lio* %130, i32* %131)
  br label %140

133:                                              ; preds = %3
  %134 = load %struct.lio*, %struct.lio** %7, align 8
  %135 = load i32, i32* @drv, align 4
  %136 = load %struct.lio*, %struct.lio** %7, align 8
  %137 = getelementptr inbounds %struct.lio, %struct.lio* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @netif_info(%struct.lio* %134, i32 %135, i32 %138, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %140

140:                                              ; preds = %133, %129, %128
  ret void
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @sprintf(i32*, i8*, ...) #1

declare dso_local i32 @MAX_OCTEON_INSTR_QUEUES(%struct.octeon_device*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @MAX_OCTEON_OUTPUT_QUEUES(%struct.octeon_device*) #1

declare dso_local i32 @lio_get_priv_flags_strings(%struct.lio*, i32*) #1

declare dso_local i32 @netif_info(%struct.lio*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
