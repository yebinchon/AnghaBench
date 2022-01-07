; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_shadow_dst_wr_ind_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_shadow_dst_wr_ind_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_ce_pipe = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"invalid CE id: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ath10k_ce_pipe*)* @shadow_dst_wr_ind_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shadow_dst_wr_ind_addr(%struct.ath10k* %0, %struct.ath10k_ce_pipe* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_ce_pipe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.ath10k_ce_pipe* %1, %struct.ath10k_ce_pipe** %4, align 8
  %7 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %4, align 8
  %8 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %19 [
    i32 1, label %11
    i32 2, label %12
    i32 5, label %13
    i32 7, label %14
    i32 8, label %15
    i32 9, label %16
    i32 10, label %17
    i32 11, label %18
  ]

11:                                               ; preds = %2
  store i32 204852, i32* %6, align 4
  br label %23

12:                                               ; preds = %2
  store i32 204856, i32* %6, align 4
  br label %23

13:                                               ; preds = %2
  store i32 204868, i32* %6, align 4
  br label %23

14:                                               ; preds = %2
  store i32 204876, i32* %6, align 4
  br label %23

15:                                               ; preds = %2
  store i32 204880, i32* %6, align 4
  br label %23

16:                                               ; preds = %2
  store i32 204884, i32* %6, align 4
  br label %23

17:                                               ; preds = %2
  store i32 204888, i32* %6, align 4
  br label %23

18:                                               ; preds = %2
  store i32 204892, i32* %6, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ath10k_warn(%struct.ath10k* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %18, %17, %16, %15, %14, %13, %12, %11
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
