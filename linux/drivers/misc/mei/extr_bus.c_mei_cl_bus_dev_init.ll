; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cl_bus_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cl_bus_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32, i32, i32 }
%struct.mei_me_client = type { i32 }
%struct.mei_cl_device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"initializing %pUl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_device*, %struct.mei_me_client*)* @mei_cl_bus_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_cl_bus_dev_init(%struct.mei_device* %0, %struct.mei_me_client* %1) #0 {
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca %struct.mei_me_client*, align 8
  %5 = alloca %struct.mei_cl_device*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  store %struct.mei_me_client* %1, %struct.mei_me_client** %4, align 8
  %6 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %7 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %6, i32 0, i32 2
  %8 = call i32 @mutex_is_locked(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %14 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mei_me_client*, %struct.mei_me_client** %4, align 8
  %17 = call i32 @mei_me_cl_uuid(%struct.mei_me_client* %16)
  %18 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.mei_me_client*, %struct.mei_me_client** %4, align 8
  %20 = getelementptr inbounds %struct.mei_me_client, %struct.mei_me_client* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %39

24:                                               ; preds = %2
  %25 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %26 = load %struct.mei_me_client*, %struct.mei_me_client** %4, align 8
  %27 = call %struct.mei_cl_device* @mei_cl_bus_dev_alloc(%struct.mei_device* %25, %struct.mei_me_client* %26)
  store %struct.mei_cl_device* %27, %struct.mei_cl_device** %5, align 8
  %28 = load %struct.mei_cl_device*, %struct.mei_cl_device** %5, align 8
  %29 = icmp ne %struct.mei_cl_device* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %39

31:                                               ; preds = %24
  %32 = load %struct.mei_me_client*, %struct.mei_me_client** %4, align 8
  %33 = getelementptr inbounds %struct.mei_me_client, %struct.mei_me_client* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.mei_cl_device*, %struct.mei_cl_device** %5, align 8
  %35 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %34, i32 0, i32 0
  %36 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %37 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %36, i32 0, i32 0
  %38 = call i32 @list_add_tail(i32* %35, i32* %37)
  br label %39

39:                                               ; preds = %31, %30, %23
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @mei_me_cl_uuid(%struct.mei_me_client*) #1

declare dso_local %struct.mei_cl_device* @mei_cl_bus_dev_alloc(%struct.mei_device*, %struct.mei_me_client*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
