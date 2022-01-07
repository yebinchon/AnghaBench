; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.ehea_port = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @ehea_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.ehea_port*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %11)
  store %struct.ehea_port* %12, %struct.ehea_port** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %40, %2
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %16 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %13
  %20 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %21 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr i8, i8* %28, i64 %27
  store i8* %29, i8** %6, align 8
  %30 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %31 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr i8, i8* %38, i64 %37
  store i8* %39, i8** %8, align 8
  br label %40

40:                                               ; preds = %19
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %13

43:                                               ; preds = %13
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %71, %43
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %47 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %44
  %51 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %52 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr i8, i8* %59, i64 %58
  store i8* %60, i8** %7, align 8
  %61 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %62 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr i8, i8* %69, i64 %68
  store i8* %70, i8** %9, align 8
  br label %71

71:                                               ; preds = %50
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %44

74:                                               ; preds = %44
  %75 = load i8*, i8** %7, align 8
  %76 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %77 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %80 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %83 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %86 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %88 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %92 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %94 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %98 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  ret void
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
