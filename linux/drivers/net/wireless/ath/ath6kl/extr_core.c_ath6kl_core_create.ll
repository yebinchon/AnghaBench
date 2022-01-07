; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_core.c_ath6kl_core_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_core.c_ath6kl_core_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device* }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32, i32 }
%struct.device = type { i32 }

@ath6kl_p2p = common dso_local global i32 0, align 4
@WMI_ENABLED = common dso_local global i32 0, align 4
@SKIP_SCAN = common dso_local global i32 0, align 4
@DESTROY_IN_PROGRESS = common dso_local global i32 0, align 4
@DEF_LRSSI_ROAM_THRESHOLD = common dso_local global i32 0, align 4
@ATH6KL_STATE_OFF = common dso_local global i32 0, align 4
@AP_MAX_NUM_STA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Failed to allocate memory for sta aggregation information\0A\00", align 1
@DEF_AP_COUNTRY_CODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ath6kl* @ath6kl_core_create(%struct.device* %0) #0 {
  %2 = alloca %struct.ath6kl*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ath6kl*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = call %struct.ath6kl* (...) @ath6kl_cfg80211_create()
  store %struct.ath6kl* %6, %struct.ath6kl** %4, align 8
  %7 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %8 = icmp ne %struct.ath6kl* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.ath6kl* null, %struct.ath6kl** %2, align 8
  br label %157

10:                                               ; preds = %1
  %11 = load i32, i32* @ath6kl_p2p, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %17 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %20 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %19, i32 0, i32 18
  store %struct.device* %18, %struct.device** %20, align 8
  %21 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %22 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %24 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %23, i32 0, i32 2
  store i32 1, i32* %24, align 8
  %25 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %26 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %25, i32 0, i32 17
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %29 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %28, i32 0, i32 16
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %32 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %31, i32 0, i32 15
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %35 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %34, i32 0, i32 14
  %36 = call i32 @init_waitqueue_head(i32* %35)
  %37 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %38 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %37, i32 0, i32 13
  %39 = call i32 @sema_init(i32* %38, i32 1)
  %40 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %41 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %40, i32 0, i32 12
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %44 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %43, i32 0, i32 11
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load i32, i32* @WMI_ENABLED, align 4
  %47 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %48 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %47, i32 0, i32 10
  %49 = call i32 @clear_bit(i32 %46, i32* %48)
  %50 = load i32, i32* @SKIP_SCAN, align 4
  %51 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %52 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %51, i32 0, i32 10
  %53 = call i32 @clear_bit(i32 %50, i32* %52)
  %54 = load i32, i32* @DESTROY_IN_PROGRESS, align 4
  %55 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %56 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %55, i32 0, i32 10
  %57 = call i32 @clear_bit(i32 %54, i32* %56)
  %58 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %59 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %58, i32 0, i32 9
  store i64 0, i64* %59, align 8
  %60 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %61 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %60, i32 0, i32 3
  store i32 1, i32* %61, align 4
  %62 = load i32, i32* @DEF_LRSSI_ROAM_THRESHOLD, align 4
  %63 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %64 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @ATH6KL_STATE_OFF, align 4
  %66 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %67 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %69 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %68, i32 0, i32 6
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = bitcast %struct.TYPE_2__* %70 to i32*
  %72 = load i32, i32* @AP_MAX_NUM_STA, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = call i32 @memset(i32* %71, i32 0, i32 %75)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %144, %10
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @AP_MAX_NUM_STA, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %147

81:                                               ; preds = %77
  %82 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %83 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %82, i32 0, i32 6
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 5
  %89 = call i32 @spin_lock_init(i32* %88)
  %90 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %91 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %90, i32 0, i32 6
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 4
  %97 = call i32 @skb_queue_head_init(i32* %96)
  %98 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %99 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %98, i32 0, i32 6
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = call i32 @skb_queue_head_init(i32* %104)
  %106 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %107 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %106, i32 0, i32 6
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  store i64 0, i64* %112, align 8
  %113 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %114 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %113, i32 0, i32 6
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = call i32 @INIT_LIST_HEAD(i32* %119)
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call i32 @kzalloc(i32 4, i32 %121)
  %123 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %124 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %123, i32 0, i32 6
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  store i32 %122, i32* %129, align 8
  %130 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %131 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %130, i32 0, i32 6
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %81
  %140 = call i32 @ath6kl_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %141 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %142 = call i32 @ath6kl_core_destroy(%struct.ath6kl* %141)
  store %struct.ath6kl* null, %struct.ath6kl** %2, align 8
  br label %157

143:                                              ; preds = %81
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %5, align 4
  br label %77

147:                                              ; preds = %77
  %148 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %149 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %148, i32 0, i32 5
  %150 = call i32 @skb_queue_head_init(i32* %149)
  %151 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %152 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @DEF_AP_COUNTRY_CODE, align 4
  %155 = call i32 @memcpy(i32 %153, i32 %154, i32 3)
  %156 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  store %struct.ath6kl* %156, %struct.ath6kl** %2, align 8
  br label %157

157:                                              ; preds = %147, %139, %9
  %158 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  ret %struct.ath6kl* %158
}

declare dso_local %struct.ath6kl* @ath6kl_cfg80211_create(...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @ath6kl_err(i8*) #1

declare dso_local i32 @ath6kl_core_destroy(%struct.ath6kl*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
