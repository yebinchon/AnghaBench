; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_proc_cred_rpt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_proc_cred_rpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, i32, i32, %struct.htc_endpoint* }
%struct.htc_endpoint = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.htc_credit_report = type { i64, i64 }

@ENDPOINT_MAX = common dso_local global i64 0, align 8
@ATH6KL_DBG_CREDIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"credit report ep %d credits %d\0A\00", align 1
@ENDPOINT_0 = common dso_local global i32 0, align 4
@HTC_CREDIT_DIST_SEND_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*, %struct.htc_credit_report*, i32, i32)* @htc_proc_cred_rpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htc_proc_cred_rpt(%struct.htc_target* %0, %struct.htc_credit_report* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.htc_target*, align 8
  %6 = alloca %struct.htc_credit_report*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.htc_endpoint*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %5, align 8
  store %struct.htc_credit_report* %1, %struct.htc_credit_report** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %14 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %164, %4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %169

20:                                               ; preds = %16
  %21 = load %struct.htc_credit_report*, %struct.htc_credit_report** %6, align 8
  %22 = getelementptr inbounds %struct.htc_credit_report, %struct.htc_credit_report* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ENDPOINT_MAX, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = call i32 @WARN_ON(i32 1)
  %28 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %29 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_bh(i32* %29)
  br label %189

31:                                               ; preds = %20
  %32 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %33 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %32, i32 0, i32 3
  %34 = load %struct.htc_endpoint*, %struct.htc_endpoint** %33, align 8
  %35 = load %struct.htc_credit_report*, %struct.htc_credit_report** %6, align 8
  %36 = getelementptr inbounds %struct.htc_credit_report, %struct.htc_credit_report* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %34, i64 %37
  store %struct.htc_endpoint* %38, %struct.htc_endpoint** %9, align 8
  %39 = load i32, i32* @ATH6KL_DBG_CREDIT, align 4
  %40 = load %struct.htc_credit_report*, %struct.htc_credit_report** %6, align 8
  %41 = getelementptr inbounds %struct.htc_credit_report, %struct.htc_credit_report* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.htc_credit_report*, %struct.htc_credit_report** %6, align 8
  %44 = getelementptr inbounds %struct.htc_credit_report, %struct.htc_credit_report* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @ath6kl_dbg(i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %45)
  %47 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %48 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.htc_credit_report*, %struct.htc_credit_report** %6, align 8
  %53 = getelementptr inbounds %struct.htc_credit_report, %struct.htc_credit_report* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %56 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %54
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = load %struct.htc_credit_report*, %struct.htc_credit_report** %6, align 8
  %65 = getelementptr inbounds %struct.htc_credit_report, %struct.htc_credit_report* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %31
  %69 = load %struct.htc_credit_report*, %struct.htc_credit_report** %6, align 8
  %70 = getelementptr inbounds %struct.htc_credit_report, %struct.htc_credit_report* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %73 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %71
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  %79 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %80 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %121

84:                                               ; preds = %31
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @ENDPOINT_0, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %84
  %89 = load %struct.htc_credit_report*, %struct.htc_credit_report** %6, align 8
  %90 = getelementptr inbounds %struct.htc_credit_report, %struct.htc_credit_report* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %93 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %91
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 4
  %99 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %100 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %120

104:                                              ; preds = %84
  %105 = load %struct.htc_credit_report*, %struct.htc_credit_report** %6, align 8
  %106 = getelementptr inbounds %struct.htc_credit_report, %struct.htc_credit_report* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %109 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %107
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %110, align 4
  %115 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %116 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %104, %88
  br label %121

121:                                              ; preds = %120, %68
  %122 = load %struct.htc_credit_report*, %struct.htc_credit_report** %6, align 8
  %123 = getelementptr inbounds %struct.htc_credit_report, %struct.htc_credit_report* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* @ENDPOINT_0, align 4
  %126 = sext i32 %125 to i64
  %127 = icmp eq i64 %124, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %121
  %129 = load %struct.htc_credit_report*, %struct.htc_credit_report** %6, align 8
  %130 = getelementptr inbounds %struct.htc_credit_report, %struct.htc_credit_report* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %133 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %131
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %134, align 4
  br label %150

139:                                              ; preds = %121
  %140 = load %struct.htc_credit_report*, %struct.htc_credit_report** %6, align 8
  %141 = getelementptr inbounds %struct.htc_credit_report, %struct.htc_credit_report* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %144 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %142
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 4
  store i32 1, i32* %12, align 4
  br label %150

150:                                              ; preds = %139, %128
  %151 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %152 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %151, i32 0, i32 0
  %153 = call i32 @get_queue_depth(i32* %152)
  %154 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %155 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 4
  %157 = load %struct.htc_credit_report*, %struct.htc_credit_report** %6, align 8
  %158 = getelementptr inbounds %struct.htc_credit_report, %struct.htc_credit_report* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %159
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %10, align 4
  br label %164

164:                                              ; preds = %150
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  %167 = load %struct.htc_credit_report*, %struct.htc_credit_report** %6, align 8
  %168 = getelementptr inbounds %struct.htc_credit_report, %struct.htc_credit_report* %167, i32 1
  store %struct.htc_credit_report* %168, %struct.htc_credit_report** %6, align 8
  br label %16

169:                                              ; preds = %16
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %169
  %173 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %174 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %177 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %176, i32 0, i32 1
  %178 = load i32, i32* @HTC_CREDIT_DIST_SEND_COMPLETE, align 4
  %179 = call i32 @ath6kl_credit_distribute(i32 %175, i32* %177, i32 %178)
  br label %180

180:                                              ; preds = %172, %169
  %181 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %182 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %181, i32 0, i32 0
  %183 = call i32 @spin_unlock_bh(i32* %182)
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %180
  %187 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %188 = call i32 @htc_chk_ep_txq(%struct.htc_target* %187)
  br label %189

189:                                              ; preds = %26, %186, %180
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @get_queue_depth(i32*) #1

declare dso_local i32 @ath6kl_credit_distribute(i32, i32*, i32) #1

declare dso_local i32 @htc_chk_ep_txq(%struct.htc_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
