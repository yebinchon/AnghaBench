; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_testmode.c_ath10k_tm_cmd_wmi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_testmode.c_ath10k_tm_cmd_wmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i64, i32 }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }

@ATH10K_STATE_UTF = common dso_local global i64 0, align 8
@ENETDOWN = common dso_local global i32 0, align 4
@ATH10K_TM_ATTR_DATA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ATH10K_TM_ATTR_WMI_CMDID = common dso_local global i64 0, align 8
@ATH10K_DBG_TESTMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"testmode cmd wmi cmd_id %d buf %pK buf_len %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"failed to transmit wmi command (testmode): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.nlattr**)* @ath10k_tm_cmd_wmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_tm_cmd_wmi(%struct.ath10k* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %4, align 8
  %10 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %11 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %14 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ATH10K_STATE_UTF, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENETDOWN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %92

21:                                               ; preds = %2
  %22 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %23 = load i64, i64* @ATH10K_TM_ATTR_DATA, align 8
  %24 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %23
  %25 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %26 = icmp ne %struct.nlattr* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %92

30:                                               ; preds = %21
  %31 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %32 = load i64, i64* @ATH10K_TM_ATTR_WMI_CMDID, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = icmp ne %struct.nlattr* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %92

39:                                               ; preds = %30
  %40 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %41 = load i64, i64* @ATH10K_TM_ATTR_DATA, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = call i8* @nla_data(%struct.nlattr* %43)
  store i8* %44, i8** %9, align 8
  %45 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %46 = load i64, i64* @ATH10K_TM_ATTR_DATA, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %45, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = call i32 @nla_len(%struct.nlattr* %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %51 = load i64, i64* @ATH10K_TM_ATTR_WMI_CMDID, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %50, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = call i32 @nla_get_u32(%struct.nlattr* %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %56 = load i32, i32* @ATH10K_DBG_TESTMODE, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @ath10k_dbg(%struct.ath10k* %55, i32 %56, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %57, i8* %58, i32 %59)
  %61 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %62 = load i32, i32* @ATH10K_DBG_TESTMODE, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @ath10k_dbg_dump(%struct.ath10k* %61, i32 %62, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %63, i32 %64)
  %66 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %66, i32 %67)
  store %struct.sk_buff* %68, %struct.sk_buff** %5, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = icmp ne %struct.sk_buff* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %39
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %92

74:                                               ; preds = %39
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @memcpy(i32 %77, i8* %78, i32 %79)
  %81 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @ath10k_wmi_cmd_send(%struct.ath10k* %81, %struct.sk_buff* %82, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %74
  %88 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @ath10k_warn(%struct.ath10k* %88, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %92

91:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %91, %87, %71, %36, %27, %18
  %93 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %94 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %93, i32 0, i32 1
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @ath10k_dbg_dump(%struct.ath10k*, i32, i32*, i8*, i8*, i32) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @ath10k_wmi_cmd_send(%struct.ath10k*, %struct.sk_buff*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
