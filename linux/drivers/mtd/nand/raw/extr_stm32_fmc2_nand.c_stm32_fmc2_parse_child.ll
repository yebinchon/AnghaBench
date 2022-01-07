; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_parse_child.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_parse_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_fmc2_nfc = type { i32, i32, %struct.stm32_fmc2_nand }
%struct.stm32_fmc2_nand = type { i32, i32*, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid reg property size\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"could not retrieve reg property: %d\0A\00", align 1
@FMC2_MAX_CE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"invalid reg value: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"cs already assigned: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_fmc2_nfc*, %struct.device_node*)* @stm32_fmc2_parse_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_fmc2_parse_child(%struct.stm32_fmc2_nfc* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_fmc2_nfc*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.stm32_fmc2_nand*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stm32_fmc2_nfc* %0, %struct.stm32_fmc2_nfc** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %10 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %4, align 8
  %11 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %10, i32 0, i32 2
  store %struct.stm32_fmc2_nand* %11, %struct.stm32_fmc2_nand** %6, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = load %struct.stm32_fmc2_nand*, %struct.stm32_fmc2_nand** %6, align 8
  %14 = getelementptr inbounds %struct.stm32_fmc2_nand, %struct.stm32_fmc2_nand* %13, i32 0, i32 0
  %15 = call i32 @of_get_property(%struct.device_node* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %108

20:                                               ; preds = %2
  %21 = load %struct.stm32_fmc2_nand*, %struct.stm32_fmc2_nand** %6, align 8
  %22 = getelementptr inbounds %struct.stm32_fmc2_nand, %struct.stm32_fmc2_nand* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %22, align 8
  %27 = load %struct.stm32_fmc2_nand*, %struct.stm32_fmc2_nand** %6, align 8
  %28 = getelementptr inbounds %struct.stm32_fmc2_nand, %struct.stm32_fmc2_nand* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %20
  %32 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %4, align 8
  %33 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %108

38:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %100, %38
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.stm32_fmc2_nand*, %struct.stm32_fmc2_nand** %6, align 8
  %42 = getelementptr inbounds %struct.stm32_fmc2_nand, %struct.stm32_fmc2_nand* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %103

45:                                               ; preds = %39
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @of_property_read_u32_index(%struct.device_node* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %47, i32* %7)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %4, align 8
  %53 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %108

58:                                               ; preds = %45
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @FMC2_MAX_CE, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %4, align 8
  %64 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (i32, i8*, ...) @dev_err(i32 %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %108

70:                                               ; preds = %58
  %71 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %4, align 8
  %72 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @BIT(i32 %74)
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %70
  %79 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %4, align 8
  %80 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 (i32, i8*, ...) @dev_err(i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %108

86:                                               ; preds = %70
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @BIT(i32 %87)
  %89 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %4, align 8
  %90 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.stm32_fmc2_nand*, %struct.stm32_fmc2_nand** %6, align 8
  %95 = getelementptr inbounds %struct.stm32_fmc2_nand, %struct.stm32_fmc2_nand* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  br label %100

100:                                              ; preds = %86
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %39

103:                                              ; preds = %39
  %104 = load %struct.stm32_fmc2_nand*, %struct.stm32_fmc2_nand** %6, align 8
  %105 = getelementptr inbounds %struct.stm32_fmc2_nand, %struct.stm32_fmc2_nand* %104, i32 0, i32 2
  %106 = load %struct.device_node*, %struct.device_node** %5, align 8
  %107 = call i32 @nand_set_flash_node(i32* %105, %struct.device_node* %106)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %103, %78, %62, %51, %31, %17
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @nand_set_flash_node(i32*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
