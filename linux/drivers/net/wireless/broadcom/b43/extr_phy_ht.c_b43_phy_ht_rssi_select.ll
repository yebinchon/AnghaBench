; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_phy_ht_rssi_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_phy_ht_rssi_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@b43_phy_ht_rssi_select.ctl_regs = internal constant [3 x [2 x i32]] [[2 x i32] [i32 137, i32 136], [2 x i32] [i32 135, i32 134], [2 x i32] [i32 133, i32 132]], align 16
@b43_phy_ht_rssi_select.radio_r = internal constant [3 x i32] [i32 130, i32 129, i32 128], align 4
@.str = private unnamed_addr constant [49 x i8] c"RSSI selection for core off not implemented yet\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"RSSI selection for type %d not implemented yet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32)* @b43_phy_ht_rssi_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_ht_rssi_select(%struct.b43_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, i8*, ...) @b43err(i32 %13, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %89

15:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %85, %15
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %88

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %37, label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %28, %22
  br label %85

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %78 [
    i32 131, label %40
  ]

40:                                               ; preds = %38
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* @b43_phy_ht_rssi_select.ctl_regs, i64 0, i64 %43
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %44, i64 0, i64 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @b43_phy_set(%struct.b43_wldev* %41, i32 %46, i32 768)
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* @b43_phy_ht_rssi_select.ctl_regs, i64 0, i64 %50
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %51, i64 0, i64 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @b43_phy_set(%struct.b43_wldev* %48, i32 %53, i32 3072)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* @b43_phy_ht_rssi_select.ctl_regs, i64 0, i64 %57
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %58, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @b43_phy_set(%struct.b43_wldev* %55, i32 %60, i32 512)
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* @b43_phy_ht_rssi_select.ctl_regs, i64 0, i64 %64
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %65, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @b43_phy_set(%struct.b43_wldev* %62, i32 %67, i32 1024)
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %70 = call i32 @b43_radio_set(%struct.b43_wldev* %69, i32 191, i32 1)
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* @b43_phy_ht_rssi_select.radio_r, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, 345
  %77 = call i32 @b43_radio_write(%struct.b43_wldev* %71, i32 %76, i32 17)
  br label %84

78:                                               ; preds = %38
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %80 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (i32, i8*, ...) @b43err(i32 %81, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %78, %40
  br label %85

85:                                               ; preds = %84, %37
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %16

88:                                               ; preds = %16
  br label %89

89:                                               ; preds = %88, %10
  ret void
}

declare dso_local i32 @b43err(i32, i8*, ...) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
