; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_firmware.c_lbs_get_firmware_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_firmware.c_lbs_get_firmware_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i32*, %struct.lbs_fw_table*, i64, %struct.device* }
%struct.device = type { i32 }
%struct.lbs_fw_table = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"firmware load already in progress\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Starting async firmware load\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_get_firmware_async(%struct.lbs_private* %0, %struct.device* %1, i32 %2, %struct.lbs_fw_table* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lbs_private*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lbs_fw_table*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %7, align 8
  store %struct.device* %1, %struct.device** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.lbs_fw_table* %3, %struct.lbs_fw_table** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %14 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %13, i32 0, i32 0
  %15 = load i64, i64* %12, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %18 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %5
  %22 = call i32 @lbs_deb_fw(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %24 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %23, i32 0, i32 0
  %25 = load i64, i64* %12, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %51

29:                                               ; preds = %5
  %30 = load %struct.device*, %struct.device** %8, align 8
  %31 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %32 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %31, i32 0, i32 5
  store %struct.device* %30, %struct.device** %32, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %35 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %34, i32 0, i32 4
  store i64 %33, i64* %35, align 8
  %36 = load %struct.lbs_fw_table*, %struct.lbs_fw_table** %10, align 8
  %37 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %38 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %37, i32 0, i32 3
  store %struct.lbs_fw_table* %36, %struct.lbs_fw_table** %38, align 8
  %39 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %40 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %43 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %45 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %44, i32 0, i32 0
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = call i32 @lbs_deb_fw(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %50 = call i32 @load_next_firmware_from_table(%struct.lbs_private* %49)
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %29, %21
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lbs_deb_fw(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @load_next_firmware_from_table(%struct.lbs_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
