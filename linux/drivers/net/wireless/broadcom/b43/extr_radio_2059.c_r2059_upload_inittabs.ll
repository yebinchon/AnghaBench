; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_radio_2059.c_r2059_upload_inittabs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_radio_2059.c_r2059_upload_inittabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32 }

@r2059_phy_rev1_init = common dso_local global i64** null, align 8
@R2059_ALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r2059_upload_inittabs(%struct.b43_wldev* %0) #0 {
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
  switch i32 %11, label %18 [
    i32 1, label %12
  ]

12:                                               ; preds = %1
  %13 = load i64**, i64*** @r2059_phy_rev1_init, align 8
  %14 = getelementptr inbounds i64*, i64** %13, i64 0
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %4, align 8
  %16 = load i64**, i64*** @r2059_phy_rev1_init, align 8
  %17 = call i64 @ARRAY_SIZE(i64** %16)
  store i64 %17, i64* %5, align 8
  br label %20

18:                                               ; preds = %1
  %19 = call i32 @B43_WARN_ON(i32 1)
  br label %41

20:                                               ; preds = %12
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %36, %20
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %27 = load i64, i64* @R2059_ALL, align 8
  %28 = load i64*, i64** %4, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = or i64 %27, %30
  %32 = load i64*, i64** %4, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @b43_radio_write(%struct.b43_wldev* %26, i64 %31, i64 %34)
  br label %36

36:                                               ; preds = %25
  %37 = load i64, i64* %6, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %6, align 8
  %39 = load i64*, i64** %4, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 2
  store i64* %40, i64** %4, align 8
  br label %21

41:                                               ; preds = %18, %21
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
