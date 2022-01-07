; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_init_erase_cmd_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_init_erase_cmd_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.spi_nor_erase_map }
%struct.spi_nor_erase_map = type { i32 }
%struct.list_head = type { i32 }
%struct.spi_nor_erase_type = type { i32 }
%struct.spi_nor_erase_region = type { i32, i64, i32, i32 }
%struct.spi_nor_erase_command = type { i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNOR_OVERLAID_REGION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, %struct.list_head*, i64, i32)* @spi_nor_init_erase_cmd_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_init_erase_cmd_list(%struct.spi_nor* %0, %struct.list_head* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_nor*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.spi_nor_erase_map*, align 8
  %11 = alloca %struct.spi_nor_erase_type*, align 8
  %12 = alloca %struct.spi_nor_erase_type*, align 8
  %13 = alloca %struct.spi_nor_erase_region*, align 8
  %14 = alloca %struct.spi_nor_erase_command*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %6, align 8
  store %struct.list_head* %1, %struct.list_head** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %18 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.spi_nor_erase_map* %19, %struct.spi_nor_erase_map** %10, align 8
  store %struct.spi_nor_erase_type* null, %struct.spi_nor_erase_type** %12, align 8
  store %struct.spi_nor_erase_command* null, %struct.spi_nor_erase_command** %14, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %16, align 4
  %22 = load %struct.spi_nor_erase_map*, %struct.spi_nor_erase_map** %10, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call %struct.spi_nor_erase_region* @spi_nor_find_erase_region(%struct.spi_nor_erase_map* %22, i64 %23)
  store %struct.spi_nor_erase_region* %24, %struct.spi_nor_erase_region** %13, align 8
  %25 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %13, align 8
  %26 = call i64 @IS_ERR(%struct.spi_nor_erase_region* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %13, align 8
  %30 = call i32 @PTR_ERR(%struct.spi_nor_erase_region* %29)
  store i32 %30, i32* %5, align 4
  br label %115

31:                                               ; preds = %4
  %32 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %13, align 8
  %33 = call i64 @spi_nor_region_end(%struct.spi_nor_erase_region* %32)
  store i64 %33, i64* %15, align 8
  br label %34

34:                                               ; preds = %108, %31
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %110

37:                                               ; preds = %34
  %38 = load %struct.spi_nor_erase_map*, %struct.spi_nor_erase_map** %10, align 8
  %39 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %13, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call %struct.spi_nor_erase_type* @spi_nor_find_best_erase_type(%struct.spi_nor_erase_map* %38, %struct.spi_nor_erase_region* %39, i64 %40, i32 %41)
  store %struct.spi_nor_erase_type* %42, %struct.spi_nor_erase_type** %11, align 8
  %43 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %11, align 8
  %44 = icmp ne %struct.spi_nor_erase_type* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  br label %111

46:                                               ; preds = %37
  %47 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %12, align 8
  %48 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %11, align 8
  %49 = icmp ne %struct.spi_nor_erase_type* %47, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %13, align 8
  %52 = getelementptr inbounds %struct.spi_nor_erase_region, %struct.spi_nor_erase_region* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SNOR_OVERLAID_REGION, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %50, %46
  %58 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %13, align 8
  %59 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %11, align 8
  %60 = call %struct.spi_nor_erase_region* @spi_nor_init_erase_cmd(%struct.spi_nor_erase_region* %58, %struct.spi_nor_erase_type* %59)
  %61 = bitcast %struct.spi_nor_erase_region* %60 to %struct.spi_nor_erase_command*
  store %struct.spi_nor_erase_command* %61, %struct.spi_nor_erase_command** %14, align 8
  %62 = load %struct.spi_nor_erase_command*, %struct.spi_nor_erase_command** %14, align 8
  %63 = bitcast %struct.spi_nor_erase_command* %62 to %struct.spi_nor_erase_region*
  %64 = call i64 @IS_ERR(%struct.spi_nor_erase_region* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load %struct.spi_nor_erase_command*, %struct.spi_nor_erase_command** %14, align 8
  %68 = bitcast %struct.spi_nor_erase_command* %67 to %struct.spi_nor_erase_region*
  %69 = call i32 @PTR_ERR(%struct.spi_nor_erase_region* %68)
  store i32 %69, i32* %16, align 4
  br label %111

70:                                               ; preds = %57
  %71 = load %struct.spi_nor_erase_command*, %struct.spi_nor_erase_command** %14, align 8
  %72 = getelementptr inbounds %struct.spi_nor_erase_command, %struct.spi_nor_erase_command* %71, i32 0, i32 3
  %73 = load %struct.list_head*, %struct.list_head** %7, align 8
  %74 = call i32 @list_add_tail(i32* %72, %struct.list_head* %73)
  br label %80

75:                                               ; preds = %50
  %76 = load %struct.spi_nor_erase_command*, %struct.spi_nor_erase_command** %14, align 8
  %77 = getelementptr inbounds %struct.spi_nor_erase_command, %struct.spi_nor_erase_command* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %75, %70
  %81 = load %struct.spi_nor_erase_command*, %struct.spi_nor_erase_command** %14, align 8
  %82 = getelementptr inbounds %struct.spi_nor_erase_command, %struct.spi_nor_erase_command* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %8, align 8
  %86 = load %struct.spi_nor_erase_command*, %struct.spi_nor_erase_command** %14, align 8
  %87 = getelementptr inbounds %struct.spi_nor_erase_command, %struct.spi_nor_erase_command* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %80
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %15, align 8
  %98 = icmp sge i64 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %13, align 8
  %101 = call %struct.spi_nor_erase_region* @spi_nor_region_next(%struct.spi_nor_erase_region* %100)
  store %struct.spi_nor_erase_region* %101, %struct.spi_nor_erase_region** %13, align 8
  %102 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %13, align 8
  %103 = icmp ne %struct.spi_nor_erase_region* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  br label %111

105:                                              ; preds = %99
  %106 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %13, align 8
  %107 = call i64 @spi_nor_region_end(%struct.spi_nor_erase_region* %106)
  store i64 %107, i64* %15, align 8
  br label %108

108:                                              ; preds = %105, %95, %80
  %109 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %11, align 8
  store %struct.spi_nor_erase_type* %109, %struct.spi_nor_erase_type** %12, align 8
  br label %34

110:                                              ; preds = %34
  store i32 0, i32* %5, align 4
  br label %115

111:                                              ; preds = %104, %66, %45
  %112 = load %struct.list_head*, %struct.list_head** %7, align 8
  %113 = call i32 @spi_nor_destroy_erase_cmd_list(%struct.list_head* %112)
  %114 = load i32, i32* %16, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %111, %110, %28
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local %struct.spi_nor_erase_region* @spi_nor_find_erase_region(%struct.spi_nor_erase_map*, i64) #1

declare dso_local i64 @IS_ERR(%struct.spi_nor_erase_region*) #1

declare dso_local i32 @PTR_ERR(%struct.spi_nor_erase_region*) #1

declare dso_local i64 @spi_nor_region_end(%struct.spi_nor_erase_region*) #1

declare dso_local %struct.spi_nor_erase_type* @spi_nor_find_best_erase_type(%struct.spi_nor_erase_map*, %struct.spi_nor_erase_region*, i64, i32) #1

declare dso_local %struct.spi_nor_erase_region* @spi_nor_init_erase_cmd(%struct.spi_nor_erase_region*, %struct.spi_nor_erase_type*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local %struct.spi_nor_erase_region* @spi_nor_region_next(%struct.spi_nor_erase_region*) #1

declare dso_local i32 @spi_nor_destroy_erase_cmd_list(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
