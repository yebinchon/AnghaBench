; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-core.c_phy_speed_to_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-core.c_phy_speed_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__ETHTOOL_LINK_MODE_MASK_NBITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [157 x i8] c"Enum ethtool_link_mode_bit_indices and phylib are out of sync. If a speed or mode has been added please update phy_speed_to_str and the PHY settings array.\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"10Mbps\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"100Mbps\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"1Gbps\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"2.5Gbps\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"5Gbps\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"10Gbps\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"14Gbps\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"20Gbps\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"25Gbps\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"40Gbps\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"50Gbps\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"56Gbps\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"100Gbps\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"200Gbps\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Unsupported (update phy-core.c)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @phy_speed_to_str(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @__ETHTOOL_LINK_MODE_MASK_NBITS, align 4
  %5 = icmp ne i32 %4, 69
  %6 = zext i1 %5 to i32
  %7 = call i32 @BUILD_BUG_ON_MSG(i32 %6, i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %24 [
    i32 142, label %9
    i32 141, label %10
    i32 140, label %11
    i32 134, label %12
    i32 131, label %13
    i32 139, label %14
    i32 137, label %15
    i32 136, label %16
    i32 133, label %17
    i32 132, label %18
    i32 130, label %19
    i32 129, label %20
    i32 138, label %21
    i32 135, label %22
    i32 128, label %23
  ]

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %25

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %25

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %25

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %25

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %25

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %25

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %25

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %25

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %25

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %25

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %25

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %25

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %25

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %25

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %25

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %25

25:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9
  %26 = load i8*, i8** %2, align 8
  ret i8* %26
}

declare dso_local i32 @BUILD_BUG_ON_MSG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
