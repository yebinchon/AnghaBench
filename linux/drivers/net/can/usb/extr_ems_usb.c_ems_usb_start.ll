; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ems_usb.c_ems_usb_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ems_usb.c_ems_usb_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ems_usb = type { i32, %struct.TYPE_2__, %struct.urb*, i64*, i32, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.urb = type { i32, i32 }
%struct.net_device = type { i32 }

@MAX_RX_URBS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RX_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No memory left for USB buffer\0A\00", align 1
@ems_usb_read_bulk_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"couldn't setup read URBs\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"rx performance may be slow\0A\00", align 1
@INTR_IN_BUFFER_SIZE = common dso_local global i32 0, align 4
@ems_usb_read_interrupt_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"intr URB submit failed: %d\0A\00", align 1
@CONTR_CAN_MESSAGE = common dso_local global i32 0, align 4
@CONTR_CONT_ON = common dso_local global i32 0, align 4
@CONTR_CAN_STATE = common dso_local global i32 0, align 4
@CONTR_BUS_ERROR = common dso_local global i32 0, align 4
@SJA1000_MOD_NORMAL = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"couldn't submit control: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ems_usb*)* @ems_usb_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ems_usb_start(%struct.ems_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ems_usb*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32*, align 8
  store %struct.ems_usb* %0, %struct.ems_usb** %3, align 8
  %9 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %10 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %9, i32 0, i32 6
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %13 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %12, i32 0, i32 3
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %17 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %16, i32 0, i32 0
  store i32 50, i32* %17, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %93, %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MAX_RX_URBS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %96

22:                                               ; preds = %18
  store %struct.urb* null, %struct.urb** %7, align 8
  store i32* null, i32** %8, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %23)
  store %struct.urb* %24, %struct.urb** %7, align 8
  %25 = load %struct.urb*, %struct.urb** %7, align 8
  %26 = icmp ne %struct.urb* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %96

30:                                               ; preds = %22
  %31 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %32 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @RX_BUFFER_SIZE, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = load %struct.urb*, %struct.urb** %7, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 0
  %38 = call i32* @usb_alloc_coherent(i32 %33, i32 %34, i32 %35, i32* %37)
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %30
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = call i32 @netdev_err(%struct.net_device* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.urb*, %struct.urb** %7, align 8
  %45 = call i32 @usb_free_urb(%struct.urb* %44)
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %96

48:                                               ; preds = %30
  %49 = load %struct.urb*, %struct.urb** %7, align 8
  %50 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %51 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %54 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @usb_rcvbulkpipe(i32 %55, i32 2)
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* @RX_BUFFER_SIZE, align 4
  %59 = load i32, i32* @ems_usb_read_bulk_callback, align 4
  %60 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %61 = call i32 @usb_fill_bulk_urb(%struct.urb* %49, i32 %52, i32 %56, i32* %57, i32 %58, i32 %59, %struct.ems_usb* %60)
  %62 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %63 = load %struct.urb*, %struct.urb** %7, align 8
  %64 = getelementptr inbounds %struct.urb, %struct.urb* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.urb*, %struct.urb** %7, align 8
  %68 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %69 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %68, i32 0, i32 5
  %70 = call i32 @usb_anchor_urb(%struct.urb* %67, i32* %69)
  %71 = load %struct.urb*, %struct.urb** %7, align 8
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i32 @usb_submit_urb(%struct.urb* %71, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %48
  %77 = load %struct.urb*, %struct.urb** %7, align 8
  %78 = call i32 @usb_unanchor_urb(%struct.urb* %77)
  %79 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %80 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @RX_BUFFER_SIZE, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = load %struct.urb*, %struct.urb** %7, align 8
  %85 = getelementptr inbounds %struct.urb, %struct.urb* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @usb_free_coherent(i32 %81, i32 %82, i32* %83, i32 %86)
  %88 = load %struct.urb*, %struct.urb** %7, align 8
  %89 = call i32 @usb_free_urb(%struct.urb* %88)
  br label %96

90:                                               ; preds = %48
  %91 = load %struct.urb*, %struct.urb** %7, align 8
  %92 = call i32 @usb_free_urb(%struct.urb* %91)
  br label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %18

96:                                               ; preds = %76, %41, %27, %18
  %97 = load i32, i32* %6, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.net_device*, %struct.net_device** %4, align 8
  %101 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %2, align 4
  br label %184

103:                                              ; preds = %96
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @MAX_RX_URBS, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load %struct.net_device*, %struct.net_device** %4, align 8
  %109 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %103
  %111 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %112 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %111, i32 0, i32 2
  %113 = load %struct.urb*, %struct.urb** %112, align 8
  %114 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %115 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %118 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @usb_rcvintpipe(i32 %119, i32 1)
  %121 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %122 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %121, i32 0, i32 3
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* @INTR_IN_BUFFER_SIZE, align 4
  %125 = load i32, i32* @ems_usb_read_interrupt_callback, align 4
  %126 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %127 = call i32 @usb_fill_int_urb(%struct.urb* %113, i32 %116, i32 %120, i64* %123, i32 %124, i32 %125, %struct.ems_usb* %126, i32 1)
  %128 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %129 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %128, i32 0, i32 2
  %130 = load %struct.urb*, %struct.urb** %129, align 8
  %131 = load i32, i32* @GFP_KERNEL, align 4
  %132 = call i32 @usb_submit_urb(%struct.urb* %130, i32 %131)
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %110
  %136 = load %struct.net_device*, %struct.net_device** %4, align 8
  %137 = load i32, i32* %5, align 4
  %138 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %5, align 4
  store i32 %139, i32* %2, align 4
  br label %184

140:                                              ; preds = %110
  %141 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %142 = load i32, i32* @CONTR_CAN_MESSAGE, align 4
  %143 = load i32, i32* @CONTR_CONT_ON, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @ems_usb_control_cmd(%struct.ems_usb* %141, i32 %144)
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  br label %179

149:                                              ; preds = %140
  %150 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %151 = load i32, i32* @CONTR_CAN_STATE, align 4
  %152 = load i32, i32* @CONTR_CONT_ON, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @ems_usb_control_cmd(%struct.ems_usb* %150, i32 %153)
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  br label %179

158:                                              ; preds = %149
  %159 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %160 = load i32, i32* @CONTR_BUS_ERROR, align 4
  %161 = load i32, i32* @CONTR_CONT_ON, align 4
  %162 = or i32 %160, %161
  %163 = call i32 @ems_usb_control_cmd(%struct.ems_usb* %159, i32 %162)
  store i32 %163, i32* %5, align 4
  %164 = load i32, i32* %5, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  br label %179

167:                                              ; preds = %158
  %168 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %169 = load i32, i32* @SJA1000_MOD_NORMAL, align 4
  %170 = call i32 @ems_usb_write_mode(%struct.ems_usb* %168, i32 %169)
  store i32 %170, i32* %5, align 4
  %171 = load i32, i32* %5, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %179

174:                                              ; preds = %167
  %175 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %176 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %177 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  store i32 %175, i32* %178, align 4
  store i32 0, i32* %2, align 4
  br label %184

179:                                              ; preds = %173, %166, %157, %148
  %180 = load %struct.net_device*, %struct.net_device** %4, align 8
  %181 = load i32, i32* %5, align 4
  %182 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %180, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %5, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %179, %174, %135, %99
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32* @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32*, i32, i32, %struct.ems_usb*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i64*, i32, i32, %struct.ems_usb*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @ems_usb_control_cmd(%struct.ems_usb*, i32) #1

declare dso_local i32 @ems_usb_write_mode(%struct.ems_usb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
