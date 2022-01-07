; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_configure_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_configure_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.aqc111_data = type { i32 }

@AQ_ACCESS_MAC = common dso_local global i32 0, align 4
@SFR_INTER_PACKET_GAP_0 = common dso_local global i32 0, align 4
@SFR_TX_PAUSE_RESEND_T = common dso_local global i32 0, align 4
@AQC111_BULKIN_SIZE = common dso_local global i32* null, align 8
@SFR_RX_BULKIN_QCTRL = common dso_local global i32 0, align 4
@SFR_PAUSE_WATERLVL_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Link Speed %d, USB %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, %struct.aqc111_data*)* @aqc111_configure_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aqc111_configure_rx(%struct.usbnet* %0, %struct.aqc111_data* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.aqc111_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [5 x i64], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.aqc111_data* %1, %struct.aqc111_data** %4, align 8
  %12 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %13 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = bitcast [5 x i64]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 40, i1 false)
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %18 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0
  store i64 0, i64* %18, align 16
  %19 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 1
  store i64 248, i64* %19, align 8
  %20 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 2
  store i64 7, i64* %20, align 16
  %21 = load %struct.aqc111_data*, %struct.aqc111_data** %4, align 8
  %22 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %30 [
    i32 132, label %24
    i32 133, label %25
    i32 134, label %26
    i32 135, label %27
  ]

24:                                               ; preds = %2
  store i32 5000, i32* %6, align 4
  store i64 5, i64* %11, align 8
  store i32 31, i32* %10, align 4
  br label %30

25:                                               ; preds = %2
  store i32 2500, i32* %6, align 4
  store i32 63, i32* %10, align 4
  br label %30

26:                                               ; preds = %2
  store i32 1000, i32* %6, align 4
  store i32 159, i32* %10, align 4
  br label %30

27:                                               ; preds = %2
  store i32 100, i32* %6, align 4
  store i64 1, i64* %9, align 8
  store i32 1599, i32* %10, align 4
  %28 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 1
  store i64 251, i64* %28, align 8
  %29 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 2
  store i64 4, i64* %29, align 16
  br label %30

30:                                               ; preds = %2, %27, %26, %25, %24
  %31 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %32 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %33 = load i32, i32* @SFR_INTER_PACKET_GAP_0, align 4
  %34 = call i32 @aqc111_write_cmd(%struct.usbnet* %31, i32 %32, i32 %33, i32 1, i32 1, i64* %11)
  %35 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %36 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %37 = load i32, i32* @SFR_TX_PAUSE_RESEND_T, align 4
  %38 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0
  %39 = call i32 @aqc111_write_cmd(%struct.usbnet* %35, i32 %36, i32 %37, i32 3, i32 3, i64* %38)
  %40 = load i32, i32* %5, align 4
  switch i32 %40, label %44 [
    i32 128, label %41
    i32 130, label %42
    i32 131, label %43
    i32 129, label %43
  ]

41:                                               ; preds = %30
  store i32 3, i32* %7, align 4
  br label %45

42:                                               ; preds = %30
  store i32 2, i32* %7, align 4
  br label %45

43:                                               ; preds = %30, %30
  store i32 1, i32* %7, align 4
  store i64 0, i64* %9, align 8
  br label %45

44:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %43, %42, %41
  %46 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %47 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 12500
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %54 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sle i32 %57, 16334
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i64 2, i64* %9, align 8
  br label %60

60:                                               ; preds = %59, %52, %45
  %61 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0
  %62 = load i32*, i32** @AQC111_BULKIN_SIZE, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = call i32 @memcpy(i64* %61, i32* %64, i32 5)
  %66 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %67 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %68 = load i32, i32* @SFR_RX_BULKIN_QCTRL, align 4
  %69 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0
  %70 = call i32 @aqc111_write_cmd(%struct.usbnet* %66, i32 %67, i32 %68, i32 5, i32 5, i64* %69)
  %71 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %72 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp sle i32 %75, 4500
  br i1 %76, label %77, label %78

77:                                               ; preds = %60
  store i32 2064, i32* %10, align 4
  br label %105

78:                                               ; preds = %60
  %79 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %80 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp sle i32 %83, 9500
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i32 4128, i32* %10, align 4
  br label %104

86:                                               ; preds = %78
  %87 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %88 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp sle i32 %91, 12500
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 5152, i32* %10, align 4
  br label %103

94:                                               ; preds = %86
  %95 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %96 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sle i32 %99, 16334
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  store i32 6688, i32* %10, align 4
  br label %102

102:                                              ; preds = %101, %94
  br label %103

103:                                              ; preds = %102, %93
  br label %104

104:                                              ; preds = %103, %85
  br label %105

105:                                              ; preds = %104, %77
  %106 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %107 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %108 = load i32, i32* @SFR_PAUSE_WATERLVL_LOW, align 4
  %109 = call i32 @aqc111_write16_cmd(%struct.usbnet* %106, i32 %107, i32 %108, i32 2, i32* %10)
  %110 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %111 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @netdev_info(%struct.TYPE_4__* %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %114)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @aqc111_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i64*) #2

declare dso_local i32 @memcpy(i64*, i32*, i32) #2

declare dso_local i32 @aqc111_write16_cmd(%struct.usbnet*, i32, i32, i32, i32*) #2

declare dso_local i32 @netdev_info(%struct.TYPE_4__*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
