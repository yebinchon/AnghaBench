; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_prev_is_path_marked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_prev_is_path_marked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_prev_path_list = type { i64 }

@bnx2x_prev_sem = common dso_local global i32 0, align 4
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Path %d was marked by AER\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Path %d was already cleaned from previous drivers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_prev_is_path_marked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_prev_is_path_marked(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_prev_path_list*, align 8
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call i64 @down_trylock(i32* @bnx2x_prev_sem)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

9:                                                ; preds = %1
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = call %struct.bnx2x_prev_path_list* @bnx2x_prev_path_get_entry(%struct.bnx2x* %10)
  store %struct.bnx2x_prev_path_list* %11, %struct.bnx2x_prev_path_list** %4, align 8
  %12 = load %struct.bnx2x_prev_path_list*, %struct.bnx2x_prev_path_list** %4, align 8
  %13 = icmp ne %struct.bnx2x_prev_path_list* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load %struct.bnx2x_prev_path_list*, %struct.bnx2x_prev_path_list** %4, align 8
  %16 = getelementptr inbounds %struct.bnx2x_prev_path_list, %struct.bnx2x_prev_path_list* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* @NETIF_MSG_HW, align 4
  %21 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %22 = call i32 @BP_PATH(%struct.bnx2x* %21)
  %23 = call i32 @DP(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %28

24:                                               ; preds = %14
  store i32 1, i32* %5, align 4
  %25 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %26 = call i32 @BP_PATH(%struct.bnx2x* %25)
  %27 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %19
  br label %29

29:                                               ; preds = %28, %9
  %30 = call i32 @up(i32* @bnx2x_prev_sem)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %8
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @down_trylock(i32*) #1

declare dso_local %struct.bnx2x_prev_path_list* @bnx2x_prev_path_get_entry(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_DEV_INFO(i8*, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
