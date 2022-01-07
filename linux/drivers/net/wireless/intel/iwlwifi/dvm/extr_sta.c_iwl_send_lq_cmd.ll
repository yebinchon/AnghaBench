; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_send_lq_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_send_lq_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_rxon_context = type { i32 }
%struct.iwl_link_quality_cmd = type { i64 }
%struct.iwl_host_cmd = type { i32, i32, i32, i32 }

@REPLY_TX_LINK_QUALITY_CMD = common dso_local global i32 0, align 4
@IWL_INVALID_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IWL_STA_DRIVER_ACTIVE = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"init LQ command complete, clearing sta addition status for sta %d\0A\00", align 1
@IWL_STA_UCODE_INPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_send_lq_cmd(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1, %struct.iwl_link_quality_cmd* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_priv*, align 8
  %8 = alloca %struct.iwl_rxon_context*, align 8
  %9 = alloca %struct.iwl_link_quality_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iwl_host_cmd, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %7, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %8, align 8
  store %struct.iwl_link_quality_cmd* %2, %struct.iwl_link_quality_cmd** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %10, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %13, i32 0, i32 1
  %17 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %9, align 8
  %18 = ptrtoint %struct.iwl_link_quality_cmd* %17 to i32
  store i32 %18, i32* %16, align 4
  %19 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %13, i32 0, i32 2
  store i32 8, i32* %19, align 4
  %20 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %13, i32 0, i32 3
  %21 = load i32, i32* @REPLY_TX_LINK_QUALITY_CMD, align 4
  store i32 %21, i32* %20, align 4
  %22 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %9, align 8
  %23 = getelementptr inbounds %struct.iwl_link_quality_cmd, %struct.iwl_link_quality_cmd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IWL_INVALID_STATION, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %127

33:                                               ; preds = %5
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %35 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_bh(i32* %35)
  %37 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %38 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %9, align 8
  %41 = getelementptr inbounds %struct.iwl_link_quality_cmd, %struct.iwl_link_quality_cmd* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IWL_STA_DRIVER_ACTIVE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %33
  %50 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %51 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_bh(i32* %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %127

55:                                               ; preds = %33
  %56 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %57 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock_bh(i32* %57)
  %59 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %60 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %9, align 8
  %61 = call i32 @iwl_dump_lq_cmd(%struct.iwl_priv* %59, %struct.iwl_link_quality_cmd* %60)
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %13, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CMD_ASYNC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %64, %55
  %71 = phi i1 [ false, %55 ], [ %69, %64 ]
  %72 = zext i1 %71 to i32
  %73 = call i64 @WARN_ON(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %127

78:                                               ; preds = %70
  %79 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %80 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %8, align 8
  %81 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %9, align 8
  %82 = call i64 @is_lq_table_valid(%struct.iwl_priv* %79, %struct.iwl_rxon_context* %80, %struct.iwl_link_quality_cmd* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %86 = call i32 @iwl_dvm_send_cmd(%struct.iwl_priv* %85, %struct.iwl_host_cmd* %13)
  store i32 %86, i32* %12, align 4
  br label %90

87:                                               ; preds = %78
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %87, %84
  %91 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %13, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @CMD_ASYNC, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %6, align 4
  br label %127

98:                                               ; preds = %90
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %125

101:                                              ; preds = %98
  %102 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %103 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %9, align 8
  %104 = getelementptr inbounds %struct.iwl_link_quality_cmd, %struct.iwl_link_quality_cmd* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %102, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %105)
  %107 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %108 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %107, i32 0, i32 0
  %109 = call i32 @spin_lock_bh(i32* %108)
  %110 = load i32, i32* @IWL_STA_UCODE_INPROGRESS, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %113 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %9, align 8
  %116 = getelementptr inbounds %struct.iwl_link_quality_cmd, %struct.iwl_link_quality_cmd* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %111
  store i32 %121, i32* %119, align 4
  %122 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %123 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %122, i32 0, i32 0
  %124 = call i32 @spin_unlock_bh(i32* %123)
  br label %125

125:                                              ; preds = %101, %98
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %125, %96, %75, %49, %30
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iwl_dump_lq_cmd(%struct.iwl_priv*, %struct.iwl_link_quality_cmd*) #1

declare dso_local i64 @is_lq_table_valid(%struct.iwl_priv*, %struct.iwl_rxon_context*, %struct.iwl_link_quality_cmd*) #1

declare dso_local i32 @iwl_dvm_send_cmd(%struct.iwl_priv*, %struct.iwl_host_cmd*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
