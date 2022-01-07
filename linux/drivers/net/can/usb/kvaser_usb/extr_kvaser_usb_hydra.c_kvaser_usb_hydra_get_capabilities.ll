; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_get_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_get_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@KVASER_USB_CAP_EXT_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"No extended capability support. Upgrade your device.\0A\00", align 1
@KVASER_USB_HYDRA_CAP_CMD_LISTEN_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"KVASER_USB_HYDRA_CAP_CMD_LISTEN_MODE failed %u\0A\00", align 1
@KVASER_USB_HYDRA_CAP_CMD_ERR_REPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"KVASER_USB_HYDRA_CAP_CMD_ERR_REPORT failed %u\0A\00", align 1
@KVASER_USB_HYDRA_CAP_CMD_ONE_SHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"KVASER_USB_HYDRA_CAP_CMD_ONE_SHOT failed %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb*)* @kvaser_usb_hydra_get_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_hydra_get_capabilities(%struct.kvaser_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  %6 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %7 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @KVASER_USB_CAP_EXT_CAP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %15 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_info(i32* %17, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %74

19:                                               ; preds = %1
  %20 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %21 = load i32, i32* @KVASER_USB_HYDRA_CAP_CMD_LISTEN_MODE, align 4
  %22 = call i32 @kvaser_usb_hydra_get_single_capability(%struct.kvaser_usb* %20, i32 %21, i64* %5)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %74

27:                                               ; preds = %19
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %32 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %5, align 8
  %36 = call i32 (i32*, i8*, ...) @dev_info(i32* %34, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %30, %27
  %38 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %39 = load i32, i32* @KVASER_USB_HYDRA_CAP_CMD_ERR_REPORT, align 4
  %40 = call i32 @kvaser_usb_hydra_get_single_capability(%struct.kvaser_usb* %38, i32 %39, i64* %5)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %74

45:                                               ; preds = %37
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %50 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %5, align 8
  %54 = call i32 (i32*, i8*, ...) @dev_info(i32* %52, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %48, %45
  %56 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %57 = load i32, i32* @KVASER_USB_HYDRA_CAP_CMD_ONE_SHOT, align 4
  %58 = call i32 @kvaser_usb_hydra_get_single_capability(%struct.kvaser_usb* %56, i32 %57, i64* %5)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %74

63:                                               ; preds = %55
  %64 = load i64, i64* %5, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %68 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %5, align 8
  %72 = call i32 (i32*, i8*, ...) @dev_info(i32* %70, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %71)
  br label %73

73:                                               ; preds = %66, %63
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %61, %43, %25, %13
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @kvaser_usb_hydra_get_single_capability(%struct.kvaser_usb*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
