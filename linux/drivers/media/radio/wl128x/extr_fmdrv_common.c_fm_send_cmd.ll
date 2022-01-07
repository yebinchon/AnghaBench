; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fm_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fm_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { i32, i32, i32 }
%struct.completion = type { i32 }
%struct.sk_buff = type { i32 }
%struct.fm_cmd_msg_hdr = type { i32, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { %struct.completion*, i64 }

@FM_INTERRUPT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Invalid fm opcode - %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FM_FW_DW_INPROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Payload data is NULL during fw download\0A\00", align 1
@FM_CMD_MSG_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"No memory to create new SKB\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FM_INTTASK_RUNNING = common dso_local global i32 0, align 4
@FM_PKT_LOGICAL_CHAN_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fmdev*, i64, i32, i8*, i32, %struct.completion*)* @fm_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm_send_cmd(%struct.fmdev* %0, i64 %1, i32 %2, i8* %3, i32 %4, %struct.completion* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.fmdev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.completion*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.fm_cmd_msg_hdr*, align 8
  %16 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.completion* %5, %struct.completion** %13, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @FM_INTERRUPT, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = load i64, i64* %9, align 8
  %22 = call i32 (i8*, ...) @fmerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %150

25:                                               ; preds = %6
  %26 = load i32, i32* @FM_FW_DW_INPROGRESS, align 4
  %27 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %28 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %27, i32 0, i32 2
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i8*, i8** %11, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = call i32 (i8*, ...) @fmerr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %150

38:                                               ; preds = %31, %25
  %39 = load i32, i32* @FM_FW_DW_INPROGRESS, align 4
  %40 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %41 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %40, i32 0, i32 2
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @FM_CMD_MSG_HDR_SIZE, align 4
  %46 = load i8*, i8** %11, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %12, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ 0, %48 ], [ %50, %49 ]
  %53 = add nsw i32 %45, %52
  store i32 %53, i32* %16, align 4
  br label %56

54:                                               ; preds = %38
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %16, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* @GFP_ATOMIC, align 4
  %59 = call %struct.sk_buff* @alloc_skb(i32 %57, i32 %58)
  store %struct.sk_buff* %59, %struct.sk_buff** %14, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = call i32 (i8*, ...) @fmerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %150

66:                                               ; preds = %56
  %67 = load i32, i32* @FM_FW_DW_INPROGRESS, align 4
  %68 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %69 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %68, i32 0, i32 2
  %70 = call i64 @test_bit(i32 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i32, i32* @FM_INTTASK_RUNNING, align 4
  %74 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %75 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %74, i32 0, i32 2
  %76 = call i64 @test_bit(i32 %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %118

78:                                               ; preds = %72, %66
  %79 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %80 = load i32, i32* @FM_CMD_MSG_HDR_SIZE, align 4
  %81 = call %struct.fm_cmd_msg_hdr* @skb_put(%struct.sk_buff* %79, i32 %80)
  store %struct.fm_cmd_msg_hdr* %81, %struct.fm_cmd_msg_hdr** %15, align 8
  %82 = load i32, i32* @FM_PKT_LOGICAL_CHAN_NUMBER, align 4
  %83 = load %struct.fm_cmd_msg_hdr*, %struct.fm_cmd_msg_hdr** %15, align 8
  %84 = getelementptr inbounds %struct.fm_cmd_msg_hdr, %struct.fm_cmd_msg_hdr* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %90

88:                                               ; preds = %78
  %89 = load i32, i32* %12, align 4
  br label %90

90:                                               ; preds = %88, %87
  %91 = phi i32 [ 0, %87 ], [ %89, %88 ]
  %92 = add nsw i32 %91, 3
  %93 = load %struct.fm_cmd_msg_hdr*, %struct.fm_cmd_msg_hdr** %15, align 8
  %94 = getelementptr inbounds %struct.fm_cmd_msg_hdr, %struct.fm_cmd_msg_hdr* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load %struct.fm_cmd_msg_hdr*, %struct.fm_cmd_msg_hdr** %15, align 8
  %97 = getelementptr inbounds %struct.fm_cmd_msg_hdr, %struct.fm_cmd_msg_hdr* %96, i32 0, i32 3
  store i64 %95, i64* %97, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.fm_cmd_msg_hdr*, %struct.fm_cmd_msg_hdr** %15, align 8
  %100 = getelementptr inbounds %struct.fm_cmd_msg_hdr, %struct.fm_cmd_msg_hdr* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.fm_cmd_msg_hdr*, %struct.fm_cmd_msg_hdr** %15, align 8
  %103 = getelementptr inbounds %struct.fm_cmd_msg_hdr, %struct.fm_cmd_msg_hdr* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i64, i64* %9, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %106 = call %struct.TYPE_2__* @fm_cb(%struct.sk_buff* %105)
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  store i64 %104, i64* %107, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %90
  %111 = load i8*, i8** %11, align 8
  %112 = bitcast i8* %111 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @cpu_to_be16(i32 %113)
  %115 = load i8*, i8** %11, align 8
  %116 = bitcast i8* %115 to i32*
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %110, %90
  br label %130

118:                                              ; preds = %72
  %119 = load i8*, i8** %11, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %129

121:                                              ; preds = %118
  %122 = load i8*, i8** %11, align 8
  %123 = bitcast i8* %122 to i64*
  %124 = getelementptr inbounds i64, i64* %123, i64 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %127 = call %struct.TYPE_2__* @fm_cb(%struct.sk_buff* %126)
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  store i64 %125, i64* %128, align 8
  br label %129

129:                                              ; preds = %121, %118
  br label %130

130:                                              ; preds = %129, %117
  %131 = load i8*, i8** %11, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @skb_put_data(%struct.sk_buff* %134, i8* %135, i32 %136)
  br label %138

138:                                              ; preds = %133, %130
  %139 = load %struct.completion*, %struct.completion** %13, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %141 = call %struct.TYPE_2__* @fm_cb(%struct.sk_buff* %140)
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  store %struct.completion* %139, %struct.completion** %142, align 8
  %143 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %144 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %143, i32 0, i32 1
  %145 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %146 = call i32 @skb_queue_tail(i32* %144, %struct.sk_buff* %145)
  %147 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %148 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %147, i32 0, i32 0
  %149 = call i32 @tasklet_schedule(i32* %148)
  store i32 0, i32* %7, align 4
  br label %150

150:                                              ; preds = %138, %62, %34, %20
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

declare dso_local i32 @fmerr(i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local %struct.fm_cmd_msg_hdr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_2__* @fm_cb(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
