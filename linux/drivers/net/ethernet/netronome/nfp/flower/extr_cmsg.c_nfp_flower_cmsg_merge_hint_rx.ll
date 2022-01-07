; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_cmsg_merge_hint_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_cmsg_merge_hint_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nfp_flower_cmsg_merge_hint = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nfp_fl_payload = type { i32 }

@flow = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Merge hint ctrl msg too short - %d bytes but expect %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Merge hint contains %d flows - two are expected\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Invalid flow in merge hint\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Flow merge memory fail.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_app*, %struct.sk_buff*)* @nfp_flower_cmsg_merge_hint_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_flower_cmsg_merge_hint_rx(%struct.nfp_app* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_flower_cmsg_merge_hint*, align 8
  %7 = alloca [2 x %struct.nfp_fl_payload*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @nfp_flower_cmsg_get_data_len(%struct.sk_buff* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call %struct.nfp_flower_cmsg_merge_hint* @nfp_flower_cmsg_get_data(%struct.sk_buff* %14)
  store %struct.nfp_flower_cmsg_merge_hint* %15, %struct.nfp_flower_cmsg_merge_hint** %6, align 8
  %16 = load %struct.nfp_flower_cmsg_merge_hint*, %struct.nfp_flower_cmsg_merge_hint** %6, align 8
  %17 = getelementptr inbounds %struct.nfp_flower_cmsg_merge_hint, %struct.nfp_flower_cmsg_merge_hint* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.nfp_flower_cmsg_merge_hint*, %struct.nfp_flower_cmsg_merge_hint** %6, align 8
  %22 = load i32, i32* @flow, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @struct_size(%struct.nfp_flower_cmsg_merge_hint* %21, i32 %22, i32 %23)
  %25 = icmp ult i32 %20, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.nfp_flower_cmsg_merge_hint*, %struct.nfp_flower_cmsg_merge_hint** %6, align 8
  %30 = load i32, i32* @flow, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @struct_size(%struct.nfp_flower_cmsg_merge_hint* %29, i32 %30, i32 %31)
  %33 = call i32 (%struct.nfp_app*, i8*, ...) @nfp_flower_cmsg_warn(%struct.nfp_app* %27, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32)
  br label %92

34:                                               ; preds = %2
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 2
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (%struct.nfp_app*, i8*, ...) @nfp_flower_cmsg_warn(%struct.nfp_app* %38, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %92

41:                                               ; preds = %34
  %42 = call i32 (...) @rtnl_lock()
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %72, %41
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %43
  %48 = load %struct.nfp_flower_cmsg_merge_hint*, %struct.nfp_flower_cmsg_merge_hint** %6, align 8
  %49 = getelementptr inbounds %struct.nfp_flower_cmsg_merge_hint, %struct.nfp_flower_cmsg_merge_hint* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be32_to_cpu(i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call %struct.nfp_fl_payload* @nfp_flower_get_fl_payload_from_ctx(%struct.nfp_app* %57, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [2 x %struct.nfp_fl_payload*], [2 x %struct.nfp_fl_payload*]* %7, i64 0, i64 %61
  store %struct.nfp_fl_payload* %59, %struct.nfp_fl_payload** %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [2 x %struct.nfp_fl_payload*], [2 x %struct.nfp_fl_payload*]* %7, i64 0, i64 %64
  %66 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %65, align 8
  %67 = icmp ne %struct.nfp_fl_payload* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %47
  %69 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %70 = call i32 (%struct.nfp_app*, i8*, ...) @nfp_flower_cmsg_warn(%struct.nfp_app* %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %90

71:                                               ; preds = %47
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %43

75:                                               ; preds = %43
  %76 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %77 = getelementptr inbounds [2 x %struct.nfp_fl_payload*], [2 x %struct.nfp_fl_payload*]* %7, i64 0, i64 0
  %78 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %77, align 16
  %79 = getelementptr inbounds [2 x %struct.nfp_fl_payload*], [2 x %struct.nfp_fl_payload*]* %7, i64 0, i64 1
  %80 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %79, align 8
  %81 = call i32 @nfp_flower_merge_offloaded_flows(%struct.nfp_app* %76, %struct.nfp_fl_payload* %78, %struct.nfp_fl_payload* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %75
  %87 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %88 = call i32 (%struct.nfp_app*, i8*, ...) @nfp_flower_cmsg_warn(%struct.nfp_app* %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %75
  br label %90

90:                                               ; preds = %89, %68
  %91 = call i32 (...) @rtnl_unlock()
  br label %92

92:                                               ; preds = %90, %37, %26
  ret void
}

declare dso_local i32 @nfp_flower_cmsg_get_data_len(%struct.sk_buff*) #1

declare dso_local %struct.nfp_flower_cmsg_merge_hint* @nfp_flower_cmsg_get_data(%struct.sk_buff*) #1

declare dso_local i32 @struct_size(%struct.nfp_flower_cmsg_merge_hint*, i32, i32) #1

declare dso_local i32 @nfp_flower_cmsg_warn(%struct.nfp_app*, i8*, ...) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.nfp_fl_payload* @nfp_flower_get_fl_payload_from_ctx(%struct.nfp_app*, i32) #1

declare dso_local i32 @nfp_flower_merge_offloaded_flows(%struct.nfp_app*, %struct.nfp_fl_payload*, %struct.nfp_fl_payload*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
