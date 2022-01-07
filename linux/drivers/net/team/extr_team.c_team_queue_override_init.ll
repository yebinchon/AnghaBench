; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_queue_override_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_queue_override_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { %struct.list_head*, %struct.TYPE_2__* }
%struct.list_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.team*)* @team_queue_override_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @team_queue_override_init(%struct.team* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.team*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.team* %0, %struct.team** %3, align 8
  %7 = load %struct.team*, %struct.team** %3, align 8
  %8 = getelementptr inbounds %struct.team, %struct.team* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.list_head* @kmalloc_array(i32 %17, i32 4, i32 %18)
  store %struct.list_head* %19, %struct.list_head** %4, align 8
  %20 = load %struct.list_head*, %struct.list_head** %4, align 8
  %21 = icmp ne %struct.list_head* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %42

25:                                               ; preds = %16
  %26 = load %struct.list_head*, %struct.list_head** %4, align 8
  %27 = load %struct.team*, %struct.team** %3, align 8
  %28 = getelementptr inbounds %struct.team, %struct.team* %27, i32 0, i32 0
  store %struct.list_head* %26, %struct.list_head** %28, align 8
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %38, %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load %struct.list_head*, %struct.list_head** %4, align 8
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i32 1
  store %struct.list_head* %35, %struct.list_head** %4, align 8
  %36 = ptrtoint %struct.list_head* %34 to i32
  %37 = call i32 @INIT_LIST_HEAD(i32 %36)
  br label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %29

41:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %22, %15
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.list_head* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
