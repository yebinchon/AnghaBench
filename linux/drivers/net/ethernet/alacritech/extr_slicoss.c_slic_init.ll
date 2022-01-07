; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"failed to load firmware\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to init shared memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to read eeprom\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slic_device*)* @slic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slic_init(%struct.slic_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slic_device*, align 8
  %4 = alloca i32, align 4
  store %struct.slic_device* %0, %struct.slic_device** %3, align 8
  %5 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %6 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %5, i32 0, i32 4
  %7 = call i32 @spin_lock_init(i32* %6)
  %8 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %9 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %8, i32 0, i32 3
  %10 = call i32 @spin_lock_init(i32* %9)
  %11 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %12 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %16 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %20 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @u64_stats_init(i32* %21)
  %23 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %24 = call i32 @slic_card_reset(%struct.slic_device* %23)
  %25 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %26 = call i32 @slic_load_firmware(%struct.slic_device* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %31 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %68

36:                                               ; preds = %1
  %37 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %38 = call i32 @slic_init_shmem(%struct.slic_device* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %43 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %68

48:                                               ; preds = %36
  %49 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %50 = call i32 @slic_read_eeprom(%struct.slic_device* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %55 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %64

59:                                               ; preds = %48
  %60 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %61 = call i32 @slic_card_reset(%struct.slic_device* %60)
  %62 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %63 = call i32 @slic_free_shmem(%struct.slic_device* %62)
  store i32 0, i32* %2, align 4
  br label %68

64:                                               ; preds = %53
  %65 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %66 = call i32 @slic_free_shmem(%struct.slic_device* %65)
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %59, %41, %29
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @u64_stats_init(i32*) #1

declare dso_local i32 @slic_card_reset(%struct.slic_device*) #1

declare dso_local i32 @slic_load_firmware(%struct.slic_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @slic_init_shmem(%struct.slic_device*) #1

declare dso_local i32 @slic_read_eeprom(%struct.slic_device*) #1

declare dso_local i32 @slic_free_shmem(%struct.slic_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
