; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_sdla.c_sdla_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_sdla.c_sdla_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i64, i32 }
%struct.frad_local = type { i16*, %struct.TYPE_2__, %struct.net_device** }
%struct.TYPE_2__ = type { i64 }

@ARPHRD_DLCI = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CONFIG_DLCI_MAX = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@EMLINK = common dso_local global i32 0, align 4
@FRAD_STATION_CPE = common dso_local global i64 0, align 8
@SDLA_ADD_DLCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*)* @sdla_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdla_assoc(%struct.net_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.frad_local*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ARPHRD_DLCI, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %113

16:                                               ; preds = %2
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call %struct.frad_local* @netdev_priv(%struct.net_device* %17)
  store %struct.frad_local* %18, %struct.frad_local** %6, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %54, %16
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @CONFIG_DLCI_MAX, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %19
  %24 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %25 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %24, i32 0, i32 2
  %26 = load %struct.net_device**, %struct.net_device*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.net_device*, %struct.net_device** %26, i64 %28
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  %31 = icmp ne %struct.net_device* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %57

33:                                               ; preds = %23
  %34 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %35 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %34, i32 0, i32 0
  %36 = load i16*, i16** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i16, i16* %36, i64 %38
  %40 = load i16, i16* %39, align 2
  %41 = call signext i16 @abs(i16 signext %40)
  %42 = sext i16 %41 to i32
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i16*
  %47 = load i16, i16* %46, align 2
  %48 = sext i16 %47 to i32
  %49 = icmp eq i32 %42, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %33
  %51 = load i32, i32* @EADDRINUSE, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %113

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %19

57:                                               ; preds = %32, %19
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @CONFIG_DLCI_MAX, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @EMLINK, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %113

64:                                               ; preds = %57
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %67 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %66, i32 0, i32 2
  %68 = load %struct.net_device**, %struct.net_device*** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.net_device*, %struct.net_device** %68, i64 %70
  store %struct.net_device* %65, %struct.net_device** %71, align 8
  %72 = load %struct.net_device*, %struct.net_device** %5, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i16*
  %76 = load i16, i16* %75, align 2
  %77 = sext i16 %76 to i32
  %78 = sub nsw i32 0, %77
  %79 = trunc i32 %78 to i16
  %80 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %81 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %80, i32 0, i32 0
  %82 = load i16*, i16** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i16, i16* %82, i64 %84
  store i16 %79, i16* %85, align 2
  %86 = load %struct.net_device*, %struct.net_device** %4, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.net_device*, %struct.net_device** %5, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = call i64 @netif_running(%struct.net_device* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %64
  %95 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %96 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @FRAD_STATION_CPE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = call i32 @sdla_reconfig(%struct.net_device* %102)
  br label %111

104:                                              ; preds = %94
  %105 = load %struct.net_device*, %struct.net_device** %4, align 8
  %106 = load i32, i32* @SDLA_ADD_DLCI, align 4
  %107 = load %struct.net_device*, %struct.net_device** %5, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @sdla_cmd(%struct.net_device* %105, i32 %106, i32 0, i32 0, i64 %109, i32 2, i32* null, i32* null)
  br label %111

111:                                              ; preds = %104, %101
  br label %112

112:                                              ; preds = %111, %64
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %61, %50, %13
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.frad_local* @netdev_priv(%struct.net_device*) #1

declare dso_local signext i16 @abs(i16 signext) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @sdla_reconfig(%struct.net_device*) #1

declare dso_local i32 @sdla_cmd(%struct.net_device*, i32, i32, i32, i64, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
