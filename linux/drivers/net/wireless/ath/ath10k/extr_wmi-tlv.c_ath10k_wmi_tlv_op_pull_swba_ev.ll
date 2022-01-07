; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_pull_swba_ev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_pull_swba_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.wmi_swba_ev_arg = type { i32 }
%struct.wmi_tlv_swba_parse = type { i64, i64, %struct.TYPE_2__*, %struct.wmi_swba_ev_arg* }
%struct.TYPE_2__ = type { i32 }

@ath10k_wmi_tlv_swba_parse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to parse tlv: %d\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*, %struct.wmi_swba_ev_arg*)* @ath10k_wmi_tlv_op_pull_swba_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_tlv_op_pull_swba_ev(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.wmi_swba_ev_arg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wmi_swba_ev_arg*, align 8
  %8 = alloca %struct.wmi_tlv_swba_parse, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.wmi_swba_ev_arg* %2, %struct.wmi_swba_ev_arg** %7, align 8
  %12 = bitcast %struct.wmi_tlv_swba_parse* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = getelementptr inbounds %struct.wmi_tlv_swba_parse, %struct.wmi_tlv_swba_parse* %8, i32 0, i32 3
  %14 = load %struct.wmi_swba_ev_arg*, %struct.wmi_swba_ev_arg** %7, align 8
  store %struct.wmi_swba_ev_arg* %14, %struct.wmi_swba_ev_arg** %13, align 8
  %15 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ath10k_wmi_tlv_swba_parse, align 4
  %23 = call i32 @ath10k_wmi_tlv_iter(%struct.ath10k* %15, i32 %18, i32 %21, i32 %22, %struct.wmi_tlv_swba_parse* %8)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @ath10k_warn(%struct.ath10k* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %4, align 4
  br label %78

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.wmi_tlv_swba_parse, %struct.wmi_tlv_swba_parse* %8, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @EPROTO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %78

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.wmi_tlv_swba_parse, %struct.wmi_tlv_swba_parse* %8, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.wmi_swba_ev_arg*, %struct.wmi_swba_ev_arg** %7, align 8
  %44 = getelementptr inbounds %struct.wmi_swba_ev_arg, %struct.wmi_swba_ev_arg* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.wmi_swba_ev_arg*, %struct.wmi_swba_ev_arg** %7, align 8
  %46 = getelementptr inbounds %struct.wmi_swba_ev_arg, %struct.wmi_swba_ev_arg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @__le32_to_cpu(i32 %47)
  store i32 %48, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %49

49:                                               ; preds = %61, %38
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @BIT(i32 0)
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %57, %52
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %9, align 4
  %63 = ashr i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %49

64:                                               ; preds = %49
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds %struct.wmi_tlv_swba_parse, %struct.wmi_tlv_swba_parse* %8, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %65, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds %struct.wmi_tlv_swba_parse, %struct.wmi_tlv_swba_parse* %8, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69, %64
  %75 = load i32, i32* @EPROTO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %78

77:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %74, %35, %26
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ath10k_wmi_tlv_iter(%struct.ath10k*, i32, i32, i32, %struct.wmi_tlv_swba_parse*) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #2

declare dso_local i32 @__le32_to_cpu(i32) #2

declare dso_local i32 @BIT(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
