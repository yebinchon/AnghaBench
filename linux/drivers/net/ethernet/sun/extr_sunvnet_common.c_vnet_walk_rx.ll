; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_vnet_walk_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_vnet_walk_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet_port = type { i32, i32, %struct.vio_driver_state }
%struct.vio_driver_state = type { i32, i32 }
%struct.vio_dring_state = type { i32 }

@DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"vnet_walk_rx start[%08x] end[%08x]\0A\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@VIO_DRING_ACTIVE = common dso_local global i32 0, align 4
@VIO_DRING_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnet_port*, %struct.vio_dring_state*, i64, i64, i32*, i32)* @vnet_walk_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnet_walk_rx(%struct.vnet_port* %0, %struct.vio_dring_state* %1, i64 %2, i64 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnet_port*, align 8
  %9 = alloca %struct.vio_dring_state*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vio_driver_state*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.vnet_port* %0, %struct.vnet_port** %8, align 8
  store %struct.vio_dring_state* %1, %struct.vio_dring_state** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.vnet_port*, %struct.vnet_port** %8, align 8
  %21 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %20, i32 0, i32 2
  store %struct.vio_driver_state* %21, %struct.vio_driver_state** %14, align 8
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i32 1, i32* %17, align 4
  %22 = load i64, i64* %11, align 8
  %23 = icmp eq i64 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = load %struct.vio_dring_state*, %struct.vio_dring_state** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i64 @vio_dring_prev(%struct.vio_dring_state* %25, i64 %26)
  br label %32

28:                                               ; preds = %6
  %29 = load %struct.vio_dring_state*, %struct.vio_dring_state** %9, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i64 @vio_dring_next(%struct.vio_dring_state* %29, i64 %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i64 [ %27, %24 ], [ %31, %28 ]
  store i64 %33, i64* %11, align 8
  %34 = load i32, i32* @DATA, align 4
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @viodbg(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %36)
  br label %38

38:                                               ; preds = %98, %32
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %99

42:                                               ; preds = %38
  store i32 0, i32* %18, align 4
  %43 = load %struct.vnet_port*, %struct.vnet_port** %8, align 8
  %44 = load %struct.vio_dring_state*, %struct.vio_dring_state** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @vnet_walk_rx_one(%struct.vnet_port* %43, %struct.vio_dring_state* %44, i64 %45, i32* %18)
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* %19, align 4
  %48 = load i32, i32* @ECONNRESET, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %19, align 4
  store i32 %52, i32* %7, align 4
  br label %153

53:                                               ; preds = %42
  %54 = load i32, i32* %19, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %99

57:                                               ; preds = %53
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i64, i64* %10, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %63, %57
  %67 = load i64, i64* %10, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %16, align 4
  %69 = load %struct.vio_dring_state*, %struct.vio_dring_state** %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i64 @vio_dring_next(%struct.vio_dring_state* %69, i64 %70)
  store i64 %71, i64* %10, align 8
  %72 = load i32, i32* %18, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %66
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %11, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load %struct.vnet_port*, %struct.vnet_port** %8, align 8
  %80 = load %struct.vio_dring_state*, %struct.vio_dring_state** %9, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* @VIO_DRING_ACTIVE, align 4
  %84 = call i32 @vnet_send_ack(%struct.vnet_port* %79, %struct.vio_dring_state* %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %19, align 4
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* @ECONNRESET, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = load i32, i32* %19, align 4
  store i32 %90, i32* %7, align 4
  br label %153

91:                                               ; preds = %78
  store i32 -1, i32* %15, align 4
  br label %92

92:                                               ; preds = %91, %74, %66
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 0, i32* %17, align 4
  br label %99

98:                                               ; preds = %92
  br label %38

99:                                               ; preds = %97, %56, %38
  %100 = load i32, i32* %15, align 4
  %101 = icmp eq i32 %100, -1
  %102 = zext i1 %101 to i32
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load %struct.vio_dring_state*, %struct.vio_dring_state** %9, align 8
  %107 = load i64, i64* %10, align 8
  %108 = call i64 @vio_dring_prev(%struct.vio_dring_state* %106, i64 %107)
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %105, %99
  %112 = load i32, i32* %17, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %135

114:                                              ; preds = %111
  %115 = load %struct.vnet_port*, %struct.vnet_port** %8, align 8
  %116 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %115, i32 0, i32 0
  store i32 0, i32* %116, align 4
  %117 = load %struct.vnet_port*, %struct.vnet_port** %8, align 8
  %118 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.vnet_port*, %struct.vnet_port** %8, align 8
  %122 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %16, align 4
  %126 = load i32*, i32** %12, align 8
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @trace_vnet_tx_send_stopped_ack(i32 %120, i32 %124, i32 %125, i32 %127)
  %129 = load %struct.vnet_port*, %struct.vnet_port** %8, align 8
  %130 = load %struct.vio_dring_state*, %struct.vio_dring_state** %9, align 8
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* @VIO_DRING_STOPPED, align 4
  %134 = call i32 @vnet_send_ack(%struct.vnet_port* %129, %struct.vio_dring_state* %130, i32 %131, i32 %132, i32 %133)
  store i32 %134, i32* %7, align 4
  br label %153

135:                                              ; preds = %111
  %136 = load %struct.vnet_port*, %struct.vnet_port** %8, align 8
  %137 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.vnet_port*, %struct.vnet_port** %8, align 8
  %141 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %16, align 4
  %145 = load i32*, i32** %12, align 8
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @trace_vnet_tx_defer_stopped_ack(i32 %139, i32 %143, i32 %144, i32 %146)
  %148 = load %struct.vnet_port*, %struct.vnet_port** %8, align 8
  %149 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %148, i32 0, i32 0
  store i32 1, i32* %149, align 4
  %150 = load i32, i32* %16, align 4
  %151 = load %struct.vnet_port*, %struct.vnet_port** %8, align 8
  %152 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  store i32 1, i32* %7, align 4
  br label %153

153:                                              ; preds = %135, %114, %89, %51
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local i64 @vio_dring_prev(%struct.vio_dring_state*, i64) #1

declare dso_local i64 @vio_dring_next(%struct.vio_dring_state*, i64) #1

declare dso_local i32 @viodbg(i32, i8*, i64, i64) #1

declare dso_local i32 @vnet_walk_rx_one(%struct.vnet_port*, %struct.vio_dring_state*, i64, i32*) #1

declare dso_local i32 @vnet_send_ack(%struct.vnet_port*, %struct.vio_dring_state*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @trace_vnet_tx_send_stopped_ack(i32, i32, i32, i32) #1

declare dso_local i32 @trace_vnet_tx_defer_stopped_ack(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
