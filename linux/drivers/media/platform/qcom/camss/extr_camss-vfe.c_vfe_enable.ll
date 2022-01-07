; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_line = type { i32 }
%struct.vfe_device = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.vfe_device*, i32)*, i32 (%struct.vfe_device*)*, i32 (%struct.vfe_device*)*, i32 (%struct.vfe_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfe_line*)* @vfe_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_enable(%struct.vfe_line* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfe_line*, align 8
  %4 = alloca %struct.vfe_device*, align 8
  %5 = alloca i32, align 4
  store %struct.vfe_line* %0, %struct.vfe_line** %3, align 8
  %6 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %7 = call %struct.vfe_device* @to_vfe(%struct.vfe_line* %6)
  store %struct.vfe_device* %7, %struct.vfe_device** %4, align 8
  %8 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %9 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %8, i32 0, i32 2
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %12 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %44, label %15

15:                                               ; preds = %1
  %16 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %17 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32 (%struct.vfe_device*)*, i32 (%struct.vfe_device*)** %19, align 8
  %21 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %22 = call i32 %20(%struct.vfe_device* %21)
  %23 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %24 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.vfe_device*, i32)*, i32 (%struct.vfe_device*, i32)** %26, align 8
  %28 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %29 = call i32 %27(%struct.vfe_device* %28, i32 1)
  %30 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %31 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32 (%struct.vfe_device*)*, i32 (%struct.vfe_device*)** %33, align 8
  %35 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %36 = call i32 %34(%struct.vfe_device* %35)
  %37 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %38 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32 (%struct.vfe_device*)*, i32 (%struct.vfe_device*)** %40, align 8
  %42 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %43 = call i32 %41(%struct.vfe_device* %42)
  br label %44

44:                                               ; preds = %15, %1
  %45 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %46 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %50 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %49, i32 0, i32 2
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %53 = call i32 @vfe_get_output(%struct.vfe_line* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %69

57:                                               ; preds = %44
  %58 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %59 = call i32 @vfe_enable_output(%struct.vfe_line* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %66

63:                                               ; preds = %57
  %64 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %65 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  store i32 0, i32* %2, align 4
  br label %94

66:                                               ; preds = %62
  %67 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %68 = call i32 @vfe_put_output(%struct.vfe_line* %67)
  br label %69

69:                                               ; preds = %66, %56
  %70 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %71 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %70, i32 0, i32 2
  %72 = call i32 @mutex_lock(i32* %71)
  %73 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %74 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %79 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %78, i32 0, i32 3
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32 (%struct.vfe_device*, i32)*, i32 (%struct.vfe_device*, i32)** %81, align 8
  %83 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %84 = call i32 %82(%struct.vfe_device* %83, i32 0)
  br label %85

85:                                               ; preds = %77, %69
  %86 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %87 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %91 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %90, i32 0, i32 2
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %85, %63
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.vfe_device* @to_vfe(%struct.vfe_line*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vfe_get_output(%struct.vfe_line*) #1

declare dso_local i32 @vfe_enable_output(%struct.vfe_line*) #1

declare dso_local i32 @vfe_put_output(%struct.vfe_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
