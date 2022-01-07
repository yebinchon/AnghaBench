; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_connectservice.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_connectservice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32, i32, i32, i32 }
%struct.htc_service_connect_req = type { i32 }
%struct.htc_service_connect_resp = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"failed to connect to %s service status:%d\0A\00", align 1
@WMI_ENABLED = common dso_local global i32 0, align 4
@WMM_AC_BE = common dso_local global i32 0, align 4
@WMM_AC_BK = common dso_local global i32 0, align 4
@WMM_AC_VI = common dso_local global i32 0, align 4
@WMM_AC_VO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"service id is not mapped %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*, %struct.htc_service_connect_req*, i8*)* @ath6kl_connectservice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_connectservice(%struct.ath6kl* %0, %struct.htc_service_connect_req* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath6kl*, align 8
  %6 = alloca %struct.htc_service_connect_req*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.htc_service_connect_resp, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %5, align 8
  store %struct.htc_service_connect_req* %1, %struct.htc_service_connect_req** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = call i32 @memset(%struct.htc_service_connect_resp* %9, i32 0, i32 4)
  %11 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %12 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.htc_service_connect_req*, %struct.htc_service_connect_req** %6, align 8
  %15 = call i32 @ath6kl_htc_conn_service(i32 %13, %struct.htc_service_connect_req* %14, %struct.htc_service_connect_resp* %9)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20)
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %77

23:                                               ; preds = %3
  %24 = load %struct.htc_service_connect_req*, %struct.htc_service_connect_req** %6, align 8
  %25 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %69 [
    i32 132, label %27
    i32 131, label %45
    i32 130, label %51
    i32 129, label %57
    i32 128, label %63
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @WMI_ENABLED, align 4
  %29 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %30 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %29, i32 0, i32 2
  %31 = call i32 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %35 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.htc_service_connect_resp, %struct.htc_service_connect_resp* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ath6kl_wmi_set_control_ep(i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %33, %27
  %41 = getelementptr inbounds %struct.htc_service_connect_resp, %struct.htc_service_connect_resp* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %44 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %76

45:                                               ; preds = %23
  %46 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %47 = load i32, i32* @WMM_AC_BE, align 4
  %48 = getelementptr inbounds %struct.htc_service_connect_resp, %struct.htc_service_connect_resp* %9, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @set_ac2_ep_map(%struct.ath6kl* %46, i32 %47, i32 %49)
  br label %76

51:                                               ; preds = %23
  %52 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %53 = load i32, i32* @WMM_AC_BK, align 4
  %54 = getelementptr inbounds %struct.htc_service_connect_resp, %struct.htc_service_connect_resp* %9, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @set_ac2_ep_map(%struct.ath6kl* %52, i32 %53, i32 %55)
  br label %76

57:                                               ; preds = %23
  %58 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %59 = load i32, i32* @WMM_AC_VI, align 4
  %60 = getelementptr inbounds %struct.htc_service_connect_resp, %struct.htc_service_connect_resp* %9, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @set_ac2_ep_map(%struct.ath6kl* %58, i32 %59, i32 %61)
  br label %76

63:                                               ; preds = %23
  %64 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %65 = load i32, i32* @WMM_AC_VO, align 4
  %66 = getelementptr inbounds %struct.htc_service_connect_resp, %struct.htc_service_connect_resp* %9, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @set_ac2_ep_map(%struct.ath6kl* %64, i32 %65, i32 %67)
  br label %76

69:                                               ; preds = %23
  %70 = load %struct.htc_service_connect_req*, %struct.htc_service_connect_req** %6, align 8
  %71 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %77

76:                                               ; preds = %63, %57, %51, %45, %40
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %69, %18
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @memset(%struct.htc_service_connect_resp*, i32, i32) #1

declare dso_local i32 @ath6kl_htc_conn_service(i32, %struct.htc_service_connect_req*, %struct.htc_service_connect_resp*) #1

declare dso_local i32 @ath6kl_err(i8*, ...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_wmi_set_control_ep(i32, i32) #1

declare dso_local i32 @set_ac2_ep_map(%struct.ath6kl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
