; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_spi_exchange.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_spi_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ca8210_priv* }
%struct.ca8210_priv = type { i32*, i32, i32, i32 }

@SPI_SYN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"spi write failed, returned %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"SPI downstream transfer timed out!\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@CA8210_SYNC_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Synchronous confirm timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i8*)* @ca8210_spi_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca8210_spi_exchange(i32* %0, i64 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.spi_device*, align 8
  %11 = alloca %struct.ca8210_priv*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.spi_device*
  store %struct.spi_device* %14, %struct.spi_device** %10, align 8
  %15 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.ca8210_priv*, %struct.ca8210_priv** %17, align 8
  store %struct.ca8210_priv* %18, %struct.ca8210_priv** %11, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SPI_SYN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.ca8210_priv*, %struct.ca8210_priv** %11, align 8
  %30 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %29, i32 0, i32 1
  %31 = call i32 @reinit_completion(i32* %30)
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.ca8210_priv*, %struct.ca8210_priv** %11, align 8
  %34 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  br label %35

35:                                               ; preds = %28, %25, %4
  br label %36

36:                                               ; preds = %97, %35
  %37 = load %struct.ca8210_priv*, %struct.ca8210_priv** %11, align 8
  %38 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %37, i32 0, i32 2
  %39 = call i32 @reinit_completion(i32* %38)
  %40 = load %struct.ca8210_priv*, %struct.ca8210_priv** %11, align 8
  %41 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @ca8210_spi_transfer(i32 %42, i32* %43, i64 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %36
  %49 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 0
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @dev_warn(%struct.TYPE_3__* %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %97

58:                                               ; preds = %48
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SPI_SYN, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load i32*, i32** %7, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.ca8210_priv*, %struct.ca8210_priv** %11, align 8
  %70 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %69, i32 0, i32 1
  %71 = call i32 @complete(i32* %70)
  br label %72

72:                                               ; preds = %68, %65, %58
  br label %136

73:                                               ; preds = %36
  %74 = load %struct.ca8210_priv*, %struct.ca8210_priv** %11, align 8
  %75 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %74, i32 0, i32 2
  %76 = call i32 @msecs_to_jiffies(i32 1000)
  %77 = call i64 @wait_for_completion_interruptible_timeout(i32* %75, i32 %76)
  store i64 %77, i64* %12, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* @ERESTARTSYS, align 8
  %80 = sub nsw i64 0, %79
  %81 = icmp eq i64 %78, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %73
  %83 = load i64, i64* @ERESTARTSYS, align 8
  %84 = sub nsw i64 0, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %9, align 4
  br label %96

86:                                               ; preds = %73
  %87 = load i64, i64* %12, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %91 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %90, i32 0, i32 0
  %92 = call i32 @dev_err(%struct.TYPE_3__* %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @ETIME, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %9, align 4
  br label %136

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %82
  br label %97

97:                                               ; preds = %96, %57
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %36, label %100

100:                                              ; preds = %97
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @SPI_SYN, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32*, i32** %7, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %107, %100
  br label %136

111:                                              ; preds = %107
  %112 = load %struct.ca8210_priv*, %struct.ca8210_priv** %11, align 8
  %113 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %112, i32 0, i32 1
  %114 = load i32, i32* @CA8210_SYNC_TIMEOUT, align 4
  %115 = call i32 @msecs_to_jiffies(i32 %114)
  %116 = call i64 @wait_for_completion_interruptible_timeout(i32* %113, i32 %115)
  store i64 %116, i64* %12, align 8
  %117 = load i64, i64* %12, align 8
  %118 = load i64, i64* @ERESTARTSYS, align 8
  %119 = sub nsw i64 0, %118
  %120 = icmp eq i64 %117, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %111
  %122 = load i64, i64* @ERESTARTSYS, align 8
  %123 = sub nsw i64 0, %122
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %9, align 4
  br label %135

125:                                              ; preds = %111
  %126 = load i64, i64* %12, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %130 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %129, i32 0, i32 0
  %131 = call i32 @dev_err(%struct.TYPE_3__* %130, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %132 = load i32, i32* @ETIME, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %128, %125
  br label %135

135:                                              ; preds = %134, %121
  br label %136

136:                                              ; preds = %135, %110, %89, %72
  %137 = load %struct.ca8210_priv*, %struct.ca8210_priv** %11, align 8
  %138 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %137, i32 0, i32 0
  store i32* null, i32** %138, align 8
  %139 = load i32, i32* %9, align 4
  ret i32 %139
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @ca8210_spi_transfer(i32, i32*, i64) #1

declare dso_local i32 @dev_warn(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
