; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.htc_packet = type { i32, i32, i8*, i8*, i64, i64 }

@HTC_MAX_CTRL_MSG_LEN = common dso_local global i64 0, align 8
@HTC_HDR_LENGTH = common dso_local global i64 0, align 8
@NUM_CONTROL_BUFFERS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NUM_CONTROL_RX_BUFFERS = common dso_local global i32 0, align 4
@ENDPOINT_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*)* @ath6kl_htc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_htc_reset(%struct.htc_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.htc_packet*, align 8
  %7 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  %8 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %9 = call i32 @reset_ep_state(%struct.htc_target* %8)
  %10 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %11 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @HTC_MAX_CTRL_MSG_LEN, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @HTC_HDR_LENGTH, align 8
  %24 = add nsw i64 %22, %23
  br label %29

25:                                               ; preds = %1
  %26 = load i64, i64* @HTC_MAX_CTRL_MSG_LEN, align 8
  %27 = load i64, i64* @HTC_HDR_LENGTH, align 8
  %28 = add nsw i64 %26, %27
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i64 [ %24, %21 ], [ %28, %25 ]
  store i64 %30, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %89, %29
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @NUM_CONTROL_BUFFERS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %92

35:                                               ; preds = %31
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kzalloc(i64 40, i32 %36)
  %38 = bitcast i8* %37 to %struct.htc_packet*
  store %struct.htc_packet* %38, %struct.htc_packet** %6, align 8
  %39 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %40 = icmp ne %struct.htc_packet* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %93

44:                                               ; preds = %35
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @kzalloc(i64 %45, i32 %46)
  %48 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %49 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %51 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %44
  %55 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %56 = call i32 @kfree(%struct.htc_packet* %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %93

59:                                               ; preds = %44
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %62 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %61, i32 0, i32 5
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @NUM_CONTROL_RX_BUFFERS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %59
  %67 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %68 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %67, i32 0, i32 4
  store i64 0, i64* %68, align 8
  %69 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %70 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %73 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* @ENDPOINT_0, align 4
  %75 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %76 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %78 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %77, i32 0, i32 0
  %79 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %80 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %79, i32 0, i32 1
  %81 = call i32 @list_add_tail(i32* %78, i32* %80)
  br label %88

82:                                               ; preds = %59
  %83 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %84 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %83, i32 0, i32 0
  %85 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %86 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %85, i32 0, i32 0
  %87 = call i32 @list_add_tail(i32* %84, i32* %86)
  br label %88

88:                                               ; preds = %82, %66
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %31

92:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %54, %41
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @reset_ep_state(%struct.htc_target*) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @kfree(%struct.htc_packet*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
