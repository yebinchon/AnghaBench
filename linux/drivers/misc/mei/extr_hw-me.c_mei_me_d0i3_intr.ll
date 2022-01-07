; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_d0i3_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_d0i3_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i64, i64, i32, i32 }
%struct.mei_me_hw = type { i64 }

@MEI_PG_EVENT_INTR_WAIT = common dso_local global i64 0, align 8
@H_D0I3C_IS = common dso_local global i32 0, align 4
@MEI_PG_EVENT_INTR_RECEIVED = common dso_local global i64 0, align 8
@MEI_PG_ON = common dso_local global i64 0, align 8
@MEI_PG_OFF = common dso_local global i64 0, align 8
@MEI_HBM_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"d0i3 set host ready\0A\00", align 1
@H_IS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"d0i3 want resume\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_device*, i32)* @mei_me_d0i3_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_me_d0i3_intr(%struct.mei_device* %0, i32 %1) #0 {
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mei_me_hw*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %7 = call %struct.mei_me_hw* @to_me_hw(%struct.mei_device* %6)
  store %struct.mei_me_hw* %7, %struct.mei_me_hw** %5, align 8
  %8 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %9 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MEI_PG_EVENT_INTR_WAIT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @H_D0I3C_IS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %13
  %19 = load i64, i64* @MEI_PG_EVENT_INTR_RECEIVED, align 8
  %20 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %21 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.mei_me_hw*, %struct.mei_me_hw** %5, align 8
  %23 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MEI_PG_ON, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %18
  %28 = load i64, i64* @MEI_PG_OFF, align 8
  %29 = load %struct.mei_me_hw*, %struct.mei_me_hw** %5, align 8
  %30 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %32 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MEI_HBM_IDLE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %38 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %42 = call i32 @mei_me_host_set_ready(%struct.mei_device* %41)
  br label %43

43:                                               ; preds = %36, %27
  br label %48

44:                                               ; preds = %18
  %45 = load i64, i64* @MEI_PG_ON, align 8
  %46 = load %struct.mei_me_hw*, %struct.mei_me_hw** %5, align 8
  %47 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %43
  %49 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %50 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %49, i32 0, i32 3
  %51 = call i32 @wake_up(i32* %50)
  br label %52

52:                                               ; preds = %48, %13, %2
  %53 = load %struct.mei_me_hw*, %struct.mei_me_hw** %5, align 8
  %54 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MEI_PG_ON, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @H_IS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %65 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dev_dbg(i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %69 = call i32 @mei_hbm_pg_resume(%struct.mei_device* %68)
  br label %70

70:                                               ; preds = %63, %58, %52
  ret void
}

declare dso_local %struct.mei_me_hw* @to_me_hw(%struct.mei_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mei_me_host_set_ready(%struct.mei_device*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @mei_hbm_pg_resume(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
