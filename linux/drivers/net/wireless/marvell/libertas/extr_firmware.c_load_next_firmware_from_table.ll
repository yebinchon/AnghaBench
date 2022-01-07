; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_firmware.c_load_next_firmware_from_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_firmware.c_load_next_firmware_from_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, %struct.lbs_fw_table*, i32*, %struct.lbs_fw_table* }
%struct.lbs_fw_table = type { i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@helper_firmware_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*)* @load_next_firmware_from_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_next_firmware_from_table(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.lbs_fw_table*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %4 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %5 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %4, i32 0, i32 1
  %6 = load %struct.lbs_fw_table*, %struct.lbs_fw_table** %5, align 8
  %7 = icmp ne %struct.lbs_fw_table* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %10 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %9, i32 0, i32 3
  %11 = load %struct.lbs_fw_table*, %struct.lbs_fw_table** %10, align 8
  store %struct.lbs_fw_table* %11, %struct.lbs_fw_table** %3, align 8
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %14 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %13, i32 0, i32 1
  %15 = load %struct.lbs_fw_table*, %struct.lbs_fw_table** %14, align 8
  %16 = getelementptr inbounds %struct.lbs_fw_table, %struct.lbs_fw_table* %15, i32 1
  store %struct.lbs_fw_table* %16, %struct.lbs_fw_table** %14, align 8
  store %struct.lbs_fw_table* %16, %struct.lbs_fw_table** %3, align 8
  br label %17

17:                                               ; preds = %12, %8
  %18 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %19 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %24 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @release_firmware(i32* %25)
  %27 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %28 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %22, %17
  br label %30

30:                                               ; preds = %48, %29
  %31 = load %struct.lbs_fw_table*, %struct.lbs_fw_table** %3, align 8
  %32 = getelementptr inbounds %struct.lbs_fw_table, %struct.lbs_fw_table* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i32 @lbs_fw_loaded(%struct.lbs_private* %36, i32 %38, i32* null, i32* null)
  br label %61

40:                                               ; preds = %30
  %41 = load %struct.lbs_fw_table*, %struct.lbs_fw_table** %3, align 8
  %42 = getelementptr inbounds %struct.lbs_fw_table, %struct.lbs_fw_table* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %45 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load %struct.lbs_fw_table*, %struct.lbs_fw_table** %3, align 8
  %50 = getelementptr inbounds %struct.lbs_fw_table, %struct.lbs_fw_table* %49, i32 1
  store %struct.lbs_fw_table* %50, %struct.lbs_fw_table** %3, align 8
  br label %30

51:                                               ; preds = %40
  %52 = load %struct.lbs_fw_table*, %struct.lbs_fw_table** %3, align 8
  %53 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %54 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %53, i32 0, i32 1
  store %struct.lbs_fw_table* %52, %struct.lbs_fw_table** %54, align 8
  %55 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %56 = load %struct.lbs_fw_table*, %struct.lbs_fw_table** %3, align 8
  %57 = getelementptr inbounds %struct.lbs_fw_table, %struct.lbs_fw_table* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @helper_firmware_cb, align 4
  %60 = call i32 @do_load_firmware(%struct.lbs_private* %55, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %51, %35
  ret void
}

declare dso_local i32 @release_firmware(i32*) #1

declare dso_local i32 @lbs_fw_loaded(%struct.lbs_private*, i32, i32*, i32*) #1

declare dso_local i32 @do_load_firmware(%struct.lbs_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
