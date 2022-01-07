; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_spi_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_spi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@KVASER_PCIEFD_SPI_SSEL_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_SPI_CTRL_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_SPI_RX_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_SPI_TRDY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SPI_TX_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_SPI_RRDY = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SPI_TMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Flash SPI transfer failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_pciefd*, i32*, i32, i32*, i32)* @kvaser_pciefd_spi_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_spi_cmd(%struct.kvaser_pciefd* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvaser_pciefd*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvaser_pciefd* %0, %struct.kvaser_pciefd** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = call i32 @BIT(i32 0)
  %14 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %15 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @KVASER_PCIEFD_SPI_SSEL_REG, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @iowrite32(i32 %13, i64 %18)
  %20 = call i32 @BIT(i32 10)
  %21 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %22 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @KVASER_PCIEFD_SPI_CTRL_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @iowrite32(i32 %20, i64 %25)
  %27 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %28 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @KVASER_PCIEFD_SPI_RX_REG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @ioread32(i64 %31)
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %63, %5
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %12, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %34
  %39 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %40 = load i32, i32* @KVASER_PCIEFD_SPI_TRDY, align 4
  %41 = call i64 @kvaser_pciefd_spi_wait_loop(%struct.kvaser_pciefd* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %133

46:                                               ; preds = %38
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %8, align 8
  %49 = load i32, i32* %47, align 4
  %50 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %51 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @KVASER_PCIEFD_SPI_TX_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @iowrite32(i32 %49, i64 %54)
  %56 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %57 = load i32, i32* @KVASER_PCIEFD_SPI_RRDY, align 4
  %58 = call i64 @kvaser_pciefd_spi_wait_loop(%struct.kvaser_pciefd* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %46
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %133

63:                                               ; preds = %46
  %64 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %65 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @KVASER_PCIEFD_SPI_RX_REG, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @ioread32(i64 %68)
  br label %34

70:                                               ; preds = %34
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %98, %70
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %12, align 4
  %75 = icmp sgt i32 %73, 0
  br i1 %75, label %76, label %107

76:                                               ; preds = %72
  %77 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %78 = load i32, i32* @KVASER_PCIEFD_SPI_TRDY, align 4
  %79 = call i64 @kvaser_pciefd_spi_wait_loop(%struct.kvaser_pciefd* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %133

84:                                               ; preds = %76
  %85 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %86 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @KVASER_PCIEFD_SPI_TX_REG, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @iowrite32(i32 0, i64 %89)
  %91 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %92 = load i32, i32* @KVASER_PCIEFD_SPI_RRDY, align 4
  %93 = call i64 @kvaser_pciefd_spi_wait_loop(%struct.kvaser_pciefd* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %84
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %133

98:                                               ; preds = %84
  %99 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %100 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @KVASER_PCIEFD_SPI_RX_REG, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @ioread32(i64 %103)
  %105 = load i32*, i32** %10, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %10, align 8
  store i32 %104, i32* %105, align 4
  br label %72

107:                                              ; preds = %72
  %108 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %109 = load i32, i32* @KVASER_PCIEFD_SPI_TMT, align 4
  %110 = call i64 @kvaser_pciefd_spi_wait_loop(%struct.kvaser_pciefd* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %6, align 4
  br label %133

115:                                              ; preds = %107
  %116 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %117 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @KVASER_PCIEFD_SPI_CTRL_REG, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @iowrite32(i32 0, i64 %120)
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, -1
  br i1 %123, label %124, label %132

124:                                              ; preds = %115
  %125 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %126 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = call i32 @dev_err(i32* %128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %6, align 4
  br label %133

132:                                              ; preds = %115
  store i32 0, i32* %6, align 4
  br label %133

133:                                              ; preds = %132, %124, %112, %95, %81, %60, %43
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i64 @kvaser_pciefd_spi_wait_loop(%struct.kvaser_pciefd*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
