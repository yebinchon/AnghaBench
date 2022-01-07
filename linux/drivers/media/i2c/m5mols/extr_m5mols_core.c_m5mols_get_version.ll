; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_get_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.m5mols_info = type { %struct.m5mols_version }
%struct.m5mols_version = type { i32, i32, i32, i32, i32, i32, i32, i32* }

@SYSTEM_VER_CUSTOMER = common dso_local global i32 0, align 4
@SYSTEM_VER_PROJECT = common dso_local global i32 0, align 4
@SYSTEM_VER_FIRMWARE = common dso_local global i32 0, align 4
@SYSTEM_VER_HARDWARE = common dso_local global i32 0, align 4
@SYSTEM_VER_PARAMETER = common dso_local global i32 0, align 4
@SYSTEM_VER_AWB = common dso_local global i32 0, align 4
@AF_VERSION = common dso_local global i32 0, align 4
@VERSION_STRING_SIZE = common dso_local global i32 0, align 4
@SYSTEM_VER_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Manufacturer\09[%s]\0A\00", align 1
@REG_SAMSUNG_ELECTRO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Samsung Electro-Mechanics\00", align 1
@REG_SAMSUNG_OPTICS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Samsung Fiber-Optics\00", align 1
@REG_SAMSUNG_TECHWIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Samsung Techwin\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Customer/Project\09[0x%02x/0x%02x]\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"No support Auto Focus on this firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @m5mols_get_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m5mols_get_version(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.m5mols_info*, align 8
  %5 = alloca %struct.m5mols_version*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev* %9)
  store %struct.m5mols_info* %10, %struct.m5mols_info** %4, align 8
  %11 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %12 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %11, i32 0, i32 0
  store %struct.m5mols_version* %12, %struct.m5mols_version** %5, align 8
  %13 = load %struct.m5mols_version*, %struct.m5mols_version** %5, align 8
  %14 = getelementptr inbounds %struct.m5mols_version, %struct.m5mols_version* %13, i32 0, i32 7
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %17 = load i32, i32* @SYSTEM_VER_CUSTOMER, align 4
  %18 = load %struct.m5mols_version*, %struct.m5mols_version** %5, align 8
  %19 = getelementptr inbounds %struct.m5mols_version, %struct.m5mols_version* %18, i32 0, i32 1
  %20 = call i32 @m5mols_read_u8(%struct.v4l2_subdev* %16, i32 %17, i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %25 = load i32, i32* @SYSTEM_VER_PROJECT, align 4
  %26 = load %struct.m5mols_version*, %struct.m5mols_version** %5, align 8
  %27 = getelementptr inbounds %struct.m5mols_version, %struct.m5mols_version* %26, i32 0, i32 0
  %28 = call i32 @m5mols_read_u8(%struct.v4l2_subdev* %24, i32 %25, i32* %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %23, %1
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %34 = load i32, i32* @SYSTEM_VER_FIRMWARE, align 4
  %35 = load %struct.m5mols_version*, %struct.m5mols_version** %5, align 8
  %36 = getelementptr inbounds %struct.m5mols_version, %struct.m5mols_version* %35, i32 0, i32 6
  %37 = call i32 @m5mols_read_u16(%struct.v4l2_subdev* %33, i32 %34, i32* %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %32, %29
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %43 = load i32, i32* @SYSTEM_VER_HARDWARE, align 4
  %44 = load %struct.m5mols_version*, %struct.m5mols_version** %5, align 8
  %45 = getelementptr inbounds %struct.m5mols_version, %struct.m5mols_version* %44, i32 0, i32 5
  %46 = call i32 @m5mols_read_u16(%struct.v4l2_subdev* %42, i32 %43, i32* %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %41, %38
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %52 = load i32, i32* @SYSTEM_VER_PARAMETER, align 4
  %53 = load %struct.m5mols_version*, %struct.m5mols_version** %5, align 8
  %54 = getelementptr inbounds %struct.m5mols_version, %struct.m5mols_version* %53, i32 0, i32 4
  %55 = call i32 @m5mols_read_u16(%struct.v4l2_subdev* %51, i32 %52, i32* %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %61 = load i32, i32* @SYSTEM_VER_AWB, align 4
  %62 = load %struct.m5mols_version*, %struct.m5mols_version** %5, align 8
  %63 = getelementptr inbounds %struct.m5mols_version, %struct.m5mols_version* %62, i32 0, i32 3
  %64 = call i32 @m5mols_read_u16(%struct.v4l2_subdev* %60, i32 %61, i32* %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %59, %56
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %70 = load i32, i32* @AF_VERSION, align 4
  %71 = load %struct.m5mols_version*, %struct.m5mols_version** %5, align 8
  %72 = getelementptr inbounds %struct.m5mols_version, %struct.m5mols_version* %71, i32 0, i32 2
  %73 = call i32 @m5mols_read_u8(%struct.v4l2_subdev* %69, i32 %70, i32* %72)
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %68, %65
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %2, align 4
  br label %143

79:                                               ; preds = %74
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %97, %79
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @VERSION_STRING_SIZE, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %86 = load i32, i32* @SYSTEM_VER_STRING, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = call i32 @m5mols_read_u8(%struct.v4l2_subdev* %85, i32 %86, i32* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %2, align 4
  br label %143

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %80

100:                                              ; preds = %80
  %101 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %102 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %103 = load i32, i32* @REG_SAMSUNG_ELECTRO, align 4
  %104 = call i64 @is_manufacturer(%struct.m5mols_info* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %122

107:                                              ; preds = %100
  %108 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %109 = load i32, i32* @REG_SAMSUNG_OPTICS, align 4
  %110 = call i64 @is_manufacturer(%struct.m5mols_info* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %120

113:                                              ; preds = %107
  %114 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %115 = load i32, i32* @REG_SAMSUNG_TECHWIN, align 4
  %116 = call i64 @is_manufacturer(%struct.m5mols_info* %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  br label %120

120:                                              ; preds = %113, %112
  %121 = phi i8* [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %112 ], [ %119, %113 ]
  br label %122

122:                                              ; preds = %120, %106
  %123 = phi i8* [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %106 ], [ %121, %120 ]
  %124 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %123)
  %125 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %126 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %127 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.m5mols_version, %struct.m5mols_version* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %131 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.m5mols_version, %struct.m5mols_version* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %125, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %129, i32 %133)
  %135 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %136 = call i32 @is_available_af(%struct.m5mols_info* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %122
  %139 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %140 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %139, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %141

141:                                              ; preds = %138, %122
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %141, %94, %77
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev*) #1

declare dso_local i32 @m5mols_read_u8(%struct.v4l2_subdev*, i32, i32*) #1

declare dso_local i32 @m5mols_read_u16(%struct.v4l2_subdev*, i32, i32*) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i64 @is_manufacturer(%struct.m5mols_info*, i32) #1

declare dso_local i32 @is_available_af(%struct.m5mols_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
