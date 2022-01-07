; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_rf_ctl_override_rev7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_rf_ctl_override_rev7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy }
%struct.b43_phy = type { i32 }
%struct.nphy_rf_control_override_rev7 = type { i32, i32, i32, i32 }

@__const.b43_nphy_rf_ctl_override_rev7.en_addrs = private unnamed_addr constant [3 x [2 x i32]] [[2 x i32] [i32 231, i32 236], [2 x i32] [i32 834, i32 835], [2 x i32] [i32 838, i32 839]], align 16
@.str = private unnamed_addr constant [27 x i8] c"Invalid override value %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32, i32, i32, i32)* @b43_nphy_rf_ctl_override_rev7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.b43_wldev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.b43_phy*, align 8
  %14 = alloca %struct.nphy_rf_control_override_rev7*, align 8
  %15 = alloca [3 x [2 x i32]], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %21 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %20, i32 0, i32 1
  store %struct.b43_phy* %21, %struct.b43_phy** %13, align 8
  %22 = bitcast [3 x [2 x i32]]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([3 x [2 x i32]]* @__const.b43_nphy_rf_ctl_override_rev7.en_addrs to i8*), i64 24, i1 false)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %17, align 4
  %24 = load %struct.b43_phy*, %struct.b43_phy** %13, align 8
  %25 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 19
  br i1 %27, label %33, label %28

28:                                               ; preds = %6
  %29 = load %struct.b43_phy*, %struct.b43_phy** %13, align 8
  %30 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %6
  %34 = call i32 @B43_WARN_ON(i32 1)
  br label %133

35:                                               ; preds = %28
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call %struct.nphy_rf_control_override_rev7* @b43_nphy_get_rf_ctl_over_rev7(%struct.b43_wldev* %36, i32 %37, i32 %38)
  store %struct.nphy_rf_control_override_rev7* %39, %struct.nphy_rf_control_override_rev7** %14, align 8
  store i32 0, i32* %19, align 4
  br label %40

40:                                               ; preds = %130, %35
  %41 = load i32, i32* %19, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %133

43:                                               ; preds = %40
  %44 = load i32, i32* %12, align 4
  %45 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %15, i64 0, i64 0
  %46 = bitcast [2 x i32]* %45 to i32**
  %47 = call i32 @ARRAY_SIZE(i32** %46)
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %51 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @b43err(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %133

55:                                               ; preds = %43
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %15, i64 0, i64 %57
  %59 = load i32, i32* %19, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %58, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %16, align 4
  %63 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** %14, align 8
  %64 = icmp ne %struct.nphy_rf_control_override_rev7* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %55
  %66 = load i32, i32* %19, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** %14, align 8
  %70 = getelementptr inbounds %struct.nphy_rf_control_override_rev7, %struct.nphy_rf_control_override_rev7* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  br label %76

72:                                               ; preds = %65
  %73 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** %14, align 8
  %74 = getelementptr inbounds %struct.nphy_rf_control_override_rev7, %struct.nphy_rf_control_override_rev7* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i32 [ %71, %68 ], [ %75, %72 ]
  store i32 %77, i32* %18, align 4
  br label %78

78:                                               ; preds = %76, %55
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %78
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %17, align 4
  %85 = xor i32 %84, -1
  %86 = call i32 @b43_phy_mask(%struct.b43_wldev* %82, i32 %83, i32 %85)
  %87 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** %14, align 8
  %88 = icmp ne %struct.nphy_rf_control_override_rev7* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %81
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %91 = load i32, i32* %18, align 4
  %92 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** %14, align 8
  %93 = getelementptr inbounds %struct.nphy_rf_control_override_rev7, %struct.nphy_rf_control_override_rev7* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = xor i32 %94, -1
  %96 = call i32 @b43_phy_mask(%struct.b43_wldev* %90, i32 %91, i32 %95)
  br label %97

97:                                               ; preds = %89, %81
  br label %129

98:                                               ; preds = %78
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %19, align 4
  %104 = shl i32 1, %103
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %128

107:                                              ; preds = %101, %98
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %17, align 4
  %111 = call i32 @b43_phy_set(%struct.b43_wldev* %108, i32 %109, i32 %110)
  %112 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** %14, align 8
  %113 = icmp ne %struct.nphy_rf_control_override_rev7* %112, null
  br i1 %113, label %114, label %127

114:                                              ; preds = %107
  %115 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %116 = load i32, i32* %18, align 4
  %117 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** %14, align 8
  %118 = getelementptr inbounds %struct.nphy_rf_control_override_rev7, %struct.nphy_rf_control_override_rev7* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** %14, align 8
  %123 = getelementptr inbounds %struct.nphy_rf_control_override_rev7, %struct.nphy_rf_control_override_rev7* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %121, %124
  %126 = call i32 @b43_phy_maskset(%struct.b43_wldev* %115, i32 %116, i32 %120, i32 %125)
  br label %127

127:                                              ; preds = %114, %107
  br label %128

128:                                              ; preds = %127, %101
  br label %129

129:                                              ; preds = %128, %97
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %19, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %19, align 4
  br label %40

133:                                              ; preds = %33, %49, %40
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @B43_WARN_ON(i32) #2

declare dso_local %struct.nphy_rf_control_override_rev7* @b43_nphy_get_rf_ctl_over_rev7(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32**) #2

declare dso_local i32 @b43err(i32, i8*, i32) #2

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
