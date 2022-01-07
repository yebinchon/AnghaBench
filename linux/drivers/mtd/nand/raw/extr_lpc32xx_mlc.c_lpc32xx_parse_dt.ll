; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_mlc.c_lpc32xx_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_mlc.c_lpc32xx_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_nand_cfg_mlc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"nxp,tcea-delay\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"nxp,busy-delay\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"nxp,nand-ta\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"nxp,rd-high\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"nxp,rd-low\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"nxp,wr-high\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"nxp,wr-low\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"chip parameters not specified correctly\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"gpios\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpc32xx_nand_cfg_mlc* (%struct.device*)* @lpc32xx_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpc32xx_nand_cfg_mlc* @lpc32xx_parse_dt(%struct.device* %0) #0 {
  %2 = alloca %struct.lpc32xx_nand_cfg_mlc*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.lpc32xx_nand_cfg_mlc*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load %struct.device_node*, %struct.device_node** %7, align 8
  store %struct.device_node* %8, %struct.device_node** %5, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.lpc32xx_nand_cfg_mlc* @devm_kzalloc(%struct.device* %9, i32 32, i32 %10)
  store %struct.lpc32xx_nand_cfg_mlc* %11, %struct.lpc32xx_nand_cfg_mlc** %4, align 8
  %12 = load %struct.lpc32xx_nand_cfg_mlc*, %struct.lpc32xx_nand_cfg_mlc** %4, align 8
  %13 = icmp ne %struct.lpc32xx_nand_cfg_mlc* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.lpc32xx_nand_cfg_mlc* null, %struct.lpc32xx_nand_cfg_mlc** %2, align 8
  br label %87

15:                                               ; preds = %1
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = load %struct.lpc32xx_nand_cfg_mlc*, %struct.lpc32xx_nand_cfg_mlc** %4, align 8
  %18 = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, %struct.lpc32xx_nand_cfg_mlc* %17, i32 0, i32 7
  %19 = call i32 @of_property_read_u32(%struct.device_node* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %18)
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = load %struct.lpc32xx_nand_cfg_mlc*, %struct.lpc32xx_nand_cfg_mlc** %4, align 8
  %22 = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, %struct.lpc32xx_nand_cfg_mlc* %21, i32 0, i32 6
  %23 = call i32 @of_property_read_u32(%struct.device_node* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %22)
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = load %struct.lpc32xx_nand_cfg_mlc*, %struct.lpc32xx_nand_cfg_mlc** %4, align 8
  %26 = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, %struct.lpc32xx_nand_cfg_mlc* %25, i32 0, i32 5
  %27 = call i32 @of_property_read_u32(%struct.device_node* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %26)
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = load %struct.lpc32xx_nand_cfg_mlc*, %struct.lpc32xx_nand_cfg_mlc** %4, align 8
  %30 = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, %struct.lpc32xx_nand_cfg_mlc* %29, i32 0, i32 4
  %31 = call i32 @of_property_read_u32(%struct.device_node* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %30)
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = load %struct.lpc32xx_nand_cfg_mlc*, %struct.lpc32xx_nand_cfg_mlc** %4, align 8
  %34 = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, %struct.lpc32xx_nand_cfg_mlc* %33, i32 0, i32 3
  %35 = call i32 @of_property_read_u32(%struct.device_node* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %34)
  %36 = load %struct.device_node*, %struct.device_node** %5, align 8
  %37 = load %struct.lpc32xx_nand_cfg_mlc*, %struct.lpc32xx_nand_cfg_mlc** %4, align 8
  %38 = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, %struct.lpc32xx_nand_cfg_mlc* %37, i32 0, i32 2
  %39 = call i32 @of_property_read_u32(%struct.device_node* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* %38)
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = load %struct.lpc32xx_nand_cfg_mlc*, %struct.lpc32xx_nand_cfg_mlc** %4, align 8
  %42 = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, %struct.lpc32xx_nand_cfg_mlc* %41, i32 0, i32 1
  %43 = call i32 @of_property_read_u32(%struct.device_node* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %42)
  %44 = load %struct.lpc32xx_nand_cfg_mlc*, %struct.lpc32xx_nand_cfg_mlc** %4, align 8
  %45 = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, %struct.lpc32xx_nand_cfg_mlc* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %15
  %49 = load %struct.lpc32xx_nand_cfg_mlc*, %struct.lpc32xx_nand_cfg_mlc** %4, align 8
  %50 = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, %struct.lpc32xx_nand_cfg_mlc* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %48
  %54 = load %struct.lpc32xx_nand_cfg_mlc*, %struct.lpc32xx_nand_cfg_mlc** %4, align 8
  %55 = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, %struct.lpc32xx_nand_cfg_mlc* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %53
  %59 = load %struct.lpc32xx_nand_cfg_mlc*, %struct.lpc32xx_nand_cfg_mlc** %4, align 8
  %60 = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, %struct.lpc32xx_nand_cfg_mlc* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load %struct.lpc32xx_nand_cfg_mlc*, %struct.lpc32xx_nand_cfg_mlc** %4, align 8
  %65 = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, %struct.lpc32xx_nand_cfg_mlc* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.lpc32xx_nand_cfg_mlc*, %struct.lpc32xx_nand_cfg_mlc** %4, align 8
  %70 = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, %struct.lpc32xx_nand_cfg_mlc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.lpc32xx_nand_cfg_mlc*, %struct.lpc32xx_nand_cfg_mlc** %4, align 8
  %75 = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, %struct.lpc32xx_nand_cfg_mlc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %73, %68, %63, %58, %53, %48, %15
  %79 = load %struct.device*, %struct.device** %3, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  store %struct.lpc32xx_nand_cfg_mlc* null, %struct.lpc32xx_nand_cfg_mlc** %2, align 8
  br label %87

81:                                               ; preds = %73
  %82 = load %struct.device_node*, %struct.device_node** %5, align 8
  %83 = call i32 @of_get_named_gpio(%struct.device_node* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %84 = load %struct.lpc32xx_nand_cfg_mlc*, %struct.lpc32xx_nand_cfg_mlc** %4, align 8
  %85 = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, %struct.lpc32xx_nand_cfg_mlc* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.lpc32xx_nand_cfg_mlc*, %struct.lpc32xx_nand_cfg_mlc** %4, align 8
  store %struct.lpc32xx_nand_cfg_mlc* %86, %struct.lpc32xx_nand_cfg_mlc** %2, align 8
  br label %87

87:                                               ; preds = %81, %78, %14
  %88 = load %struct.lpc32xx_nand_cfg_mlc*, %struct.lpc32xx_nand_cfg_mlc** %2, align 8
  ret %struct.lpc32xx_nand_cfg_mlc* %88
}

declare dso_local %struct.lpc32xx_nand_cfg_mlc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
