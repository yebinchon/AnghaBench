; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_radio_2057_rccal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_radio_2057_rccal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@b43_radio_2057_rccal.radio_values = internal constant [3 x [2 x i32]] [[2 x i32] [i32 97, i32 233], [2 x i32] [i32 105, i32 213], [2 x i32] [i32 115, i32 153]], align 16
@R2059_RCCAL_MASTER = common dso_local global i32 0, align 4
@R2059_RCCAL_X1 = common dso_local global i32 0, align 4
@R2059_RCCAL_TRC0 = common dso_local global i32 0, align 4
@R2059_RCCAL_START_R1_Q1_P1 = common dso_local global i32 0, align 4
@R2059_RCCAL_DONE_OSCCAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Radio 0x2059 rccal timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_radio_2057_rccal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_radio_2057_rccal(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %43, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 3
  br i1 %6, label %7, label %46

7:                                                ; preds = %4
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = load i32, i32* @R2059_RCCAL_MASTER, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* @b43_radio_2057_rccal.radio_values, i64 0, i64 %11
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @b43_radio_write(%struct.b43_wldev* %8, i32 %9, i32 %14)
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %17 = load i32, i32* @R2059_RCCAL_X1, align 4
  %18 = call i32 @b43_radio_write(%struct.b43_wldev* %16, i32 %17, i32 110)
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %20 = load i32, i32* @R2059_RCCAL_TRC0, align 4
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* @b43_radio_2057_rccal.radio_values, i64 0, i64 %22
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @b43_radio_write(%struct.b43_wldev* %19, i32 %20, i32 %25)
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %28 = load i32, i32* @R2059_RCCAL_START_R1_Q1_P1, align 4
  %29 = call i32 @b43_radio_write(%struct.b43_wldev* %27, i32 %28, i32 85)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = load i32, i32* @R2059_RCCAL_DONE_OSCCAP, align 4
  %32 = call i32 @b43_radio_wait_value(%struct.b43_wldev* %30, i32 %31, i32 2, i32 2, i32 500, i32 5000000)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %7
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %36 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @b43err(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %7
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = load i32, i32* @R2059_RCCAL_START_R1_Q1_P1, align 4
  %42 = call i32 @b43_radio_write(%struct.b43_wldev* %40, i32 %41, i32 21)
  br label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %4

46:                                               ; preds = %4
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %48 = load i32, i32* @R2059_RCCAL_MASTER, align 4
  %49 = call i32 @b43_radio_mask(%struct.b43_wldev* %47, i32 %48, i32 -2)
  ret void
}

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_wait_value(%struct.b43_wldev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
