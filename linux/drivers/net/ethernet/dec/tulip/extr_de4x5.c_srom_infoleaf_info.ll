; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_srom_infoleaf_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_srom_infoleaf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.de4x5_private = type { i64, i32, i64, i32, i32, i32 }

@INFOLEAF_SIZE = common dso_local global i32 0, align 4
@infoleaf_array = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [52 x i8] c"%s: Cannot find correct chipset for SROM decoding!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"%s: Cannot find correct PCI device [%d] for SROM decoding!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @srom_infoleaf_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srom_infoleaf_info(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.de4x5_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %8)
  store %struct.de4x5_private* %9, %struct.de4x5_private** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @INFOLEAF_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %16 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @infoleaf_array, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %17, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %30

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %10

30:                                               ; preds = %25, %10
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @INFOLEAF_SIZE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %36 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %35, i32 0, i32 1
  store i32 0, i32* %36, align 8
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @ENXIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %105

43:                                               ; preds = %30
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @infoleaf_array, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %51 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %53 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %52, i32 0, i32 4
  %54 = bitcast i32* %53 to i64*
  %55 = getelementptr inbounds i64, i64* %54, i64 19
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %6, align 4
  %58 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %59 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %58, i32 0, i32 4
  %60 = bitcast i32* %59 to i64*
  %61 = getelementptr inbounds i64, i64* %60, i64 26
  store i64* %61, i64** %7, align 8
  %62 = load i32, i32* %6, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %99

64:                                               ; preds = %43
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %78, %64
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %71 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %7, align 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %83

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %5, align 4
  %81 = load i64*, i64** %7, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 3
  store i64* %82, i64** %7, align 8
  br label %66

83:                                               ; preds = %76, %66
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %88 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %87, i32 0, i32 1
  store i32 0, i32* %88, align 8
  %89 = load %struct.net_device*, %struct.net_device** %3, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %93 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %91, i64 %94)
  %96 = load i32, i32* @ENXIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %105

98:                                               ; preds = %83
  br label %99

99:                                               ; preds = %98, %43
  %100 = load i64*, i64** %7, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 1
  %102 = call i32 @get_unaligned_le16(i64* %101)
  %103 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %104 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %99, %86, %34
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @get_unaligned_le16(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
