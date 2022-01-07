; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_set_v6_tuple_to_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_set_v6_tuple_to_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%struct.qede_arfs_tuple = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.in6_addr = type { i32 }

@QED_FILTER_CONFIG_MODE_5_TUPLE = common dso_local global i32 0, align 4
@QED_FILTER_CONFIG_MODE_L4_PORT = common dso_local global i32 0, align 4
@QED_FILTER_CONFIG_MODE_IP_SRC = common dso_local global i32 0, align 4
@QED_FILTER_CONFIG_MODE_IP_DEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid N-tuple\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@qede_flow_spec_ipv6_cmp = common dso_local global i32 0, align 4
@qede_flow_build_ipv6_hdr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, %struct.qede_arfs_tuple*, %struct.in6_addr*)* @qede_set_v6_tuple_to_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_set_v6_tuple_to_profile(%struct.qede_dev* %0, %struct.qede_arfs_tuple* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qede_dev*, align 8
  %6 = alloca %struct.qede_arfs_tuple*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %5, align 8
  store %struct.qede_arfs_tuple* %1, %struct.qede_arfs_tuple** %6, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  %8 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %9 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %3
  %13 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %14 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  %18 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %19 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %18, i32 0, i32 3
  %20 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %21 = call i64 @memcmp(i32* %19, %struct.in6_addr* %20, i32 4)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %25 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %24, i32 0, i32 4
  %26 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %27 = call i64 @memcmp(i32* %25, %struct.in6_addr* %26, i32 4)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @QED_FILTER_CONFIG_MODE_5_TUPLE, align 4
  %31 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %32 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  br label %119

33:                                               ; preds = %23, %17, %12, %3
  %34 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %35 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %33
  %39 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %40 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %45 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %44, i32 0, i32 3
  %46 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %47 = call i64 @memcmp(i32* %45, %struct.in6_addr* %46, i32 4)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %43
  %50 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %51 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %50, i32 0, i32 4
  %52 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %53 = call i64 @memcmp(i32* %51, %struct.in6_addr* %52, i32 4)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @QED_FILTER_CONFIG_MODE_L4_PORT, align 4
  %57 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %58 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  br label %118

59:                                               ; preds = %49, %43, %38, %33
  %60 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %61 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %85, label %64

64:                                               ; preds = %59
  %65 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %66 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %64
  %70 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %71 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %70, i32 0, i32 4
  %72 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %73 = call i64 @memcmp(i32* %71, %struct.in6_addr* %72, i32 4)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %69
  %76 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %77 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %76, i32 0, i32 3
  %78 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %79 = call i64 @memcmp(i32* %77, %struct.in6_addr* %78, i32 4)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* @QED_FILTER_CONFIG_MODE_IP_SRC, align 4
  %83 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %84 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  br label %117

85:                                               ; preds = %75, %69, %64, %59
  %86 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %87 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %111, label %90

90:                                               ; preds = %85
  %91 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %92 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %111, label %95

95:                                               ; preds = %90
  %96 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %97 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %96, i32 0, i32 4
  %98 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %99 = call i64 @memcmp(i32* %97, %struct.in6_addr* %98, i32 4)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %103 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %102, i32 0, i32 3
  %104 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %105 = call i64 @memcmp(i32* %103, %struct.in6_addr* %104, i32 4)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* @QED_FILTER_CONFIG_MODE_IP_DEST, align 4
  %109 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %110 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  br label %116

111:                                              ; preds = %101, %95, %90, %85
  %112 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %113 = call i32 @DP_INFO(%struct.qede_dev* %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %114 = load i32, i32* @EOPNOTSUPP, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %126

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116, %81
  br label %118

118:                                              ; preds = %117, %55
  br label %119

119:                                              ; preds = %118, %29
  %120 = load i32, i32* @qede_flow_spec_ipv6_cmp, align 4
  %121 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %122 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @qede_flow_build_ipv6_hdr, align 4
  %124 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %6, align 8
  %125 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %119, %111
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i64 @memcmp(i32*, %struct.in6_addr*, i32) #1

declare dso_local i32 @DP_INFO(%struct.qede_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
