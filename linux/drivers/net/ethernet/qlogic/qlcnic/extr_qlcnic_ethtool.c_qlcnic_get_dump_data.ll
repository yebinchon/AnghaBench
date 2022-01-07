; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_dump_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_dump_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_dump = type { i32, i64 }
%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qlcnic_fw_dump }
%struct.qlcnic_fw_dump = type { i32, i64, i32*, i32, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"FW Dump not supported\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Dump not available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"extracted the FW dump Successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_dump*, i8*)* @qlcnic_get_dump_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_get_dump_data(%struct.net_device* %0, %struct.ethtool_dump* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_dump*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.qlcnic_adapter*, align 8
  %13 = alloca %struct.qlcnic_fw_dump*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_dump* %1, %struct.ethtool_dump** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.qlcnic_adapter* %15, %struct.qlcnic_adapter** %12, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %12, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.qlcnic_fw_dump* %19, %struct.qlcnic_fw_dump** %13, align 8
  %20 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %21 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %3
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call i32 @netdev_err(%struct.net_device* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %101

29:                                               ; preds = %3
  %30 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %31 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = call i32 @netdev_info(%struct.net_device* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %101

39:                                               ; preds = %29
  %40 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %41 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %9, align 4
  %43 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %44 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %10, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = bitcast i8* %47 to i32*
  store i32* %48, i32** %11, align 8
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %63, %39
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = udiv i64 %53, 4
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %10, align 8
  %59 = load i32, i32* %57, align 4
  %60 = call i32 @cpu_to_le32(i32 %59)
  %61 = load i32*, i32** %11, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %11, align 8
  store i32 %60, i32* %61, align 4
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %49

66:                                               ; preds = %49
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr i8, i8* %67, i64 %69
  %71 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %72 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %75 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @memcpy(i8* %70, i32* %73, i64 %76)
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %81 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = load %struct.ethtool_dump*, %struct.ethtool_dump** %6, align 8
  %85 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %87 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ethtool_dump*, %struct.ethtool_dump** %6, align 8
  %90 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %92 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @vfree(i32* %93)
  %95 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %96 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %95, i32 0, i32 2
  store i32* null, i32** %96, align 8
  %97 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %98 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load %struct.net_device*, %struct.net_device** %5, align 8
  %100 = call i32 @netdev_info(%struct.net_device* %99, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %66, %34, %24
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
