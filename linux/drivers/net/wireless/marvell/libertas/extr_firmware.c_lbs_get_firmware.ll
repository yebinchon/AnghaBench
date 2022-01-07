; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_firmware.c_lbs_get_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_firmware.c_lbs_get_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lbs_fw_table = type { i64, i32*, i32* }
%struct.firmware = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_get_firmware(%struct.device* %0, i64 %1, %struct.lbs_fw_table* %2, %struct.firmware** %3, %struct.firmware** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.lbs_fw_table*, align 8
  %10 = alloca %struct.firmware**, align 8
  %11 = alloca %struct.firmware**, align 8
  %12 = alloca %struct.lbs_fw_table*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.lbs_fw_table* %2, %struct.lbs_fw_table** %9, align 8
  store %struct.firmware** %3, %struct.firmware*** %10, align 8
  store %struct.firmware** %4, %struct.firmware*** %11, align 8
  %14 = load %struct.firmware**, %struct.firmware*** %10, align 8
  %15 = icmp eq %struct.firmware** %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.firmware**, %struct.firmware*** %11, align 8
  %19 = icmp eq %struct.firmware** %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.lbs_fw_table*, %struct.lbs_fw_table** %9, align 8
  store %struct.lbs_fw_table* %22, %struct.lbs_fw_table** %12, align 8
  br label %23

23:                                               ; preds = %90, %5
  %24 = load %struct.lbs_fw_table*, %struct.lbs_fw_table** %12, align 8
  %25 = icmp ne %struct.lbs_fw_table* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.lbs_fw_table*, %struct.lbs_fw_table** %12, align 8
  %28 = getelementptr inbounds %struct.lbs_fw_table, %struct.lbs_fw_table* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br label %31

31:                                               ; preds = %26, %23
  %32 = phi i1 [ false, %23 ], [ %30, %26 ]
  br i1 %32, label %33, label %93

33:                                               ; preds = %31
  %34 = load %struct.lbs_fw_table*, %struct.lbs_fw_table** %12, align 8
  %35 = getelementptr inbounds %struct.lbs_fw_table, %struct.lbs_fw_table* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %90

40:                                               ; preds = %33
  %41 = load %struct.firmware**, %struct.firmware*** %10, align 8
  %42 = load %struct.firmware*, %struct.firmware** %41, align 8
  %43 = icmp eq %struct.firmware* %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load %struct.firmware**, %struct.firmware*** %10, align 8
  %46 = load %struct.lbs_fw_table*, %struct.lbs_fw_table** %12, align 8
  %47 = getelementptr inbounds %struct.lbs_fw_table, %struct.lbs_fw_table* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = call i32 @request_firmware(%struct.firmware** %45, i32* %48, %struct.device* %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %90

54:                                               ; preds = %44
  %55 = load %struct.lbs_fw_table*, %struct.lbs_fw_table** %12, align 8
  %56 = getelementptr inbounds %struct.lbs_fw_table, %struct.lbs_fw_table* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %104

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %40
  %62 = load %struct.firmware**, %struct.firmware*** %11, align 8
  %63 = load %struct.firmware*, %struct.firmware** %62, align 8
  %64 = icmp eq %struct.firmware* %63, null
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load %struct.firmware**, %struct.firmware*** %11, align 8
  %67 = load %struct.lbs_fw_table*, %struct.lbs_fw_table** %12, align 8
  %68 = getelementptr inbounds %struct.lbs_fw_table, %struct.lbs_fw_table* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.device*, %struct.device** %7, align 8
  %71 = call i32 @request_firmware(%struct.firmware** %66, i32* %69, %struct.device* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %65
  %75 = load %struct.firmware**, %struct.firmware*** %10, align 8
  %76 = load %struct.firmware*, %struct.firmware** %75, align 8
  %77 = call i32 @release_firmware(%struct.firmware* %76)
  %78 = load %struct.firmware**, %struct.firmware*** %10, align 8
  store %struct.firmware* null, %struct.firmware** %78, align 8
  br label %79

79:                                               ; preds = %74, %65
  br label %80

80:                                               ; preds = %79, %61
  %81 = load %struct.firmware**, %struct.firmware*** %10, align 8
  %82 = load %struct.firmware*, %struct.firmware** %81, align 8
  %83 = icmp ne %struct.firmware* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load %struct.firmware**, %struct.firmware*** %11, align 8
  %86 = load %struct.firmware*, %struct.firmware** %85, align 8
  %87 = icmp ne %struct.firmware* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 0, i32* %6, align 4
  br label %104

89:                                               ; preds = %84, %80
  br label %90

90:                                               ; preds = %89, %53, %39
  %91 = load %struct.lbs_fw_table*, %struct.lbs_fw_table** %12, align 8
  %92 = getelementptr inbounds %struct.lbs_fw_table, %struct.lbs_fw_table* %91, i32 1
  store %struct.lbs_fw_table* %92, %struct.lbs_fw_table** %12, align 8
  br label %23

93:                                               ; preds = %31
  %94 = load %struct.firmware**, %struct.firmware*** %10, align 8
  %95 = load %struct.firmware*, %struct.firmware** %94, align 8
  %96 = call i32 @release_firmware(%struct.firmware* %95)
  %97 = load %struct.firmware**, %struct.firmware*** %10, align 8
  store %struct.firmware* null, %struct.firmware** %97, align 8
  %98 = load %struct.firmware**, %struct.firmware*** %11, align 8
  %99 = load %struct.firmware*, %struct.firmware** %98, align 8
  %100 = call i32 @release_firmware(%struct.firmware* %99)
  %101 = load %struct.firmware**, %struct.firmware*** %11, align 8
  store %struct.firmware* null, %struct.firmware** %101, align 8
  %102 = load i32, i32* @ENOENT, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %93, %88, %59
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32*, %struct.device*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
