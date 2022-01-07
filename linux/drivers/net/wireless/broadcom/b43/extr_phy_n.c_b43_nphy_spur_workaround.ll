; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_spur_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_spur_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i64, i64, i64 }

@__const.b43_nphy_spur_workaround.tone = private unnamed_addr constant [2 x i32] [i32 57, i32 58], align 4
@__const.b43_nphy_spur_workaround.noise = private unnamed_addr constant [2 x i32] [i32 1023, i32 1023], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_spur_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_spur_workaround(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_n*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i32], align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  store %struct.b43_phy_n* %10, %struct.b43_phy_n** %3, align 8
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast ([2 x i32]* @__const.b43_nphy_spur_workaround.tone to i8*), i64 8, i1 false)
  %16 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast ([2 x i32]* @__const.b43_nphy_spur_workaround.noise to i8*), i64 8, i1 false)
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 3
  %22 = zext i1 %21 to i32
  %23 = call i32 @B43_WARN_ON(i32 %22)
  %24 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %25 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %29, i32 1)
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %33 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 11
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = call i64 @b43_is_40mhz(%struct.b43_wldev* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %45

44:                                               ; preds = %39, %36
  br label %45

45:                                               ; preds = %44, %43
  br label %46

46:                                               ; preds = %45, %31
  %47 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %48 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %108

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 54
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 32, i32* %55, align 4
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 607, i32* %56, align 4
  br label %97

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 38
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, 102
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 118
  br i1 %65, label %66, label %69

66:                                               ; preds = %63, %60, %57
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %68, align 4
  br label %96

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 134
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 32, i32* %73, align 4
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 543, i32* %74, align 4
  br label %95

75:                                               ; preds = %69
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 151
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 16, i32* %79, align 4
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 575, i32* %80, align 4
  br label %94

81:                                               ; preds = %75
  %82 = load i32, i32* %4, align 4
  %83 = icmp eq i32 %82, 153
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 161
  br i1 %86, label %87, label %90

87:                                               ; preds = %84, %81
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 48, i32* %88, align 4
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 575, i32* %89, align 4
  br label %93

90:                                               ; preds = %84
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %91, align 4
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %87
  br label %94

94:                                               ; preds = %93, %78
  br label %95

95:                                               ; preds = %94, %72
  br label %96

96:                                               ; preds = %95, %66
  br label %97

97:                                               ; preds = %96, %54
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  br label %107

106:                                              ; preds = %101, %97
  br label %107

107:                                              ; preds = %106, %105
  br label %108

108:                                              ; preds = %107, %46
  %109 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %110 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %115 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %114, i32 0)
  br label %116

116:                                              ; preds = %113, %108
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @B43_WARN_ON(i32) #2

declare dso_local i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev*, i32) #2

declare dso_local i64 @b43_is_40mhz(%struct.b43_wldev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
