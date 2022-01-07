; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_device_parse_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_device_parse_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.mtd_part_parser_data = type { i32 }
%struct.mtd_partition = type { i32 }

@CONFIG_MTD_PARTITIONED_MASTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"MTD already registered\0A\00", align 1
@mtd_reboot_notifier = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_device_parse_register(%struct.mtd_info* %0, i8** %1, %struct.mtd_part_parser_data* %2, %struct.mtd_partition* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.mtd_part_parser_data*, align 8
  %10 = alloca %struct.mtd_partition*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i8** %1, i8*** %8, align 8
  store %struct.mtd_part_parser_data* %2, %struct.mtd_part_parser_data** %9, align 8
  store %struct.mtd_partition* %3, %struct.mtd_partition** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %14 = call i32 @mtd_set_dev_defaults(%struct.mtd_info* %13)
  %15 = load i32, i32* @CONFIG_MTD_PARTITIONED_MASTER, align 4
  %16 = call i64 @IS_ENABLED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %5
  %19 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %20 = call i32 @add_mtd_device(%struct.mtd_info* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %6, align 4
  br label %104

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %5
  %27 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %28 = load i8**, i8*** %8, align 8
  %29 = load %struct.mtd_part_parser_data*, %struct.mtd_part_parser_data** %9, align 8
  %30 = call i32 @parse_mtd_partitions(%struct.mtd_info* %27, i8** %28, %struct.mtd_part_parser_data* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %12, align 4
  br label %53

34:                                               ; preds = %26
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %39 = load %struct.mtd_partition*, %struct.mtd_partition** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @add_mtd_partitions(%struct.mtd_info* %38, %struct.mtd_partition* %39, i32 %40)
  store i32 %41, i32* %12, align 4
  br label %52

42:                                               ; preds = %34
  %43 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %44 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %43, i32 0, i32 0
  %45 = call i64 @device_is_registered(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %49 = call i32 @add_mtd_device(%struct.mtd_info* %48)
  store i32 %49, i32* %12, align 4
  br label %51

50:                                               ; preds = %42
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %50, %47
  br label %52

52:                                               ; preds = %51, %37
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %91

57:                                               ; preds = %53
  %58 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %59 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %64 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %62, %57
  %69 = phi i1 [ false, %57 ], [ %67, %62 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @WARN_ONCE(i32 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %73 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %68
  %77 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %78 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %76
  %83 = load i64, i64* @mtd_reboot_notifier, align 8
  %84 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %85 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i64 %83, i64* %86, align 8
  %87 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %88 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %87, i32 0, i32 1
  %89 = call i32 @register_reboot_notifier(%struct.TYPE_2__* %88)
  br label %90

90:                                               ; preds = %82, %76, %68
  br label %91

91:                                               ; preds = %90, %56
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %96 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %95, i32 0, i32 0
  %97 = call i64 @device_is_registered(i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %101 = call i32 @del_mtd_device(%struct.mtd_info* %100)
  br label %102

102:                                              ; preds = %99, %94, %91
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %102, %23
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @mtd_set_dev_defaults(%struct.mtd_info*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @add_mtd_device(%struct.mtd_info*) #1

declare dso_local i32 @parse_mtd_partitions(%struct.mtd_info*, i8**, %struct.mtd_part_parser_data*) #1

declare dso_local i32 @add_mtd_partitions(%struct.mtd_info*, %struct.mtd_partition*, i32) #1

declare dso_local i64 @device_is_registered(i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @register_reboot_notifier(%struct.TYPE_2__*) #1

declare dso_local i32 @del_mtd_device(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
