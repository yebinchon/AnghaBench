; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_htc_connect_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_htc_connect_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, i32, i32, i32 }
%struct.htc_service_connreq = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.htc_endpoint = type { i32, i32, i32, i32, i32 }
%struct.htc_conn_svc_msg = type { i32, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [42 x i8] c"Endpoint is not available for service %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Failed to allocate buf to sendservice connect req\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HTC_MSG_CONNECT_SERVICE_ID = common dso_local global i32 0, align 4
@ENDPOINT0 = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Service connection timeout for: %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @htc_connect_service(%struct.htc_target* %0, %struct.htc_service_connreq* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.htc_target*, align 8
  %6 = alloca %struct.htc_service_connreq*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.htc_endpoint*, align 8
  %10 = alloca %struct.htc_conn_svc_msg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.htc_target* %0, %struct.htc_target** %5, align 8
  store %struct.htc_service_connreq* %1, %struct.htc_service_connreq** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %14 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.htc_endpoint* @get_next_avail_ep(i32 %15)
  store %struct.htc_endpoint* %16, %struct.htc_endpoint** %9, align 8
  %17 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %18 = icmp ne %struct.htc_endpoint* %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %3
  %20 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %21 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.htc_service_connreq*, %struct.htc_service_connreq** %6, align 8
  %24 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %137

29:                                               ; preds = %3
  %30 = load %struct.htc_service_connreq*, %struct.htc_service_connreq** %6, align 8
  %31 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %34 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.htc_service_connreq*, %struct.htc_service_connreq** %6, align 8
  %36 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %39 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.htc_service_connreq*, %struct.htc_service_connreq** %6, align 8
  %41 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @service_to_ulpipe(i32 %42)
  %44 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %45 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.htc_service_connreq*, %struct.htc_service_connreq** %6, align 8
  %47 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @service_to_dlpipe(i32 %48)
  %50 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %51 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.htc_service_connreq*, %struct.htc_service_connreq** %6, align 8
  %53 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %56 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @GFP_ATOMIC, align 4
  %58 = call %struct.sk_buff* @alloc_skb(i32 36, i32 %57)
  store %struct.sk_buff* %58, %struct.sk_buff** %8, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %29
  %62 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %63 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @dev_err(i32 %64, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %137

68:                                               ; preds = %29
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = call i32 @skb_reserve(%struct.sk_buff* %69, i32 4)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = call %struct.htc_conn_svc_msg* @skb_put(%struct.sk_buff* %71, i32 32)
  store %struct.htc_conn_svc_msg* %72, %struct.htc_conn_svc_msg** %10, align 8
  %73 = load %struct.htc_service_connreq*, %struct.htc_service_connreq** %6, align 8
  %74 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @cpu_to_be16(i32 %75)
  %77 = load %struct.htc_conn_svc_msg*, %struct.htc_conn_svc_msg** %10, align 8
  %78 = getelementptr inbounds %struct.htc_conn_svc_msg, %struct.htc_conn_svc_msg* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @HTC_MSG_CONNECT_SERVICE_ID, align 4
  %80 = call i8* @cpu_to_be16(i32 %79)
  %81 = load %struct.htc_conn_svc_msg*, %struct.htc_conn_svc_msg** %10, align 8
  %82 = getelementptr inbounds %struct.htc_conn_svc_msg, %struct.htc_conn_svc_msg* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load %struct.htc_service_connreq*, %struct.htc_service_connreq** %6, align 8
  %84 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @cpu_to_be16(i32 %85)
  %87 = load %struct.htc_conn_svc_msg*, %struct.htc_conn_svc_msg** %10, align 8
  %88 = getelementptr inbounds %struct.htc_conn_svc_msg, %struct.htc_conn_svc_msg* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %90 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.htc_conn_svc_msg*, %struct.htc_conn_svc_msg** %10, align 8
  %93 = getelementptr inbounds %struct.htc_conn_svc_msg, %struct.htc_conn_svc_msg* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %95 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.htc_conn_svc_msg*, %struct.htc_conn_svc_msg** %10, align 8
  %98 = getelementptr inbounds %struct.htc_conn_svc_msg, %struct.htc_conn_svc_msg* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ENDPOINT0, align 4
  %105 = call i32 @htc_issue_send(%struct.htc_target* %99, %struct.sk_buff* %100, i32 %103, i32 0, i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %68
  br label %133

109:                                              ; preds = %68
  %110 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %111 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %110, i32 0, i32 2
  %112 = load i32, i32* @HZ, align 4
  %113 = call i64 @wait_for_completion_timeout(i32* %111, i32 %112)
  store i64 %113, i64* %12, align 8
  %114 = load i64, i64* %12, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %109
  %117 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %118 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.htc_service_connreq*, %struct.htc_service_connreq** %6, align 8
  %121 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i8*, ...) @dev_err(i32 %119, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  %124 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %125 = call i32 @kfree_skb(%struct.sk_buff* %124)
  %126 = load i32, i32* @ETIMEDOUT, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %4, align 4
  br label %137

128:                                              ; preds = %109
  %129 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %130 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %7, align 8
  store i32 %131, i32* %132, align 4
  store i32 0, i32* %4, align 4
  br label %137

133:                                              ; preds = %108
  %134 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %135 = call i32 @kfree_skb(%struct.sk_buff* %134)
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %133, %128, %116, %61, %19
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.htc_endpoint* @get_next_avail_ep(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @service_to_ulpipe(i32) #1

declare dso_local i32 @service_to_dlpipe(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.htc_conn_svc_msg* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @htc_issue_send(%struct.htc_target*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
