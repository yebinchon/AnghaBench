; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_mii-bitbang.c_fs_mii_bitbang_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_mii-bitbang.c_fs_mii_bitbang_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32, %struct.bb_info* }
%struct.bb_info = type { i32, i32, i64, i64 }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"fsl,mdio-pin\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"fsl,mdc-pin\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, %struct.device_node*)* @fs_mii_bitbang_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_mii_bitbang_init(%struct.mii_bus* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.resource, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bb_info*, align 8
  %12 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %13 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %14 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %13, i32 0, i32 1
  %15 = load %struct.bb_info*, %struct.bb_info** %14, align 8
  store %struct.bb_info* %15, %struct.bb_info** %11, align 8
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = call i32 @of_address_to_resource(%struct.device_node* %16, i32 0, %struct.resource* %6)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %3, align 4
  br label %92

22:                                               ; preds = %2
  %23 = call i32 @resource_size(%struct.resource* %6)
  %24 = icmp sle i32 %23, 13
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %92

28:                                               ; preds = %22
  %29 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %30 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snprintf(i32 %31, i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.device_node*, %struct.device_node** %5, align 8
  %37 = call i32* @of_get_property(%struct.device_node* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 4
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %28
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %92

46:                                               ; preds = %40
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %8, align 4
  %49 = load %struct.device_node*, %struct.device_node** %5, align 8
  %50 = call i32* @of_get_property(%struct.device_node* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %10)
  store i32* %50, i32** %7, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 4
  br i1 %55, label %56, label %59

56:                                               ; preds = %53, %46
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %92

59:                                               ; preds = %53
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %9, align 4
  %62 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @resource_size(%struct.resource* %6)
  %65 = call i64 @ioremap(i32 %63, i32 %64)
  %66 = load %struct.bb_info*, %struct.bb_info** %11, align 8
  %67 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  %68 = load %struct.bb_info*, %struct.bb_info** %11, align 8
  %69 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %59
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %92

75:                                               ; preds = %59
  %76 = load %struct.bb_info*, %struct.bb_info** %11, align 8
  %77 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 4
  %80 = load %struct.bb_info*, %struct.bb_info** %11, align 8
  %81 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %80, i32 0, i32 3
  store i64 %79, i64* %81, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 31, %82
  %84 = shl i32 1, %83
  %85 = load %struct.bb_info*, %struct.bb_info** %11, align 8
  %86 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sub nsw i32 31, %87
  %89 = shl i32 1, %88
  %90 = load %struct.bb_info*, %struct.bb_info** %11, align 8
  %91 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %75, %72, %56, %43, %25, %20
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @ioremap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
