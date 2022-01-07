; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_change_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_change_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { %struct.TYPE_2__*, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.team_mode = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"No ports can be present during mode change\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Unable to change to the same mode the team is in\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Mode \22%s\22 not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to change to mode \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Mode changed to \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.team*, i8*)* @team_change_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @team_change_mode(%struct.team* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.team*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.team_mode*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.team* %0, %struct.team** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.team*, %struct.team** %4, align 8
  %10 = getelementptr inbounds %struct.team, %struct.team* %9, i32 0, i32 2
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %7, align 8
  %12 = load %struct.team*, %struct.team** %4, align 8
  %13 = getelementptr inbounds %struct.team, %struct.team* %12, i32 0, i32 1
  %14 = call i32 @list_empty(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %67

21:                                               ; preds = %2
  %22 = load %struct.team*, %struct.team** %4, align 8
  %23 = call i64 @team_is_mode_set(%struct.team* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load %struct.team*, %struct.team** %4, align 8
  %27 = getelementptr inbounds %struct.team, %struct.team* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @strcmp(i32 %30, i8* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.net_device*, %struct.net_device** %7, align 8
  %36 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %35, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %67

39:                                               ; preds = %25, %21
  %40 = load i8*, i8** %5, align 8
  %41 = call %struct.team_mode* @team_mode_get(i8* %40)
  store %struct.team_mode* %41, %struct.team_mode** %6, align 8
  %42 = load %struct.team_mode*, %struct.team_mode** %6, align 8
  %43 = icmp ne %struct.team_mode* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load %struct.net_device*, %struct.net_device** %7, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %67

50:                                               ; preds = %39
  %51 = load %struct.team*, %struct.team** %4, align 8
  %52 = load %struct.team_mode*, %struct.team_mode** %6, align 8
  %53 = call i32 @__team_change_mode(%struct.team* %51, %struct.team_mode* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load %struct.net_device*, %struct.net_device** %7, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  %60 = load %struct.team_mode*, %struct.team_mode** %6, align 8
  %61 = call i32 @team_mode_put(%struct.team_mode* %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %67

63:                                               ; preds = %50
  %64 = load %struct.net_device*, %struct.net_device** %7, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @netdev_info(%struct.net_device* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %56, %44, %34, %16
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i64 @team_is_mode_set(%struct.team*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.team_mode* @team_mode_get(i8*) #1

declare dso_local i32 @__team_change_mode(%struct.team*, %struct.team_mode*) #1

declare dso_local i32 @team_mode_put(%struct.team_mode*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
