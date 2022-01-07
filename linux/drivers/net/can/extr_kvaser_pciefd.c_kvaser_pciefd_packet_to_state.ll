; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_packet_to_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_packet_to_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd_rx_packet = type { i32* }
%struct.can_berr_counter = type { i32, i32 }

@KVASER_PCIEFD_SPACK_BOFF = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SPACK_IRM = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SPACK_EPLR = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_PASSIVE = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SPACK_EWLR = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_WARNING = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_pciefd_rx_packet*, %struct.can_berr_counter*, i32*, i32*, i32*)* @kvaser_pciefd_packet_to_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_pciefd_packet_to_state(%struct.kvaser_pciefd_rx_packet* %0, %struct.can_berr_counter* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.kvaser_pciefd_rx_packet*, align 8
  %7 = alloca %struct.can_berr_counter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.kvaser_pciefd_rx_packet* %0, %struct.kvaser_pciefd_rx_packet** %6, align 8
  store %struct.can_berr_counter* %1, %struct.can_berr_counter** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %6, align 8
  %12 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @KVASER_PCIEFD_SPACK_BOFF, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %5
  %20 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %6, align 8
  %21 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @KVASER_PCIEFD_SPACK_IRM, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19, %5
  %29 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %30 = load i32*, i32** %8, align 8
  store i32 %29, i32* %30, align 4
  br label %102

31:                                               ; preds = %19
  %32 = load %struct.can_berr_counter*, %struct.can_berr_counter** %7, align 8
  %33 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 255
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.can_berr_counter*, %struct.can_berr_counter** %7, align 8
  %38 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 255
  br i1 %40, label %41, label %44

41:                                               ; preds = %36, %31
  %42 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  br label %101

44:                                               ; preds = %36
  %45 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %6, align 8
  %46 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @KVASER_PCIEFD_SPACK_EPLR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  br label %100

56:                                               ; preds = %44
  %57 = load %struct.can_berr_counter*, %struct.can_berr_counter** %7, align 8
  %58 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %59, 128
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.can_berr_counter*, %struct.can_berr_counter** %7, align 8
  %63 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %64, 128
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %56
  %67 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  %68 = load i32*, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  br label %99

69:                                               ; preds = %61
  %70 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %6, align 8
  %71 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @KVASER_PCIEFD_SPACK_EWLR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  %80 = load i32*, i32** %8, align 8
  store i32 %79, i32* %80, align 4
  br label %98

81:                                               ; preds = %69
  %82 = load %struct.can_berr_counter*, %struct.can_berr_counter** %7, align 8
  %83 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp sge i32 %84, 96
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load %struct.can_berr_counter*, %struct.can_berr_counter** %7, align 8
  %88 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %89, 96
  br i1 %90, label %91, label %94

91:                                               ; preds = %86, %81
  %92 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  %93 = load i32*, i32** %8, align 8
  store i32 %92, i32* %93, align 4
  br label %97

94:                                               ; preds = %86
  %95 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %96 = load i32*, i32** %8, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %78
  br label %99

99:                                               ; preds = %98, %66
  br label %100

100:                                              ; preds = %99, %53
  br label %101

101:                                              ; preds = %100, %41
  br label %102

102:                                              ; preds = %101, %28
  %103 = load %struct.can_berr_counter*, %struct.can_berr_counter** %7, align 8
  %104 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.can_berr_counter*, %struct.can_berr_counter** %7, align 8
  %107 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp sge i32 %105, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %102
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* %111, align 4
  br label %114

113:                                              ; preds = %102
  br label %114

114:                                              ; preds = %113, %110
  %115 = phi i32 [ %112, %110 ], [ 0, %113 ]
  %116 = load i32*, i32** %9, align 8
  store i32 %115, i32* %116, align 4
  %117 = load %struct.can_berr_counter*, %struct.can_berr_counter** %7, align 8
  %118 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.can_berr_counter*, %struct.can_berr_counter** %7, align 8
  %121 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp sle i32 %119, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %114
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %125, align 4
  br label %128

127:                                              ; preds = %114
  br label %128

128:                                              ; preds = %127, %124
  %129 = phi i32 [ %126, %124 ], [ 0, %127 ]
  %130 = load i32*, i32** %10, align 8
  store i32 %129, i32* %130, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
