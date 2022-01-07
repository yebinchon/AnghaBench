; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fmc_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fmc_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { i32, %struct.sk_buff*, i32 }
%struct.sk_buff = type { i64 }
%struct.fm_event_msg_hdr = type { i32, i32 }

@FM_DRV_TX_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Timeout(%d sec),didn't get regcompletion signal from RX tasklet\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Response SKB is missing\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Received event pkt status(%d) is not zero\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fmc_send_cmd(%struct.fmdev* %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.fmdev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca %struct.fm_event_msg_hdr*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load %struct.fmdev*, %struct.fmdev** %9, align 8
  %21 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %20, i32 0, i32 2
  %22 = call i32 @init_completion(i32* %21)
  %23 = load %struct.fmdev*, %struct.fmdev** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i8*, i8** %12, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.fmdev*, %struct.fmdev** %9, align 8
  %29 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %28, i32 0, i32 2
  %30 = call i32 @fm_send_cmd(%struct.fmdev* %23, i32 %24, i32 %25, i8* %26, i32 %27, i32* %29)
  store i32 %30, i32* %19, align 4
  %31 = load i32, i32* %19, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %7
  %34 = load i32, i32* %19, align 4
  store i32 %34, i32* %8, align 4
  br label %135

35:                                               ; preds = %7
  %36 = load %struct.fmdev*, %struct.fmdev** %9, align 8
  %37 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %36, i32 0, i32 2
  %38 = load i32, i32* @FM_DRV_TX_TIMEOUT, align 4
  %39 = call i32 @wait_for_completion_timeout(i32* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @FM_DRV_TX_TIMEOUT, align 4
  %43 = call i32 @jiffies_to_msecs(i32 %42)
  %44 = sdiv i32 %43, 1000
  %45 = call i32 (i8*, ...) @fmerr(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %135

48:                                               ; preds = %35
  %49 = load %struct.fmdev*, %struct.fmdev** %9, align 8
  %50 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %49, i32 0, i32 1
  %51 = load %struct.sk_buff*, %struct.sk_buff** %50, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = call i32 (i8*, ...) @fmerr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EFAULT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %135

57:                                               ; preds = %48
  %58 = load %struct.fmdev*, %struct.fmdev** %9, align 8
  %59 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %58, i32 0, i32 0
  %60 = load i64, i64* %18, align 8
  %61 = call i32 @spin_lock_irqsave(i32* %59, i64 %60)
  %62 = load %struct.fmdev*, %struct.fmdev** %9, align 8
  %63 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %62, i32 0, i32 1
  %64 = load %struct.sk_buff*, %struct.sk_buff** %63, align 8
  store %struct.sk_buff* %64, %struct.sk_buff** %16, align 8
  %65 = load %struct.fmdev*, %struct.fmdev** %9, align 8
  %66 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %65, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %66, align 8
  %67 = load %struct.fmdev*, %struct.fmdev** %9, align 8
  %68 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %67, i32 0, i32 0
  %69 = load i64, i64* %18, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = bitcast i8* %74 to %struct.fm_event_msg_hdr*
  store %struct.fm_event_msg_hdr* %75, %struct.fm_event_msg_hdr** %17, align 8
  %76 = load %struct.fm_event_msg_hdr*, %struct.fm_event_msg_hdr** %17, align 8
  %77 = getelementptr inbounds %struct.fm_event_msg_hdr, %struct.fm_event_msg_hdr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %57
  %81 = load %struct.fm_event_msg_hdr*, %struct.fm_event_msg_hdr** %17, align 8
  %82 = getelementptr inbounds %struct.fm_event_msg_hdr, %struct.fm_event_msg_hdr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, ...) @fmerr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %86 = call i32 @kfree_skb(%struct.sk_buff* %85)
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %8, align 4
  br label %135

89:                                               ; preds = %57
  %90 = load i8*, i8** %14, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %121

92:                                               ; preds = %89
  %93 = load i32*, i32** %15, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %121

95:                                               ; preds = %92
  %96 = load %struct.fm_event_msg_hdr*, %struct.fm_event_msg_hdr** %17, align 8
  %97 = getelementptr inbounds %struct.fm_event_msg_hdr, %struct.fm_event_msg_hdr* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %95
  %101 = load %struct.fm_event_msg_hdr*, %struct.fm_event_msg_hdr** %17, align 8
  %102 = getelementptr inbounds %struct.fm_event_msg_hdr, %struct.fm_event_msg_hdr* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ule i32 %103, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %100
  %107 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %108 = call i32 @skb_pull(%struct.sk_buff* %107, i32 8)
  %109 = load i8*, i8** %14, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.fm_event_msg_hdr*, %struct.fm_event_msg_hdr** %17, align 8
  %114 = getelementptr inbounds %struct.fm_event_msg_hdr, %struct.fm_event_msg_hdr* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @memcpy(i8* %109, i64 %112, i32 %115)
  %117 = load %struct.fm_event_msg_hdr*, %struct.fm_event_msg_hdr** %17, align 8
  %118 = getelementptr inbounds %struct.fm_event_msg_hdr, %struct.fm_event_msg_hdr* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %15, align 8
  store i32 %119, i32* %120, align 4
  br label %132

121:                                              ; preds = %100, %95, %92, %89
  %122 = load i32*, i32** %15, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load %struct.fm_event_msg_hdr*, %struct.fm_event_msg_hdr** %17, align 8
  %126 = getelementptr inbounds %struct.fm_event_msg_hdr, %struct.fm_event_msg_hdr* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32*, i32** %15, align 8
  store i32 0, i32* %130, align 4
  br label %131

131:                                              ; preds = %129, %124, %121
  br label %132

132:                                              ; preds = %131, %106
  %133 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %134 = call i32 @kfree_skb(%struct.sk_buff* %133)
  store i32 0, i32* %8, align 4
  br label %135

135:                                              ; preds = %132, %80, %53, %41, %33
  %136 = load i32, i32* %8, align 4
  ret i32 %136
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @fm_send_cmd(%struct.fmdev*, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @fmerr(i8*, ...) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
