; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_ti_hecc.c_ti_hecc_mailbox_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_ti_hecc.c_ti_hecc_mailbox_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.can_rx_offload = type { i32 }
%struct.can_frame = type { i32, i32, i64 }
%struct.ti_hecc_priv = type { i32 }

@HECC_CANMID = common dso_local global i32 0, align 4
@HECC_CANMID_IDE = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@HECC_CANMCF = common dso_local global i32 0, align 4
@HECC_CANMCF_RTR = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@HECC_CANMDL = common dso_local global i32 0, align 4
@HECC_CANMDH = common dso_local global i32 0, align 4
@HECC_RX_LAST_MBOX = common dso_local global i32 0, align 4
@HECC_CANRML = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@HECC_CANRMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.can_rx_offload*, %struct.can_frame*, i32*, i32)* @ti_hecc_mailbox_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_hecc_mailbox_read(%struct.can_rx_offload* %0, %struct.can_frame* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.can_rx_offload*, align 8
  %6 = alloca %struct.can_frame*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ti_hecc_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.can_rx_offload* %0, %struct.can_rx_offload** %5, align 8
  store %struct.can_frame* %1, %struct.can_frame** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.can_rx_offload*, %struct.can_rx_offload** %5, align 8
  %14 = call %struct.ti_hecc_priv* @rx_offload_to_priv(%struct.can_rx_offload* %13)
  store %struct.ti_hecc_priv* %14, %struct.ti_hecc_priv** %9, align 8
  store i32 1, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @BIT(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %9, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @HECC_CANMID, align 4
  %20 = call i32 @hecc_read_mbx(%struct.ti_hecc_priv* %17, i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @HECC_CANMID_IDE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @CAN_EFF_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @CAN_EFF_FLAG, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %32 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %40

33:                                               ; preds = %4
  %34 = load i32, i32* %10, align 4
  %35 = ashr i32 %34, 18
  %36 = load i32, i32* @CAN_SFF_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %39 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %33, %25
  %41 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %9, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @HECC_CANMCF, align 4
  %44 = call i32 @hecc_read_mbx(%struct.ti_hecc_priv* %41, i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @HECC_CANMCF_RTR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load i32, i32* @CAN_RTR_FLAG, align 4
  %51 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %52 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %40
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, 15
  %58 = call i32 @get_can_dlc(i32 %57)
  %59 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %60 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %9, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @HECC_CANMDL, align 4
  %64 = call i32 @hecc_read_mbx(%struct.ti_hecc_priv* %61, i32 %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @cpu_to_be32(i32 %65)
  %67 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %68 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i32*
  store i32 %66, i32* %70, align 4
  %71 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %72 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 4
  br i1 %74, label %75, label %87

75:                                               ; preds = %55
  %76 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %9, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @HECC_CANMDH, align 4
  %79 = call i32 @hecc_read_mbx(%struct.ti_hecc_priv* %76, i32 %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @cpu_to_be32(i32 %80)
  %82 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %83 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 4
  %86 = inttoptr i64 %85 to i32*
  store i32 %81, i32* %86, align 4
  br label %87

87:                                               ; preds = %75, %55
  %88 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %9, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @hecc_read_stamp(%struct.ti_hecc_priv* %88, i32 %89)
  %91 = load i32*, i32** %7, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @HECC_RX_LAST_MBOX, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %87
  %96 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %9, align 8
  %97 = load i32, i32* @HECC_CANRML, align 4
  %98 = call i32 @hecc_read(%struct.ti_hecc_priv* %96, i32 %97)
  %99 = load i32, i32* %11, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br label %102

102:                                              ; preds = %95, %87
  %103 = phi i1 [ false, %87 ], [ %101, %95 ]
  %104 = zext i1 %103 to i32
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* @ENOBUFS, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %107, %102
  %111 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %9, align 8
  %112 = load i32, i32* @HECC_CANRMP, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @hecc_write(%struct.ti_hecc_priv* %111, i32 %112, i32 %113)
  %115 = load i32, i32* %12, align 4
  ret i32 %115
}

declare dso_local %struct.ti_hecc_priv* @rx_offload_to_priv(%struct.can_rx_offload*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hecc_read_mbx(%struct.ti_hecc_priv*, i32, i32) #1

declare dso_local i32 @get_can_dlc(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @hecc_read_stamp(%struct.ti_hecc_priv*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hecc_read(%struct.ti_hecc_priv*, i32) #1

declare dso_local i32 @hecc_write(%struct.ti_hecc_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
