; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_mode_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_mode_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team_mode = type { i64, i32 }
%struct.team_mode_item = type { i32, %struct.team_mode* }

@TEAM_MODE_PRIV_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mode_list_lock = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@mode_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @team_mode_register(%struct.team_mode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.team_mode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.team_mode_item*, align 8
  store %struct.team_mode* %0, %struct.team_mode** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.team_mode*, %struct.team_mode** %3, align 8
  %7 = getelementptr inbounds %struct.team_mode, %struct.team_mode* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @is_good_mode_name(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.team_mode*, %struct.team_mode** %3, align 8
  %13 = getelementptr inbounds %struct.team_mode, %struct.team_mode* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TEAM_MODE_PRIV_SIZE, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11, %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %50

20:                                               ; preds = %11
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.team_mode_item* @kmalloc(i32 16, i32 %21)
  store %struct.team_mode_item* %22, %struct.team_mode_item** %5, align 8
  %23 = load %struct.team_mode_item*, %struct.team_mode_item** %5, align 8
  %24 = icmp ne %struct.team_mode_item* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %50

28:                                               ; preds = %20
  %29 = call i32 @spin_lock(i32* @mode_list_lock)
  %30 = load %struct.team_mode*, %struct.team_mode** %3, align 8
  %31 = getelementptr inbounds %struct.team_mode, %struct.team_mode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @__find_mode(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* @EEXIST, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  %38 = load %struct.team_mode_item*, %struct.team_mode_item** %5, align 8
  %39 = call i32 @kfree(%struct.team_mode_item* %38)
  br label %47

40:                                               ; preds = %28
  %41 = load %struct.team_mode*, %struct.team_mode** %3, align 8
  %42 = load %struct.team_mode_item*, %struct.team_mode_item** %5, align 8
  %43 = getelementptr inbounds %struct.team_mode_item, %struct.team_mode_item* %42, i32 0, i32 1
  store %struct.team_mode* %41, %struct.team_mode** %43, align 8
  %44 = load %struct.team_mode_item*, %struct.team_mode_item** %5, align 8
  %45 = getelementptr inbounds %struct.team_mode_item, %struct.team_mode_item* %44, i32 0, i32 0
  %46 = call i32 @list_add_tail(i32* %45, i32* @mode_list)
  br label %47

47:                                               ; preds = %40, %35
  %48 = call i32 @spin_unlock(i32* @mode_list_lock)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %25, %17
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @is_good_mode_name(i32) #1

declare dso_local %struct.team_mode_item* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @__find_mode(i32) #1

declare dso_local i32 @kfree(%struct.team_mode_item*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
