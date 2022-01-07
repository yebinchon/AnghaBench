; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_wait_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_wait_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htc = type { i32, i32, i8*, i8*, i64, i32, %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.ath10k_htc_msg = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ATH10K_HTC_WAIT_TIMEOUT_HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"failed to receive control response completion, polling..\0A\00", align 1
@CE_COUNT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ctl_resp never came in (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Invalid HTC ready msg len:%d\0A\00", align 1
@ECOMM = common dso_local global i32 0, align 4
@ATH10K_HTC_MSG_READY_ID = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Invalid HTC ready msg: 0x%x\0A\00", align 1
@ATH10K_DBG_HTC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Target ready! transmit resources: %d size:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Invalid credit size received\0A\00", align 1
@u8 = common dso_local global i32 0, align 4
@HTC_HOST_MAX_MSG_PER_RX_BUNDLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"Extended ready message. RX bundle size: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_htc_wait_target(%struct.ath10k_htc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_htc*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ath10k_htc_msg*, align 8
  %9 = alloca i8*, align 8
  store %struct.ath10k_htc* %0, %struct.ath10k_htc** %3, align 8
  %10 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %11 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %10, i32 0, i32 6
  %12 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  store %struct.ath10k* %12, %struct.ath10k** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %14 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %13, i32 0, i32 5
  %15 = load i32, i32* @ATH10K_HTC_WAIT_TIMEOUT_HZ, align 4
  %16 = call i64 @wait_for_completion_timeout(i32* %14, i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %46, label %19

19:                                               ; preds = %1
  %20 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %21 = call i32 @ath10k_warn(%struct.ath10k* %20, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %32, %19
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @CE_COUNT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %28 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %27, i32 0, i32 6
  %29 = load %struct.ath10k*, %struct.ath10k** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ath10k_hif_send_complete_check(%struct.ath10k* %29, i32 %30, i32 1)
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %22

35:                                               ; preds = %22
  %36 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %37 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %36, i32 0, i32 5
  %38 = load i32, i32* @ATH10K_HTC_WAIT_TIMEOUT_HZ, align 4
  %39 = call i64 @wait_for_completion_timeout(i32* %37, i32 %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %35
  br label %46

46:                                               ; preds = %45, %1
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %149

54:                                               ; preds = %46
  %55 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %56 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %58, 12
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %62 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %63 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @ECOMM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %149

68:                                               ; preds = %54
  %69 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %70 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.ath10k_htc_msg*
  store %struct.ath10k_htc_msg* %72, %struct.ath10k_htc_msg** %8, align 8
  %73 = load %struct.ath10k_htc_msg*, %struct.ath10k_htc_msg** %8, align 8
  %74 = getelementptr inbounds %struct.ath10k_htc_msg, %struct.ath10k_htc_msg* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @__le16_to_cpu(i32 %76)
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i8*, i8** @ATH10K_HTC_MSG_READY_ID, align 8
  %80 = icmp ne i8* %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %68
  %82 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  %85 = load i32, i32* @ECOMM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %149

87:                                               ; preds = %68
  %88 = load %struct.ath10k_htc_msg*, %struct.ath10k_htc_msg** %8, align 8
  %89 = getelementptr inbounds %struct.ath10k_htc_msg, %struct.ath10k_htc_msg* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @__le16_to_cpu(i32 %91)
  %93 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %94 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load %struct.ath10k_htc_msg*, %struct.ath10k_htc_msg** %8, align 8
  %96 = getelementptr inbounds %struct.ath10k_htc_msg, %struct.ath10k_htc_msg* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @__le16_to_cpu(i32 %98)
  %100 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %101 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %103 = load i32, i32* @ATH10K_DBG_HTC, align 4
  %104 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %105 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %109 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 (%struct.ath10k*, i32, i8*, i32, ...) @ath10k_dbg(%struct.ath10k* %102, i32 %103, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %107, i8* %110)
  %112 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %113 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %112, i32 0, i32 3
  %114 = load i8*, i8** %113, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %121, label %116

116:                                              ; preds = %87
  %117 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %118 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %116, %87
  %122 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %123 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %122, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %124 = load i32, i32* @ECOMM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  br label %149

126:                                              ; preds = %116
  %127 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %128 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = icmp uge i64 %130, 8
  br i1 %131, label %132, label %148

132:                                              ; preds = %126
  %133 = load i32, i32* @u8, align 4
  %134 = load %struct.ath10k_htc_msg*, %struct.ath10k_htc_msg** %8, align 8
  %135 = getelementptr inbounds %struct.ath10k_htc_msg, %struct.ath10k_htc_msg* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @HTC_HOST_MAX_MSG_PER_RX_BUNDLE, align 4
  %139 = call i32 @min_t(i32 %133, i32 %137, i32 %138)
  %140 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %141 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %143 = load i32, i32* @ATH10K_DBG_HTC, align 4
  %144 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %145 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (%struct.ath10k*, i32, i8*, i32, ...) @ath10k_dbg(%struct.ath10k* %142, i32 %143, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %132, %126
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %148, %121, %81, %60, %49
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

declare dso_local i32 @ath10k_hif_send_complete_check(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, ...) #1

declare dso_local i8* @__le16_to_cpu(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, ...) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
