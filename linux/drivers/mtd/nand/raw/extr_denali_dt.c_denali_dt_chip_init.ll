; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali_dt.c_denali_dt_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali_dt.c_denali_dt_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denali_controller = type { i32 }
%struct.device_node = type { i32 }
%struct.denali_chip = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@sels = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.denali_controller*, %struct.device_node*)* @denali_dt_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @denali_dt_chip_init(%struct.denali_controller* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.denali_controller*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.denali_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.denali_controller* %0, %struct.denali_controller** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %11 = load %struct.device_node*, %struct.device_node** %5, align 8
  %12 = call i32 @of_property_count_u32_elems(%struct.device_node* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %68

17:                                               ; preds = %2
  %18 = load %struct.denali_controller*, %struct.denali_controller** %4, align 8
  %19 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.denali_chip*, %struct.denali_chip** %6, align 8
  %22 = load i32, i32* @sels, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @struct_size(%struct.denali_chip* %21, i32 %22, i32 %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.denali_chip* @devm_kzalloc(i32 %20, i32 %24, i32 %25)
  store %struct.denali_chip* %26, %struct.denali_chip** %6, align 8
  %27 = load %struct.denali_chip*, %struct.denali_chip** %6, align 8
  %28 = icmp ne %struct.denali_chip* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %17
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %68

32:                                               ; preds = %17
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.denali_chip*, %struct.denali_chip** %6, align 8
  %35 = getelementptr inbounds %struct.denali_chip, %struct.denali_chip* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %61, %32
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %36
  %41 = load %struct.device_node*, %struct.device_node** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @of_property_read_u32_index(%struct.device_node* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %42, i32* %7)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  br label %68

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.denali_chip*, %struct.denali_chip** %6, align 8
  %51 = getelementptr inbounds %struct.denali_chip, %struct.denali_chip* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %49, i32* %56, align 4
  %57 = load %struct.denali_chip*, %struct.denali_chip** %6, align 8
  %58 = getelementptr inbounds %struct.denali_chip, %struct.denali_chip* %57, i32 0, i32 1
  %59 = load %struct.device_node*, %struct.device_node** %5, align 8
  %60 = call i32 @nand_set_flash_node(i32* %58, %struct.device_node* %59)
  br label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %36

64:                                               ; preds = %36
  %65 = load %struct.denali_controller*, %struct.denali_controller** %4, align 8
  %66 = load %struct.denali_chip*, %struct.denali_chip** %6, align 8
  %67 = call i32 @denali_chip_init(%struct.denali_controller* %65, %struct.denali_chip* %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %46, %29, %15
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @of_property_count_u32_elems(%struct.device_node*, i8*) #1

declare dso_local %struct.denali_chip* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @struct_size(%struct.denali_chip*, i32, i32) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @nand_set_flash_node(i32*, %struct.device_node*) #1

declare dso_local i32 @denali_chip_init(%struct.denali_controller*, %struct.denali_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
