; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_nphy.c_b43_nphy_get_rf_ctl_over_rev7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_nphy.c_b43_nphy_get_rf_ctl_over_rev7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nphy_rf_control_override_rev7 = type { i64 }
%struct.b43_wldev = type { i32 }

@tbl_rf_control_override_rev7_over0 = common dso_local global %struct.nphy_rf_control_override_rev7* null, align 8
@tbl_rf_control_override_rev7_over1 = common dso_local global %struct.nphy_rf_control_override_rev7* null, align 8
@tbl_rf_control_override_rev7_over2 = common dso_local global %struct.nphy_rf_control_override_rev7* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Invalid override value %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nphy_rf_control_override_rev7* @b43_nphy_get_rf_ctl_over_rev7(%struct.b43_wldev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.nphy_rf_control_override_rev7*, align 8
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nphy_rf_control_override_rev7*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %24 [
    i32 0, label %12
    i32 1, label %16
    i32 2, label %20
  ]

12:                                               ; preds = %3
  %13 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** @tbl_rf_control_override_rev7_over0, align 8
  store %struct.nphy_rf_control_override_rev7* %13, %struct.nphy_rf_control_override_rev7** %8, align 8
  %14 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** @tbl_rf_control_override_rev7_over0, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.nphy_rf_control_override_rev7* %14)
  store i32 %15, i32* %9, align 4
  br label %30

16:                                               ; preds = %3
  %17 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** @tbl_rf_control_override_rev7_over1, align 8
  store %struct.nphy_rf_control_override_rev7* %17, %struct.nphy_rf_control_override_rev7** %8, align 8
  %18 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** @tbl_rf_control_override_rev7_over1, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.nphy_rf_control_override_rev7* %18)
  store i32 %19, i32* %9, align 4
  br label %30

20:                                               ; preds = %3
  %21 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** @tbl_rf_control_override_rev7_over2, align 8
  store %struct.nphy_rf_control_override_rev7* %21, %struct.nphy_rf_control_override_rev7** %8, align 8
  %22 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** @tbl_rf_control_override_rev7_over2, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.nphy_rf_control_override_rev7* %22)
  store i32 %23, i32* %9, align 4
  br label %30

24:                                               ; preds = %3
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %26 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @b43err(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28)
  store %struct.nphy_rf_control_override_rev7* null, %struct.nphy_rf_control_override_rev7** %4, align 8
  br label %54

30:                                               ; preds = %20, %16, %12
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %50, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.nphy_rf_control_override_rev7, %struct.nphy_rf_control_override_rev7* %36, i64 %38
  %40 = getelementptr inbounds %struct.nphy_rf_control_override_rev7, %struct.nphy_rf_control_override_rev7* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.nphy_rf_control_override_rev7, %struct.nphy_rf_control_override_rev7* %45, i64 %47
  store %struct.nphy_rf_control_override_rev7* %48, %struct.nphy_rf_control_override_rev7** %4, align 8
  br label %54

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %31

53:                                               ; preds = %31
  store %struct.nphy_rf_control_override_rev7* null, %struct.nphy_rf_control_override_rev7** %4, align 8
  br label %54

54:                                               ; preds = %53, %44, %24
  %55 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** %4, align 8
  ret %struct.nphy_rf_control_override_rev7* %55
}

declare dso_local i32 @ARRAY_SIZE(%struct.nphy_rf_control_override_rev7*) #1

declare dso_local i32 @b43err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
