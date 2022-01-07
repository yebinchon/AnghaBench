; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_reset_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_reset_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i32)* @hns3_reset_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_reset_notify(%struct.hnae3_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %22 [
    i32 128, label %7
    i32 132, label %10
    i32 131, label %13
    i32 129, label %16
    i32 130, label %19
  ]

7:                                                ; preds = %2
  %8 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %9 = call i32 @hns3_reset_notify_up_enet(%struct.hnae3_handle* %8)
  store i32 %9, i32* %5, align 4
  br label %23

10:                                               ; preds = %2
  %11 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %12 = call i32 @hns3_reset_notify_down_enet(%struct.hnae3_handle* %11)
  store i32 %12, i32* %5, align 4
  br label %23

13:                                               ; preds = %2
  %14 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %15 = call i32 @hns3_reset_notify_init_enet(%struct.hnae3_handle* %14)
  store i32 %15, i32* %5, align 4
  br label %23

16:                                               ; preds = %2
  %17 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %18 = call i32 @hns3_reset_notify_uninit_enet(%struct.hnae3_handle* %17)
  store i32 %18, i32* %5, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %21 = call i32 @hns3_reset_notify_restore_enet(%struct.hnae3_handle* %20)
  store i32 %21, i32* %5, align 4
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %19, %16, %13, %10, %7
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @hns3_reset_notify_up_enet(%struct.hnae3_handle*) #1

declare dso_local i32 @hns3_reset_notify_down_enet(%struct.hnae3_handle*) #1

declare dso_local i32 @hns3_reset_notify_init_enet(%struct.hnae3_handle*) #1

declare dso_local i32 @hns3_reset_notify_uninit_enet(%struct.hnae3_handle*) #1

declare dso_local i32 @hns3_reset_notify_restore_enet(%struct.hnae3_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
