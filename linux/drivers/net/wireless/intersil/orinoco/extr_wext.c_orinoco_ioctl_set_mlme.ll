; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_wext.c_orinoco_ioctl_set_mlme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_wext.c_orinoco_ioctl_set_mlme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct.orinoco_private = type { i32 }
%struct.iw_mlme = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @orinoco_ioctl_set_mlme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_ioctl_set_mlme(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.orinoco_private*, align 8
  %11 = alloca %struct.iw_mlme*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.orinoco_private* @ndev_priv(%struct.net_device* %14)
  store %struct.orinoco_private* %15, %struct.orinoco_private** %10, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.iw_mlme*
  store %struct.iw_mlme* %17, %struct.iw_mlme** %11, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %19 = call i64 @orinoco_lock(%struct.orinoco_private* %18, i64* %12)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %46

24:                                               ; preds = %4
  %25 = load %struct.iw_mlme*, %struct.iw_mlme** %11, align 8
  %26 = getelementptr inbounds %struct.iw_mlme, %struct.iw_mlme* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %39 [
    i32 129, label %28
    i32 128, label %29
  ]

28:                                               ; preds = %24
  br label %42

29:                                               ; preds = %24
  %30 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %31 = load %struct.iw_mlme*, %struct.iw_mlme** %11, align 8
  %32 = getelementptr inbounds %struct.iw_mlme, %struct.iw_mlme* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.iw_mlme*, %struct.iw_mlme** %11, align 8
  %36 = getelementptr inbounds %struct.iw_mlme, %struct.iw_mlme* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @orinoco_hw_disassociate(%struct.orinoco_private* %30, i32 %34, i32 %37)
  store i32 %38, i32* %13, align 4
  br label %42

39:                                               ; preds = %24
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %39, %29, %28
  %43 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %44 = call i32 @orinoco_unlock(%struct.orinoco_private* %43, i64* %12)
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %21
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.orinoco_private* @ndev_priv(%struct.net_device*) #1

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @orinoco_hw_disassociate(%struct.orinoco_private*, i32, i32) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
