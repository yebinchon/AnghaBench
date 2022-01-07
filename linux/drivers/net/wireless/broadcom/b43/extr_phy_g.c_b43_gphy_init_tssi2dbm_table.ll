; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_gphy_init_tssi2dbm_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_gphy_init_tssi2dbm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__*, %struct.b43_phy }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.b43_phy = type { i32, %struct.b43_phy_g* }
%struct.b43_phy_g = type { i32, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@b43_tssi2dbm_g_table = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_gphy_init_tssi2dbm_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_gphy_init_tssi2dbm_table(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca %struct.b43_phy_g*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 1
  store %struct.b43_phy* %10, %struct.b43_phy** %4, align 8
  %11 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %12 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %11, i32 0, i32 1
  %13 = load %struct.b43_phy_g*, %struct.b43_phy_g** %12, align 8
  store %struct.b43_phy_g* %13, %struct.b43_phy_g** %5, align 8
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %15 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %23 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %31 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %39 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 17153
  br i1 %43, label %44, label %49

44:                                               ; preds = %1
  %45 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %46 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 8272
  br label %49

49:                                               ; preds = %44, %1
  %50 = phi i1 [ false, %1 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @B43_WARN_ON(i32 %51)
  %53 = load %struct.b43_phy_g*, %struct.b43_phy_g** %5, align 8
  %54 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %122

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %122

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %122

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %122

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %122

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, -1
  br i1 %71, label %72, label %122

72:                                               ; preds = %69
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %74 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %72
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %83 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, -1
  br i1 %89, label %90, label %101

90:                                               ; preds = %81
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %92 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.b43_phy_g*, %struct.b43_phy_g** %5, align 8
  %100 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %104

101:                                              ; preds = %81, %72
  %102 = load %struct.b43_phy_g*, %struct.b43_phy_g** %5, align 8
  %103 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %102, i32 0, i32 1
  store i32 62, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %90
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i64 @b43_generate_dyn_tssi2dbm_tab(%struct.b43_wldev* %105, i32 %106, i32 %107, i32 %108)
  %110 = load %struct.b43_phy_g*, %struct.b43_phy_g** %5, align 8
  %111 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  %112 = load %struct.b43_phy_g*, %struct.b43_phy_g** %5, align 8
  %113 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %104
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %129

119:                                              ; preds = %104
  %120 = load %struct.b43_phy_g*, %struct.b43_phy_g** %5, align 8
  %121 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  br label %128

122:                                              ; preds = %69, %66, %63, %60, %57, %49
  %123 = load %struct.b43_phy_g*, %struct.b43_phy_g** %5, align 8
  %124 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %123, i32 0, i32 1
  store i32 52, i32* %124, align 4
  %125 = load i64, i64* @b43_tssi2dbm_g_table, align 8
  %126 = load %struct.b43_phy_g*, %struct.b43_phy_g** %5, align 8
  %127 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %126, i32 0, i32 2
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %122, %119
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %128, %116
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i64 @b43_generate_dyn_tssi2dbm_tab(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
