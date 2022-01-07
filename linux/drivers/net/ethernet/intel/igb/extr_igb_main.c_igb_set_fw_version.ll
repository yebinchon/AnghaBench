; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_set_fw_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_set_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_fw_version = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%2d.%2d-%d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%d.%d, 0x%08x, %d.%d.%d\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%d.%d, 0x%08x\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_set_fw_version(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_fw_version, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %5 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %5, i32 0, i32 1
  store %struct.e1000_hw* %6, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = call i32 @igb_get_fw_version(%struct.e1000_hw* %7, %struct.e1000_fw_version* %4)
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %29 [
    i32 129, label %13
    i32 128, label %13
  ]

13:                                               ; preds = %1, %1
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = call i32 @igb_get_flash_presence_i210(%struct.e1000_hw* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %4, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i32, i8*, i32, i32, i32, ...) @snprintf(i32 %20, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24, i32 %26)
  br label %78

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %1, %28
  %30 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %4, i32 0, i32 10
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %4, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %4, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %4, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %4, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %4, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %4, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i32, i8*, i32, i32, i32, ...) @snprintf(i32 %36, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %40, i32 %42, i32 %44, i32 %46, i32 %48)
  br label %77

50:                                               ; preds = %29
  %51 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %4, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %4, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %4, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %4, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i32, i8*, i32, i32, i32, ...) @snprintf(i32 %57, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %61, i32 %63)
  br label %76

65:                                               ; preds = %50
  %66 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %4, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %4, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %4, i32 0, i32 9
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i32, i8*, i32, i32, i32, ...) @snprintf(i32 %68, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %65, %54
  br label %77

77:                                               ; preds = %76, %33
  br label %78

78:                                               ; preds = %77, %17
  ret void
}

declare dso_local i32 @igb_get_fw_version(%struct.e1000_hw*, %struct.e1000_fw_version*) #1

declare dso_local i32 @igb_get_flash_presence_i210(%struct.e1000_hw*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
