; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus-fixup.c_mei_mkhi_fix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus-fixup.c_mei_mkhi_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"FW version command failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"OS version command failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_cl_device*)* @mei_mkhi_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_mkhi_fix(%struct.mei_cl_device* %0) #0 {
  %2 = alloca %struct.mei_cl_device*, align 8
  %3 = alloca i32, align 4
  store %struct.mei_cl_device* %0, %struct.mei_cl_device** %2, align 8
  %4 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %5 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %12 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  br label %63

18:                                               ; preds = %10, %1
  %19 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %20 = call i32 @mei_cldev_enable(%struct.mei_cl_device* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %63

24:                                               ; preds = %18
  %25 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %26 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %33 = call i32 @mei_fwver(%struct.mei_cl_device* %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %38 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %37, i32 0, i32 0
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  br label %42

42:                                               ; preds = %41, %24
  %43 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %44 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %51 = call i32 @mei_osver(%struct.mei_cl_device* %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %56 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %55, i32 0, i32 0
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  br label %60

60:                                               ; preds = %59, %42
  %61 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %62 = call i32 @mei_cldev_disable(%struct.mei_cl_device* %61)
  br label %63

63:                                               ; preds = %60, %23, %17
  ret void
}

declare dso_local i32 @mei_cldev_enable(%struct.mei_cl_device*) #1

declare dso_local i32 @mei_fwver(%struct.mei_cl_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mei_osver(%struct.mei_cl_device*) #1

declare dso_local i32 @mei_cldev_disable(%struct.mei_cl_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
