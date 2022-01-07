; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_enclosure.c_enclosure_component_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_enclosure.c_enclosure_component_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_component = type { i32, i32, %struct.device }
%struct.device = type { i32, i32, i32 }
%struct.enclosure_device = type { i32, i32, %struct.enclosure_component* }

@COMPONENT_NAME_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%i\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@enclosure_component_release = common dso_local global i32 0, align 4
@enclosure_component_groups = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.enclosure_component* @enclosure_component_alloc(%struct.enclosure_device* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.enclosure_component*, align 8
  %6 = alloca %struct.enclosure_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.enclosure_component*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.enclosure_device* %0, %struct.enclosure_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i32, i32* @COMPONENT_NAME_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.enclosure_device*, %struct.enclosure_device** %6, align 8
  %22 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp uge i32 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.enclosure_component* @ERR_PTR(i32 %27)
  store %struct.enclosure_component* %28, %struct.enclosure_component** %5, align 8
  store i32 1, i32* %15, align 4
  br label %95

29:                                               ; preds = %4
  %30 = load %struct.enclosure_device*, %struct.enclosure_device** %6, align 8
  %31 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %30, i32 0, i32 2
  %32 = load %struct.enclosure_component*, %struct.enclosure_component** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %32, i64 %34
  store %struct.enclosure_component* %35, %struct.enclosure_component** %10, align 8
  %36 = load %struct.enclosure_component*, %struct.enclosure_component** %10, align 8
  %37 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.enclosure_component* @ERR_PTR(i32 %42)
  store %struct.enclosure_component* %43, %struct.enclosure_component** %5, align 8
  store i32 1, i32* %15, align 4
  br label %95

44:                                               ; preds = %29
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.enclosure_component*, %struct.enclosure_component** %10, align 8
  %47 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.enclosure_component*, %struct.enclosure_component** %10, align 8
  %50 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.enclosure_component*, %struct.enclosure_component** %10, align 8
  %52 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %51, i32 0, i32 2
  store %struct.device* %52, %struct.device** %11, align 8
  %53 = load %struct.enclosure_device*, %struct.enclosure_device** %6, align 8
  %54 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %53, i32 0, i32 1
  %55 = call i32 @get_device(i32* %54)
  %56 = load %struct.device*, %struct.device** %11, align 8
  %57 = getelementptr inbounds %struct.device, %struct.device* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %83

60:                                               ; preds = %44
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  store i32 1, i32* %12, align 4
  %67 = load i32, i32* @COMPONENT_NAME_SIZE, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %19, i32 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %74, %66
  %71 = load %struct.enclosure_device*, %struct.enclosure_device** %6, align 8
  %72 = call i64 @enclosure_component_find_by_name(%struct.enclosure_device* %71, i8* %19)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* @COMPONENT_NAME_SIZE, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  %79 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %19, i32 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %76, i32 %77)
  br label %70

80:                                               ; preds = %70
  %81 = load %struct.device*, %struct.device** %11, align 8
  %82 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %87

83:                                               ; preds = %60, %44
  %84 = load %struct.device*, %struct.device** %11, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %83, %80
  %88 = load i32, i32* @enclosure_component_release, align 4
  %89 = load %struct.device*, %struct.device** %11, align 8
  %90 = getelementptr inbounds %struct.device, %struct.device* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @enclosure_component_groups, align 4
  %92 = load %struct.device*, %struct.device** %11, align 8
  %93 = getelementptr inbounds %struct.device, %struct.device* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.enclosure_component*, %struct.enclosure_component** %10, align 8
  store %struct.enclosure_component* %94, %struct.enclosure_component** %5, align 8
  store i32 1, i32* %15, align 4
  br label %95

95:                                               ; preds = %87, %40, %25
  %96 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load %struct.enclosure_component*, %struct.enclosure_component** %5, align 8
  ret %struct.enclosure_component* %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.enclosure_component* @ERR_PTR(i32) #2

declare dso_local i32 @get_device(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i64 @enclosure_component_find_by_name(%struct.enclosure_device*, i8*) #2

declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
