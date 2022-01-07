; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_ethtool.c_netxen_get_dump_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_ethtool.c_netxen_get_dump_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_dump = type { i32, i64 }
%struct.netxen_adapter = type { i64, %struct.netxen_minidump }
%struct.netxen_minidump = type { i32, i32*, i32, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"Dump not available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"extracted the fw dump Successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_dump*, i8*)* @netxen_get_dump_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_get_dump_data(%struct.net_device* %0, %struct.ethtool_dump* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_dump*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.netxen_adapter*, align 8
  %13 = alloca %struct.netxen_minidump*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_dump* %1, %struct.ethtool_dump** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.netxen_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.netxen_adapter* %15, %struct.netxen_adapter** %12, align 8
  %16 = load %struct.netxen_adapter*, %struct.netxen_adapter** %12, align 8
  %17 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %16, i32 0, i32 1
  store %struct.netxen_minidump* %17, %struct.netxen_minidump** %13, align 8
  %18 = load %struct.netxen_adapter*, %struct.netxen_adapter** %12, align 8
  %19 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call i32 @netdev_info(%struct.net_device* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %94

27:                                               ; preds = %3
  %28 = load %struct.netxen_minidump*, %struct.netxen_minidump** %13, align 8
  %29 = getelementptr inbounds %struct.netxen_minidump, %struct.netxen_minidump* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  %31 = load %struct.netxen_minidump*, %struct.netxen_minidump** %13, align 8
  %32 = getelementptr inbounds %struct.netxen_minidump, %struct.netxen_minidump* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %10, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** %11, align 8
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %51, %27
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %41, 4
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load i32*, i32** %10, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %10, align 8
  %47 = load i32, i32* %45, align 4
  %48 = call i32 @cpu_to_le32(i32 %47)
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %11, align 8
  store i32 %48, i32* %49, align 4
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %37

54:                                               ; preds = %37
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr i8, i8* %55, i64 %57
  %59 = load %struct.netxen_minidump*, %struct.netxen_minidump** %13, align 8
  %60 = getelementptr inbounds %struct.netxen_minidump, %struct.netxen_minidump* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.netxen_minidump*, %struct.netxen_minidump** %13, align 8
  %63 = getelementptr inbounds %struct.netxen_minidump, %struct.netxen_minidump* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load %struct.netxen_minidump*, %struct.netxen_minidump** %13, align 8
  %68 = getelementptr inbounds %struct.netxen_minidump, %struct.netxen_minidump* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @memcpy(i8* %58, i32* %66, i64 %69)
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.netxen_minidump*, %struct.netxen_minidump** %13, align 8
  %74 = getelementptr inbounds %struct.netxen_minidump, %struct.netxen_minidump* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load %struct.ethtool_dump*, %struct.ethtool_dump** %6, align 8
  %78 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.netxen_minidump*, %struct.netxen_minidump** %13, align 8
  %80 = getelementptr inbounds %struct.netxen_minidump, %struct.netxen_minidump* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ethtool_dump*, %struct.ethtool_dump** %6, align 8
  %83 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.netxen_minidump*, %struct.netxen_minidump** %13, align 8
  %85 = getelementptr inbounds %struct.netxen_minidump, %struct.netxen_minidump* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @vfree(i32* %86)
  %88 = load %struct.netxen_minidump*, %struct.netxen_minidump** %13, align 8
  %89 = getelementptr inbounds %struct.netxen_minidump, %struct.netxen_minidump* %88, i32 0, i32 1
  store i32* null, i32** %89, align 8
  %90 = load %struct.netxen_adapter*, %struct.netxen_adapter** %12, align 8
  %91 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.net_device*, %struct.net_device** %5, align 8
  %93 = call i32 @netdev_info(%struct.net_device* %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %54, %22
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.netxen_adapter* @netdev_priv(%struct.net_device*) #1

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
