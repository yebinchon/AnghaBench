; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_del_all_fd_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_del_all_fd_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hnae3_handle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hnae3_handle*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @hns3_del_all_fd_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_del_all_fd_rules(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hnae3_handle*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.hnae3_handle* @hns3_get_handle(%struct.net_device* %6)
  store %struct.hnae3_handle* %7, %struct.hnae3_handle** %5, align 8
  %8 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %9 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.hnae3_handle*, i32)* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %18 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %22, align 8
  %24 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 %23(%struct.hnae3_handle* %24, i32 %25)
  br label %27

27:                                               ; preds = %16, %2
  ret void
}

declare dso_local %struct.hnae3_handle* @hns3_get_handle(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
