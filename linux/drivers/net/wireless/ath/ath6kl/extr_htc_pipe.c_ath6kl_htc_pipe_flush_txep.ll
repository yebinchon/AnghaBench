; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_ath6kl_htc_pipe_flush_txep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_ath6kl_htc_pipe_flush_txep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { %struct.htc_endpoint* }
%struct.htc_endpoint = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*, i32, i32)* @ath6kl_htc_pipe_flush_txep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_htc_pipe_flush_txep(%struct.htc_target* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.htc_target*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.htc_endpoint*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %9 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %8, i32 0, i32 0
  %10 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %10, i64 %12
  store %struct.htc_endpoint* %13, %struct.htc_endpoint** %7, align 8
  %14 = load %struct.htc_endpoint*, %struct.htc_endpoint** %7, align 8
  %15 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 @WARN_ON_ONCE(i32 1)
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %22 = load %struct.htc_endpoint*, %struct.htc_endpoint** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @htc_flush_tx_endpoint(%struct.htc_target* %21, %struct.htc_endpoint* %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %18
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @htc_flush_tx_endpoint(%struct.htc_target*, %struct.htc_endpoint*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
