; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_detect_phy_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_detect_phy_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan9303 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.lan9303*, i32, i32)* }

@MII_LAN911X_SPECIAL_MODES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to detect phy config: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Phy setup '%s' detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"1-2-3\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"0-1-2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan9303*)* @lan9303_detect_phy_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan9303_detect_phy_setup(%struct.lan9303* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lan9303*, align 8
  %4 = alloca i32, align 4
  store %struct.lan9303* %0, %struct.lan9303** %3, align 8
  %5 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %6 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.lan9303*, i32, i32)*, i32 (%struct.lan9303*, i32, i32)** %8, align 8
  %10 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %11 = load i32, i32* @MII_LAN911X_SPECIAL_MODES, align 4
  %12 = call i32 %9(%struct.lan9303* %10, i32 3, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %17 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %43

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 65535
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i1 [ false, %22 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %32 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %34 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %37 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %42 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %28, %15
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
