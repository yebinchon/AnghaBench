; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_flash.c_update_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_flash.c_update_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.property = type { i32, %struct.property*, %struct.property* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"%pOFn: update property (%s, length: %i, value: %#x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i8*, i32, i8*)* @update_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_property(%struct.device_node* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.property*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i32 24, i32 %13)
  %15 = bitcast i8* %14 to %struct.property*
  store %struct.property* %15, %struct.property** %10, align 8
  %16 = load %struct.property*, %struct.property** %10, align 8
  %17 = icmp ne %struct.property* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %97

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.property* @kstrdup(i8* %22, i32 %23)
  %25 = load %struct.property*, %struct.property** %10, align 8
  %26 = getelementptr inbounds %struct.property, %struct.property* %25, i32 0, i32 2
  store %struct.property* %24, %struct.property** %26, align 8
  %27 = load %struct.property*, %struct.property** %10, align 8
  %28 = getelementptr inbounds %struct.property, %struct.property* %27, i32 0, i32 2
  %29 = load %struct.property*, %struct.property** %28, align 8
  %30 = icmp ne %struct.property* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %21
  %32 = load %struct.property*, %struct.property** %10, align 8
  %33 = call i32 @kfree(%struct.property* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %97

36:                                               ; preds = %21
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.property*, %struct.property** %10, align 8
  %39 = getelementptr inbounds %struct.property, %struct.property* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.property*, %struct.property** %10, align 8
  %41 = getelementptr inbounds %struct.property, %struct.property* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kzalloc(i32 %42, i32 %43)
  %45 = bitcast i8* %44 to %struct.property*
  %46 = load %struct.property*, %struct.property** %10, align 8
  %47 = getelementptr inbounds %struct.property, %struct.property* %46, i32 0, i32 1
  store %struct.property* %45, %struct.property** %47, align 8
  %48 = load %struct.property*, %struct.property** %10, align 8
  %49 = getelementptr inbounds %struct.property, %struct.property* %48, i32 0, i32 1
  %50 = load %struct.property*, %struct.property** %49, align 8
  %51 = icmp ne %struct.property* %50, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %36
  %53 = load %struct.property*, %struct.property** %10, align 8
  %54 = getelementptr inbounds %struct.property, %struct.property* %53, i32 0, i32 2
  %55 = load %struct.property*, %struct.property** %54, align 8
  %56 = call i32 @kfree(%struct.property* %55)
  %57 = load %struct.property*, %struct.property** %10, align 8
  %58 = call i32 @kfree(%struct.property* %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %97

61:                                               ; preds = %36
  %62 = load %struct.property*, %struct.property** %10, align 8
  %63 = getelementptr inbounds %struct.property, %struct.property* %62, i32 0, i32 1
  %64 = load %struct.property*, %struct.property** %63, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @memcpy(%struct.property* %64, i8* %65, i32 %66)
  %68 = load %struct.property*, %struct.property** %10, align 8
  %69 = getelementptr inbounds %struct.property, %struct.property* %68, i32 0, i32 1
  %70 = load %struct.property*, %struct.property** %69, align 8
  %71 = bitcast %struct.property* %70 to i32*
  store i32* %71, i32** %11, align 8
  %72 = load %struct.device_node*, %struct.device_node** %6, align 8
  %73 = load %struct.property*, %struct.property** %10, align 8
  %74 = call i32 @cxl_update_properties(%struct.device_node* %72, %struct.property* %73)
  store i32 %74, i32* %12, align 4
  %75 = load %struct.device_node*, %struct.device_node** %6, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @be32_to_cpu(i32 %79)
  %81 = call i32 @pr_devel(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %struct.device_node* %75, i8* %76, i32 %77, i32 %80)
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %61
  %85 = load %struct.property*, %struct.property** %10, align 8
  %86 = getelementptr inbounds %struct.property, %struct.property* %85, i32 0, i32 2
  %87 = load %struct.property*, %struct.property** %86, align 8
  %88 = call i32 @kfree(%struct.property* %87)
  %89 = load %struct.property*, %struct.property** %10, align 8
  %90 = getelementptr inbounds %struct.property, %struct.property* %89, i32 0, i32 1
  %91 = load %struct.property*, %struct.property** %90, align 8
  %92 = call i32 @kfree(%struct.property* %91)
  %93 = load %struct.property*, %struct.property** %10, align 8
  %94 = call i32 @kfree(%struct.property* %93)
  br label %95

95:                                               ; preds = %84, %61
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %52, %31, %18
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.property* @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(%struct.property*) #1

declare dso_local i32 @memcpy(%struct.property*, i8*, i32) #1

declare dso_local i32 @cxl_update_properties(%struct.device_node*, %struct.property*) #1

declare dso_local i32 @pr_devel(i8*, %struct.device_node*, i8*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
