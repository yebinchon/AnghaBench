; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_hw_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_hw_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.can_frame = type { i32, i32, i32 }

@HI3110_TX_EXT_BUF_LEN = common dso_local global i32 0, align 4
@HI3110_FIFO_TAG_OFF = common dso_local global i64 0, align 8
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@HI3110_FIFO_ID_OFF = common dso_local global i64 0, align 8
@HI3110_EFF_FLAGS = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@HI3110_FIFO_EXT_DLC_OFF = common dso_local global i64 0, align 8
@HI3110_FIFO_EXT_DATA_OFF = common dso_local global i32 0, align 4
@HI3110_CAN_MAX_DATA_LEN = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@HI3110_FIFO_STD_DLC_OFF = common dso_local global i64 0, align 8
@HI3110_FIFO_STD_DATA_OFF = common dso_local global i32 0, align 4
@HI3110_TX_STD_BUF_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, %struct.can_frame*)* @hi3110_hw_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hi3110_hw_tx(%struct.spi_device* %0, %struct.can_frame* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.can_frame*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.can_frame* %1, %struct.can_frame** %4, align 8
  %7 = load i32, i32* @HI3110_TX_EXT_BUF_LEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load i64, i64* @HI3110_FIFO_TAG_OFF, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32 0, i32* %12, align 4
  %13 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %14 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CAN_EFF_FLAG, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %99

19:                                               ; preds = %2
  %20 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %21 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CAN_EFF_MASK, align 4
  %24 = and i32 %22, %23
  %25 = ashr i32 %24, 21
  %26 = load i64, i64* @HI3110_FIFO_ID_OFF, align 8
  %27 = getelementptr inbounds i32, i32* %10, i64 %26
  store i32 %25, i32* %27, align 4
  %28 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %29 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CAN_EFF_MASK, align 4
  %32 = and i32 %30, %31
  %33 = ashr i32 %32, 13
  %34 = and i32 %33, 224
  %35 = load i32, i32* @HI3110_EFF_FLAGS, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %38 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CAN_EFF_MASK, align 4
  %41 = and i32 %39, %40
  %42 = ashr i32 %41, 15
  %43 = and i32 %42, 7
  %44 = or i32 %36, %43
  %45 = load i64, i64* @HI3110_FIFO_ID_OFF, align 8
  %46 = add i64 %45, 1
  %47 = getelementptr inbounds i32, i32* %10, i64 %46
  store i32 %44, i32* %47, align 4
  %48 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %49 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CAN_EFF_MASK, align 4
  %52 = and i32 %50, %51
  %53 = ashr i32 %52, 7
  %54 = load i64, i64* @HI3110_FIFO_ID_OFF, align 8
  %55 = add i64 %54, 2
  %56 = getelementptr inbounds i32, i32* %10, i64 %55
  store i32 %53, i32* %56, align 4
  %57 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %58 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CAN_EFF_MASK, align 4
  %61 = and i32 %59, %60
  %62 = shl i32 %61, 1
  %63 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %64 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CAN_RTR_FLAG, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  %71 = or i32 %62, %70
  %72 = load i64, i64* @HI3110_FIFO_ID_OFF, align 8
  %73 = add i64 %72, 3
  %74 = getelementptr inbounds i32, i32* %10, i64 %73
  store i32 %71, i32* %74, align 4
  %75 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %76 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* @HI3110_FIFO_EXT_DLC_OFF, align 8
  %79 = getelementptr inbounds i32, i32* %10, i64 %78
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @HI3110_FIFO_EXT_DATA_OFF, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %10, i64 %81
  %83 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %84 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %87 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memcpy(i32* %82, i32 %85, i32 %88)
  %90 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %91 = load i32, i32* @HI3110_TX_EXT_BUF_LEN, align 4
  %92 = load i32, i32* @HI3110_CAN_MAX_DATA_LEN, align 4
  %93 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %94 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %92, %95
  %97 = sub nsw i32 %91, %96
  %98 = call i32 @hi3110_hw_tx_frame(%struct.spi_device* %90, i32* %10, i32 %97)
  br label %150

99:                                               ; preds = %2
  %100 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %101 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @CAN_SFF_MASK, align 4
  %104 = and i32 %102, %103
  %105 = ashr i32 %104, 3
  %106 = load i64, i64* @HI3110_FIFO_ID_OFF, align 8
  %107 = getelementptr inbounds i32, i32* %10, i64 %106
  store i32 %105, i32* %107, align 4
  %108 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %109 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @CAN_SFF_MASK, align 4
  %112 = and i32 %110, %111
  %113 = shl i32 %112, 5
  %114 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %115 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @CAN_RTR_FLAG, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 16, i32 0
  %122 = or i32 %113, %121
  %123 = load i64, i64* @HI3110_FIFO_ID_OFF, align 8
  %124 = add i64 %123, 1
  %125 = getelementptr inbounds i32, i32* %10, i64 %124
  store i32 %122, i32* %125, align 4
  %126 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %127 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i64, i64* @HI3110_FIFO_STD_DLC_OFF, align 8
  %130 = getelementptr inbounds i32, i32* %10, i64 %129
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @HI3110_FIFO_STD_DATA_OFF, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %10, i64 %132
  %134 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %135 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %138 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @memcpy(i32* %133, i32 %136, i32 %139)
  %141 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %142 = load i32, i32* @HI3110_TX_STD_BUF_LEN, align 4
  %143 = load i32, i32* @HI3110_CAN_MAX_DATA_LEN, align 4
  %144 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %145 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %143, %146
  %148 = sub nsw i32 %142, %147
  %149 = call i32 @hi3110_hw_tx_frame(%struct.spi_device* %141, i32* %10, i32 %148)
  br label %150

150:                                              ; preds = %99, %19
  %151 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %151)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @hi3110_hw_tx_frame(%struct.spi_device*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
