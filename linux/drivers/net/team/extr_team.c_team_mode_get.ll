; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_mode_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_mode_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team_mode = type { i32 }
%struct.team_mode_item = type { %struct.team_mode* }

@mode_list_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"team-mode-%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.team_mode* (i8*)* @team_mode_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.team_mode* @team_mode_get(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.team_mode_item*, align 8
  %4 = alloca %struct.team_mode*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.team_mode* null, %struct.team_mode** %4, align 8
  %5 = call i32 @spin_lock(i32* @mode_list_lock)
  %6 = load i8*, i8** %2, align 8
  %7 = call %struct.team_mode_item* @__find_mode(i8* %6)
  store %struct.team_mode_item* %7, %struct.team_mode_item** %3, align 8
  %8 = load %struct.team_mode_item*, %struct.team_mode_item** %3, align 8
  %9 = icmp ne %struct.team_mode_item* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = call i32 @spin_unlock(i32* @mode_list_lock)
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @request_module(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = call i32 @spin_lock(i32* @mode_list_lock)
  %15 = load i8*, i8** %2, align 8
  %16 = call %struct.team_mode_item* @__find_mode(i8* %15)
  store %struct.team_mode_item* %16, %struct.team_mode_item** %3, align 8
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.team_mode_item*, %struct.team_mode_item** %3, align 8
  %19 = icmp ne %struct.team_mode_item* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load %struct.team_mode_item*, %struct.team_mode_item** %3, align 8
  %22 = getelementptr inbounds %struct.team_mode_item, %struct.team_mode_item* %21, i32 0, i32 0
  %23 = load %struct.team_mode*, %struct.team_mode** %22, align 8
  store %struct.team_mode* %23, %struct.team_mode** %4, align 8
  %24 = load %struct.team_mode*, %struct.team_mode** %4, align 8
  %25 = getelementptr inbounds %struct.team_mode, %struct.team_mode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @try_module_get(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  store %struct.team_mode* null, %struct.team_mode** %4, align 8
  br label %30

30:                                               ; preds = %29, %20
  br label %31

31:                                               ; preds = %30, %17
  %32 = call i32 @spin_unlock(i32* @mode_list_lock)
  %33 = load %struct.team_mode*, %struct.team_mode** %4, align 8
  ret %struct.team_mode* %33
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.team_mode_item* @__find_mode(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @request_module(i8*, i8*) #1

declare dso_local i32 @try_module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
