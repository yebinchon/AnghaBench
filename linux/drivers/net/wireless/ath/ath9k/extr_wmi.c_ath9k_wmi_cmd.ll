; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wmi.c_ath9k_wmi_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wmi.c_ath9k_wmi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32, i32, i64, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ath_hw* }
%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }
%struct.sk_buff = type { i32 }

@AH_UNPLUGGED = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Timeout waiting for WMI command: %s\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"WMI failure for: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_wmi_cmd(%struct.wmi* %0, i32 %1, i32* %2, i64 %3, i32* %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.wmi*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ath_hw*, align 8
  %17 = alloca %struct.ath_common*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %22 = load %struct.wmi*, %struct.wmi** %9, align 8
  %23 = getelementptr inbounds %struct.wmi, %struct.wmi* %22, i32 0, i32 5
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.ath_hw*, %struct.ath_hw** %25, align 8
  store %struct.ath_hw* %26, %struct.ath_hw** %16, align 8
  %27 = load %struct.ath_hw*, %struct.ath_hw** %16, align 8
  %28 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %27)
  store %struct.ath_common* %28, %struct.ath_common** %17, align 8
  store i64 8, i64* %18, align 8
  store i32 0, i32* %21, align 4
  %29 = load %struct.ath_hw*, %struct.ath_hw** %16, align 8
  %30 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AH_UNPLUGGED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %124

36:                                               ; preds = %7
  %37 = load i64, i64* %18, align 8
  %38 = load i64, i64* %12, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i32, i32* @GFP_ATOMIC, align 4
  %41 = call %struct.sk_buff* @alloc_skb(i64 %39, i32 %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %19, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %124

47:                                               ; preds = %36
  %48 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %49 = load i64, i64* %18, align 8
  %50 = call i32 @skb_reserve(%struct.sk_buff* %48, i64 %49)
  %51 = load i64, i64* %12, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i32*, i32** %11, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @skb_put_data(%struct.sk_buff* %57, i32* %58, i64 %59)
  br label %61

61:                                               ; preds = %56, %53, %47
  %62 = load %struct.wmi*, %struct.wmi** %9, align 8
  %63 = getelementptr inbounds %struct.wmi, %struct.wmi* %62, i32 0, i32 0
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.wmi*, %struct.wmi** %9, align 8
  %66 = getelementptr inbounds %struct.wmi, %struct.wmi* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @EPROTO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %21, align 4
  br label %112

73:                                               ; preds = %61
  %74 = load i32*, i32** %13, align 8
  %75 = load %struct.wmi*, %struct.wmi** %9, align 8
  %76 = getelementptr inbounds %struct.wmi, %struct.wmi* %75, i32 0, i32 3
  store i32* %74, i32** %76, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load %struct.wmi*, %struct.wmi** %9, align 8
  %79 = getelementptr inbounds %struct.wmi, %struct.wmi* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load %struct.wmi*, %struct.wmi** %9, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i64, i64* %12, align 8
  %84 = call i32 @ath9k_wmi_cmd_issue(%struct.wmi* %80, %struct.sk_buff* %81, i32 %82, i64 %83)
  store i32 %84, i32* %21, align 4
  %85 = load i32, i32* %21, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %73
  br label %112

88:                                               ; preds = %73
  %89 = load %struct.wmi*, %struct.wmi** %9, align 8
  %90 = getelementptr inbounds %struct.wmi, %struct.wmi* %89, i32 0, i32 1
  %91 = load i64, i64* %15, align 8
  %92 = call i64 @wait_for_completion_timeout(i32* %90, i64 %91)
  store i64 %92, i64* %20, align 8
  %93 = load i64, i64* %20, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %108, label %95

95:                                               ; preds = %88
  %96 = load %struct.ath_common*, %struct.ath_common** %17, align 8
  %97 = load i32, i32* @WMI, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @wmi_cmd_to_name(i32 %98)
  %100 = call i32 @ath_dbg(%struct.ath_common* %96, i32 %97, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load %struct.wmi*, %struct.wmi** %9, align 8
  %102 = getelementptr inbounds %struct.wmi, %struct.wmi* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %105 = call i32 @kfree_skb(%struct.sk_buff* %104)
  %106 = load i32, i32* @ETIMEDOUT, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %8, align 4
  br label %124

108:                                              ; preds = %88
  %109 = load %struct.wmi*, %struct.wmi** %9, align 8
  %110 = getelementptr inbounds %struct.wmi, %struct.wmi* %109, i32 0, i32 0
  %111 = call i32 @mutex_unlock(i32* %110)
  store i32 0, i32* %8, align 4
  br label %124

112:                                              ; preds = %87, %70
  %113 = load %struct.ath_common*, %struct.ath_common** %17, align 8
  %114 = load i32, i32* @WMI, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @wmi_cmd_to_name(i32 %115)
  %117 = call i32 @ath_dbg(%struct.ath_common* %113, i32 %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load %struct.wmi*, %struct.wmi** %9, align 8
  %119 = getelementptr inbounds %struct.wmi, %struct.wmi* %118, i32 0, i32 0
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %122 = call i32 @kfree_skb(%struct.sk_buff* %121)
  %123 = load i32, i32* %21, align 4
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %112, %108, %95, %44, %35
  %125 = load i32, i32* %8, align 4
  ret i32 %125
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ath9k_wmi_cmd_issue(%struct.wmi*, %struct.sk_buff*, i32, i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @wmi_cmd_to_name(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
