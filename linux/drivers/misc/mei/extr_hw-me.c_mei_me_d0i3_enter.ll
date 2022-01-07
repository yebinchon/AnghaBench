; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_d0i3_enter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_d0i3_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32, i32 }
%struct.mei_me_hw = type { i32 }

@H_D0I3C_I3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"already d0i3 : set not needed\0A\00", align 1
@MEI_PG_ON = common dso_local global i32 0, align 4
@MEI_PG_EVENT_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"d0i3 enter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*)* @mei_me_d0i3_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_me_d0i3_enter(%struct.mei_device* %0) #0 {
  %2 = alloca %struct.mei_device*, align 8
  %3 = alloca %struct.mei_me_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %2, align 8
  %5 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %6 = call %struct.mei_me_hw* @to_me_hw(%struct.mei_device* %5)
  store %struct.mei_me_hw* %6, %struct.mei_me_hw** %3, align 8
  %7 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %8 = call i32 @mei_me_d0i3c_read(%struct.mei_device* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @H_D0I3C_I3, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %15 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %20 = call i32 @mei_me_d0i3_set(%struct.mei_device* %19, i32 0)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* @MEI_PG_ON, align 4
  %23 = load %struct.mei_me_hw*, %struct.mei_me_hw** %3, align 8
  %24 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @MEI_PG_EVENT_IDLE, align 4
  %26 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %27 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %29 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.mei_me_hw* @to_me_hw(%struct.mei_device*) #1

declare dso_local i32 @mei_me_d0i3c_read(%struct.mei_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mei_me_d0i3_set(%struct.mei_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
