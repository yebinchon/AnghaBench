; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_radio_2057.c_r2057_upload_inittabs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_radio_2057.c_r2057_upload_inittabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, i32 }

@r2057_rev4_init = common dso_local global i64** null, align 8
@r2057_rev5_init = common dso_local global i64** null, align 8
@r2057_rev7_init = common dso_local global i64** null, align 8
@r2057_rev5a_init = common dso_local global i64** null, align 8
@r2057_rev9_init = common dso_local global i64** null, align 8
@r2057_rev14_init = common dso_local global i64** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r2057_upload_inittabs(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  store %struct.b43_phy* %8, %struct.b43_phy** %3, align 8
  store i64* null, i64** %4, align 8
  %9 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %10 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %78 [
    i32 7, label %12
    i32 8, label %18
    i32 9, label %42
    i32 16, label %54
    i32 17, label %66
  ]

12:                                               ; preds = %1
  %13 = load i64**, i64*** @r2057_rev4_init, align 8
  %14 = getelementptr inbounds i64*, i64** %13, i64 0
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %4, align 8
  %16 = load i64**, i64*** @r2057_rev4_init, align 8
  %17 = call i64 @ARRAY_SIZE(i64** %16)
  store i64 %17, i64* %5, align 8
  br label %78

18:                                               ; preds = %1
  %19 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %20 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 5
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i64**, i64*** @r2057_rev5_init, align 8
  %25 = getelementptr inbounds i64*, i64** %24, i64 0
  %26 = load i64*, i64** %25, align 8
  store i64* %26, i64** %4, align 8
  %27 = load i64**, i64*** @r2057_rev5_init, align 8
  %28 = call i64 @ARRAY_SIZE(i64** %27)
  store i64 %28, i64* %5, align 8
  br label %41

29:                                               ; preds = %18
  %30 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %31 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 7
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i64**, i64*** @r2057_rev7_init, align 8
  %36 = getelementptr inbounds i64*, i64** %35, i64 0
  %37 = load i64*, i64** %36, align 8
  store i64* %37, i64** %4, align 8
  %38 = load i64**, i64*** @r2057_rev7_init, align 8
  %39 = call i64 @ARRAY_SIZE(i64** %38)
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %34, %29
  br label %41

41:                                               ; preds = %40, %23
  br label %78

42:                                               ; preds = %1
  %43 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %44 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 5
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i64**, i64*** @r2057_rev5a_init, align 8
  %49 = getelementptr inbounds i64*, i64** %48, i64 0
  %50 = load i64*, i64** %49, align 8
  store i64* %50, i64** %4, align 8
  %51 = load i64**, i64*** @r2057_rev5a_init, align 8
  %52 = call i64 @ARRAY_SIZE(i64** %51)
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %47, %42
  br label %78

54:                                               ; preds = %1
  %55 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %56 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 9
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i64**, i64*** @r2057_rev9_init, align 8
  %61 = getelementptr inbounds i64*, i64** %60, i64 0
  %62 = load i64*, i64** %61, align 8
  store i64* %62, i64** %4, align 8
  %63 = load i64**, i64*** @r2057_rev9_init, align 8
  %64 = call i64 @ARRAY_SIZE(i64** %63)
  store i64 %64, i64* %5, align 8
  br label %65

65:                                               ; preds = %59, %54
  br label %78

66:                                               ; preds = %1
  %67 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %68 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 14
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i64**, i64*** @r2057_rev14_init, align 8
  %73 = getelementptr inbounds i64*, i64** %72, i64 0
  %74 = load i64*, i64** %73, align 8
  store i64* %74, i64** %4, align 8
  %75 = load i64**, i64*** @r2057_rev14_init, align 8
  %76 = call i64 @ARRAY_SIZE(i64** %75)
  store i64 %76, i64* %5, align 8
  br label %77

77:                                               ; preds = %71, %66
  br label %78

78:                                               ; preds = %1, %77, %65, %53, %41, %12
  %79 = load i64*, i64** %4, align 8
  %80 = icmp ne i64* %79, null
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @B43_WARN_ON(i32 %82)
  %84 = load i64*, i64** %4, align 8
  %85 = icmp ne i64* %84, null
  br i1 %85, label %86, label %106

86:                                               ; preds = %78
  store i64 0, i64* %6, align 8
  br label %87

87:                                               ; preds = %100, %86
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* %5, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %93 = load i64*, i64** %4, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64*, i64** %4, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @b43_radio_write(%struct.b43_wldev* %92, i64 %95, i64 %98)
  br label %100

100:                                              ; preds = %91
  %101 = load i64, i64* %6, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %6, align 8
  %103 = load i64*, i64** %4, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 2
  store i64* %104, i64** %4, align 8
  br label %87

105:                                              ; preds = %87
  br label %106

106:                                              ; preds = %105, %78
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i64**) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
