; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cl_bus_dev_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cl_bus_dev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl_device = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"adding %pUL:%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_cl_device*)* @mei_cl_bus_dev_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_cl_bus_dev_add(%struct.mei_cl_device* %0) #0 {
  %2 = alloca %struct.mei_cl_device*, align 8
  %3 = alloca i32, align 4
  store %struct.mei_cl_device* %0, %struct.mei_cl_device** %2, align 8
  %4 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %5 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %4, i32 0, i32 3
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %10 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @mei_me_cl_uuid(i32 %11)
  %13 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %14 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @mei_me_cl_ver(i32 %15)
  %17 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16)
  %18 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %19 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %18, i32 0, i32 1
  %20 = call i32 @device_add(i32* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %25 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %23, %1
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @mei_me_cl_uuid(i32) #1

declare dso_local i32 @mei_me_cl_ver(i32) #1

declare dso_local i32 @device_add(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
