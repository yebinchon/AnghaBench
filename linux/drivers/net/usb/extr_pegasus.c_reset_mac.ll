; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_pegasus.c_reset_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_pegasus.c_reset_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i64 }

@EthCtrl1 = common dso_local global i32 0, align 4
@REG_TIMEOUT = common dso_local global i32 0, align 4
@loopback = common dso_local global i64 0, align 8
@mii_mode = common dso_local global i64 0, align 8
@HAS_HOME_PNA = common dso_local global i32 0, align 4
@Gpio1 = common dso_local global i32 0, align 4
@Gpio0 = common dso_local global i32 0, align 4
@DEFAULT_GPIO_SET = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@usb_dev_id = common dso_local global %struct.TYPE_9__* null, align 8
@VENDOR_LINKSYS = common dso_local global i64 0, align 8
@VENDOR_DLINK = common dso_local global i64 0, align 8
@VENDOR_ELCON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @reset_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_mac(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 8, i32* %4, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = load i32, i32* @EthCtrl1, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @set_register(%struct.TYPE_8__* %7, i32 %8, i32 %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %57, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @REG_TIMEOUT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %60

15:                                               ; preds = %11
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = load i32, i32* @EthCtrl1, align 4
  %18 = call i32 @get_registers(%struct.TYPE_8__* %16, i32 %17, i32 1, i32* %4)
  %19 = load i32, i32* %4, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %20, 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %15
  %24 = load i64, i64* @loopback, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %60

27:                                               ; preds = %23
  %28 = load i64, i64* @mii_mode, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @HAS_HOME_PNA, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = load i32, i32* @Gpio1, align 4
  %40 = call i32 @set_register(%struct.TYPE_8__* %38, i32 %39, i32 52)
  br label %45

41:                                               ; preds = %30, %27
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = load i32, i32* @Gpio1, align 4
  %44 = call i32 @set_register(%struct.TYPE_8__* %42, i32 %43, i32 38)
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = load i32, i32* @Gpio0, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @set_register(%struct.TYPE_8__* %46, i32 %47, i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = load i32, i32* @Gpio0, align 4
  %54 = load i32, i32* @DEFAULT_GPIO_SET, align 4
  %55 = call i32 @set_register(%struct.TYPE_8__* %52, i32 %53, i32 %54)
  br label %60

56:                                               ; preds = %15
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %11

60:                                               ; preds = %45, %26, %11
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @REG_TIMEOUT, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @ETIMEDOUT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %112

67:                                               ; preds = %60
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** @usb_dev_id, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @VENDOR_LINKSYS, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %87, label %77

77:                                               ; preds = %67
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** @usb_dev_id, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @VENDOR_DLINK, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %77, %67
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %89 = load i32, i32* @Gpio0, align 4
  %90 = call i32 @set_register(%struct.TYPE_8__* %88, i32 %89, i32 36)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = load i32, i32* @Gpio0, align 4
  %93 = call i32 @set_register(%struct.TYPE_8__* %91, i32 %92, i32 38)
  br label %94

94:                                               ; preds = %87, %77
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @usb_dev_id, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @VENDOR_ELCON, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %94
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %106 = call i32 @read_mii_word(%struct.TYPE_8__* %105, i32 3, i32 27, i32* %6)
  %107 = load i32, i32* %6, align 4
  %108 = or i32 %107, 4
  store i32 %108, i32* %6, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %110 = call i32 @write_mii_word(%struct.TYPE_8__* %109, i32 3, i32 27, i32* %6)
  br label %111

111:                                              ; preds = %104, %94
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %64
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @set_register(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @get_registers(%struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @read_mii_word(%struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @write_mii_word(%struct.TYPE_8__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
