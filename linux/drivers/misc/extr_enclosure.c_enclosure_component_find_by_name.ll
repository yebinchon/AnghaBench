; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_enclosure.c_enclosure_component_find_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_enclosure.c_enclosure_component_find_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_component = type { i32, i32 }
%struct.enclosure_device = type { i32, %struct.enclosure_component* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.enclosure_component* (%struct.enclosure_device*, i8*)* @enclosure_component_find_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.enclosure_component* @enclosure_component_find_by_name(%struct.enclosure_device* %0, i8* %1) #0 {
  %3 = alloca %struct.enclosure_component*, align 8
  %4 = alloca %struct.enclosure_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.enclosure_component*, align 8
  store %struct.enclosure_device* %0, %struct.enclosure_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %10 = icmp ne %struct.enclosure_device* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %11, %2
  store %struct.enclosure_component* null, %struct.enclosure_component** %3, align 8
  br label %62

20:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %58, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %24 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %21
  %28 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %29 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %28, i32 0, i32 1
  %30 = load %struct.enclosure_component*, %struct.enclosure_component** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %30, i64 %32
  store %struct.enclosure_component* %33, %struct.enclosure_component** %8, align 8
  %34 = load %struct.enclosure_component*, %struct.enclosure_component** %8, align 8
  %35 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %34, i32 0, i32 1
  %36 = call i8* @dev_name(i32* %35)
  store i8* %36, i8** %7, align 8
  %37 = load %struct.enclosure_component*, %struct.enclosure_component** %8, align 8
  %38 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %57

41:                                               ; preds = %27
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @strcmp(i8* %51, i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = load %struct.enclosure_component*, %struct.enclosure_component** %8, align 8
  store %struct.enclosure_component* %56, %struct.enclosure_component** %3, align 8
  br label %62

57:                                               ; preds = %50, %44, %41, %27
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %21

61:                                               ; preds = %21
  store %struct.enclosure_component* null, %struct.enclosure_component** %3, align 8
  br label %62

62:                                               ; preds = %61, %55, %19
  %63 = load %struct.enclosure_component*, %struct.enclosure_component** %3, align 8
  ret %struct.enclosure_component* %63
}

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
