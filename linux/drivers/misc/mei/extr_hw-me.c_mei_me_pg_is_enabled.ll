; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_pg_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_pg_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mei_me_hw = type { i64 }

@ME_PGIC_HRA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"pg: not supported: d0i3 = %d HGP = %d hbm version %d.%d ?= %d.%d\0A\00", align 1
@HBM_MAJOR_VERSION_PGI = common dso_local global i32 0, align 4
@HBM_MINOR_VERSION_PGI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*)* @mei_me_pg_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_me_pg_is_enabled(%struct.mei_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca %struct.mei_me_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  %6 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %7 = call %struct.mei_me_hw* @to_me_hw(%struct.mei_device* %6)
  store %struct.mei_me_hw* %7, %struct.mei_me_hw** %4, align 8
  %8 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %9 = call i32 @mei_me_mecsr_read(%struct.mei_device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.mei_me_hw*, %struct.mei_me_hw** %4, align 8
  %11 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %53

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ME_PGIC_HRA, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %28

21:                                               ; preds = %15
  %22 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %23 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %28

27:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %53

28:                                               ; preds = %26, %20
  %29 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %30 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mei_me_hw*, %struct.mei_me_hw** %4, align 8
  %33 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @ME_PGIC_HRA, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %43 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %47 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @HBM_MAJOR_VERSION_PGI, align 4
  %51 = load i32, i32* @HBM_MINOR_VERSION_PGI, align 4
  %52 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %41, i32 %45, i32 %49, i32 %50, i32 %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %28, %27, %14
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.mei_me_hw* @to_me_hw(%struct.mei_device*) #1

declare dso_local i32 @mei_me_mecsr_read(%struct.mei_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
