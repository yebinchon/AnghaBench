; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_imon_panel_key_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_imon_panel_key_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imon_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.imon_panel_key_table* }
%struct.imon_panel_key_table = type { i32, i32 }

@KEY_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imon_context*, i32)* @imon_panel_key_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imon_panel_key_lookup(%struct.imon_context* %0, i32 %1) #0 {
  %3 = alloca %struct.imon_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.imon_panel_key_table*, align 8
  store %struct.imon_context* %0, %struct.imon_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @KEY_RESERVED, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %10 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.imon_panel_key_table*, %struct.imon_panel_key_table** %12, align 8
  store %struct.imon_panel_key_table* %13, %struct.imon_panel_key_table** %7, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %40, %2
  %15 = load %struct.imon_panel_key_table*, %struct.imon_panel_key_table** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.imon_panel_key_table, %struct.imon_panel_key_table* %15, i64 %17
  %19 = getelementptr inbounds %struct.imon_panel_key_table, %struct.imon_panel_key_table* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %14
  %23 = load %struct.imon_panel_key_table*, %struct.imon_panel_key_table** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.imon_panel_key_table, %struct.imon_panel_key_table* %23, i64 %25
  %27 = getelementptr inbounds %struct.imon_panel_key_table, %struct.imon_panel_key_table* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, 65518
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.imon_panel_key_table*, %struct.imon_panel_key_table** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.imon_panel_key_table, %struct.imon_panel_key_table* %33, i64 %35
  %37 = getelementptr inbounds %struct.imon_panel_key_table, %struct.imon_panel_key_table* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  br label %43

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %14

43:                                               ; preds = %32, %14
  %44 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %45 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
