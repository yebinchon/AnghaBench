; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_nand_cfg_slc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"nxp,wdr-clks\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"nxp,wwidth\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"nxp,whold\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"nxp,wsetup\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"nxp,rdr-clks\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"nxp,rwidth\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"nxp,rhold\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"nxp,rsetup\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"chip parameters not specified correctly\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"gpios\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpc32xx_nand_cfg_slc* (%struct.device*)* @lpc32xx_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpc32xx_nand_cfg_slc* @lpc32xx_parse_dt(%struct.device* %0) #0 {
  %2 = alloca %struct.lpc32xx_nand_cfg_slc*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.lpc32xx_nand_cfg_slc*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load %struct.device_node*, %struct.device_node** %7, align 8
  store %struct.device_node* %8, %struct.device_node** %5, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.lpc32xx_nand_cfg_slc* @devm_kzalloc(%struct.device* %9, i32 36, i32 %10)
  store %struct.lpc32xx_nand_cfg_slc* %11, %struct.lpc32xx_nand_cfg_slc** %4, align 8
  %12 = load %struct.lpc32xx_nand_cfg_slc*, %struct.lpc32xx_nand_cfg_slc** %4, align 8
  %13 = icmp ne %struct.lpc32xx_nand_cfg_slc* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.lpc32xx_nand_cfg_slc* null, %struct.lpc32xx_nand_cfg_slc** %2, align 8
  br label %96

15:                                               ; preds = %1
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = load %struct.lpc32xx_nand_cfg_slc*, %struct.lpc32xx_nand_cfg_slc** %4, align 8
  %18 = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, %struct.lpc32xx_nand_cfg_slc* %17, i32 0, i32 8
  %19 = call i32 @of_property_read_u32(%struct.device_node* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %18)
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = load %struct.lpc32xx_nand_cfg_slc*, %struct.lpc32xx_nand_cfg_slc** %4, align 8
  %22 = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, %struct.lpc32xx_nand_cfg_slc* %21, i32 0, i32 7
  %23 = call i32 @of_property_read_u32(%struct.device_node* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %22)
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = load %struct.lpc32xx_nand_cfg_slc*, %struct.lpc32xx_nand_cfg_slc** %4, align 8
  %26 = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, %struct.lpc32xx_nand_cfg_slc* %25, i32 0, i32 6
  %27 = call i32 @of_property_read_u32(%struct.device_node* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %26)
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = load %struct.lpc32xx_nand_cfg_slc*, %struct.lpc32xx_nand_cfg_slc** %4, align 8
  %30 = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, %struct.lpc32xx_nand_cfg_slc* %29, i32 0, i32 5
  %31 = call i32 @of_property_read_u32(%struct.device_node* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %30)
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = load %struct.lpc32xx_nand_cfg_slc*, %struct.lpc32xx_nand_cfg_slc** %4, align 8
  %34 = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, %struct.lpc32xx_nand_cfg_slc* %33, i32 0, i32 4
  %35 = call i32 @of_property_read_u32(%struct.device_node* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %34)
  %36 = load %struct.device_node*, %struct.device_node** %5, align 8
  %37 = load %struct.lpc32xx_nand_cfg_slc*, %struct.lpc32xx_nand_cfg_slc** %4, align 8
  %38 = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, %struct.lpc32xx_nand_cfg_slc* %37, i32 0, i32 3
  %39 = call i32 @of_property_read_u32(%struct.device_node* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* %38)
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = load %struct.lpc32xx_nand_cfg_slc*, %struct.lpc32xx_nand_cfg_slc** %4, align 8
  %42 = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, %struct.lpc32xx_nand_cfg_slc* %41, i32 0, i32 2
  %43 = call i32 @of_property_read_u32(%struct.device_node* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* %42)
  %44 = load %struct.device_node*, %struct.device_node** %5, align 8
  %45 = load %struct.lpc32xx_nand_cfg_slc*, %struct.lpc32xx_nand_cfg_slc** %4, align 8
  %46 = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, %struct.lpc32xx_nand_cfg_slc* %45, i32 0, i32 1
  %47 = call i32 @of_property_read_u32(%struct.device_node* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32* %46)
  %48 = load %struct.lpc32xx_nand_cfg_slc*, %struct.lpc32xx_nand_cfg_slc** %4, align 8
  %49 = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, %struct.lpc32xx_nand_cfg_slc* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %15
  %53 = load %struct.lpc32xx_nand_cfg_slc*, %struct.lpc32xx_nand_cfg_slc** %4, align 8
  %54 = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, %struct.lpc32xx_nand_cfg_slc* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %52
  %58 = load %struct.lpc32xx_nand_cfg_slc*, %struct.lpc32xx_nand_cfg_slc** %4, align 8
  %59 = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, %struct.lpc32xx_nand_cfg_slc* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %57
  %63 = load %struct.lpc32xx_nand_cfg_slc*, %struct.lpc32xx_nand_cfg_slc** %4, align 8
  %64 = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, %struct.lpc32xx_nand_cfg_slc* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %62
  %68 = load %struct.lpc32xx_nand_cfg_slc*, %struct.lpc32xx_nand_cfg_slc** %4, align 8
  %69 = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, %struct.lpc32xx_nand_cfg_slc* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %67
  %73 = load %struct.lpc32xx_nand_cfg_slc*, %struct.lpc32xx_nand_cfg_slc** %4, align 8
  %74 = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, %struct.lpc32xx_nand_cfg_slc* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load %struct.lpc32xx_nand_cfg_slc*, %struct.lpc32xx_nand_cfg_slc** %4, align 8
  %79 = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, %struct.lpc32xx_nand_cfg_slc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.lpc32xx_nand_cfg_slc*, %struct.lpc32xx_nand_cfg_slc** %4, align 8
  %84 = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, %struct.lpc32xx_nand_cfg_slc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82, %77, %72, %67, %62, %57, %52, %15
  %88 = load %struct.device*, %struct.device** %3, align 8
  %89 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  store %struct.lpc32xx_nand_cfg_slc* null, %struct.lpc32xx_nand_cfg_slc** %2, align 8
  br label %96

90:                                               ; preds = %82
  %91 = load %struct.device_node*, %struct.device_node** %5, align 8
  %92 = call i32 @of_get_named_gpio(%struct.device_node* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %93 = load %struct.lpc32xx_nand_cfg_slc*, %struct.lpc32xx_nand_cfg_slc** %4, align 8
  %94 = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, %struct.lpc32xx_nand_cfg_slc* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.lpc32xx_nand_cfg_slc*, %struct.lpc32xx_nand_cfg_slc** %4, align 8
  store %struct.lpc32xx_nand_cfg_slc* %95, %struct.lpc32xx_nand_cfg_slc** %2, align 8
  br label %96

96:                                               ; preds = %90, %87, %14
  %97 = load %struct.lpc32xx_nand_cfg_slc*, %struct.lpc32xx_nand_cfg_slc** %2, align 8
  ret %struct.lpc32xx_nand_cfg_slc* %97
}

declare dso_local %struct.lpc32xx_nand_cfg_slc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
