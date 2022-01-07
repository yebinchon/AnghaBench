; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_set_v4_tuple_to_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_set_v4_tuple_to_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%struct.qede_arfs_tuple = type { i32, i32, i32, i32, i64, i64, i64, i64 }

@QED_FILTER_CONFIG_MODE_5_TUPLE = common dso_local global i32 0, align 4
@QED_FILTER_CONFIG_MODE_L4_PORT = common dso_local global i32 0, align 4
@QED_FILTER_CONFIG_MODE_IP_SRC = common dso_local global i32 0, align 4
@QED_FILTER_CONFIG_MODE_IP_DEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid N-tuple\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@qede_flow_spec_ipv4_cmp = common dso_local global i32 0, align 4
@qede_flow_build_ipv4_hdr = common dso_local global i32 0, align 4
@qede_flow_stringify_ipv4_hdr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, %struct.qede_arfs_tuple*)* @qede_set_v4_tuple_to_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_set_v4_tuple_to_profile(%struct.qede_dev* %0, %struct.qede_arfs_tuple* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qede_dev*, align 8
  %5 = alloca %struct.qede_arfs_tuple*, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %4, align 8
  store %struct.qede_arfs_tuple* %1, %struct.qede_arfs_tuple** %5, align 8
  %6 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %7 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %6, i32 0, i32 7
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %12 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %10
  %16 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %17 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %22 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @QED_FILTER_CONFIG_MODE_5_TUPLE, align 4
  %27 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %28 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  br label %109

29:                                               ; preds = %20, %15, %10, %2
  %30 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %31 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %29
  %35 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %36 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %41 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %46 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @QED_FILTER_CONFIG_MODE_L4_PORT, align 4
  %51 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %52 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  br label %108

53:                                               ; preds = %44, %39, %34, %29
  %54 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %55 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %54, i32 0, i32 7
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %77, label %58

58:                                               ; preds = %53
  %59 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %60 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %77, label %63

63:                                               ; preds = %58
  %64 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %65 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %63
  %69 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %70 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @QED_FILTER_CONFIG_MODE_IP_SRC, align 4
  %75 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %76 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  br label %107

77:                                               ; preds = %68, %63, %58, %53
  %78 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %79 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %78, i32 0, i32 7
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %101, label %82

82:                                               ; preds = %77
  %83 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %84 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %82
  %88 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %89 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %94 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* @QED_FILTER_CONFIG_MODE_IP_DEST, align 4
  %99 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %100 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  br label %106

101:                                              ; preds = %92, %87, %82, %77
  %102 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %103 = call i32 @DP_INFO(%struct.qede_dev* %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* @EOPNOTSUPP, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %119

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %73
  br label %108

108:                                              ; preds = %107, %49
  br label %109

109:                                              ; preds = %108, %25
  %110 = load i32, i32* @qede_flow_spec_ipv4_cmp, align 4
  %111 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %112 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @qede_flow_build_ipv4_hdr, align 4
  %114 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %115 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @qede_flow_stringify_ipv4_hdr, align 4
  %117 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %5, align 8
  %118 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %109, %101
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @DP_INFO(%struct.qede_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
