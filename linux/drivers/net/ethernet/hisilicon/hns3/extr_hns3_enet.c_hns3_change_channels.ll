; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_change_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_change_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }

@.str = private unnamed_addr constant [26 x i8] c"Change tqp num(%u) fail.\0A\00", align 1
@HNAE3_INIT_CLIENT = common dso_local global i32 0, align 4
@HNAE3_UP_CLIENT = common dso_local global i32 0, align 4
@HNAE3_UNINIT_CLIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i32, i32)* @hns3_change_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_change_channels(%struct.hnae3_handle* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hnae3_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %10 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.hnae3_handle*, i32, i32)**
  %16 = load i32 (%struct.hnae3_handle*, i32, i32)*, i32 (%struct.hnae3_handle*, i32, i32)** %15, align 8
  %17 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 %16(%struct.hnae3_handle* %17, i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %25 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %51

31:                                               ; preds = %3
  %32 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %33 = load i32, i32* @HNAE3_INIT_CLIENT, align 4
  %34 = call i32 @hns3_reset_notify(%struct.hnae3_handle* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %51

39:                                               ; preds = %31
  %40 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %41 = load i32, i32* @HNAE3_UP_CLIENT, align 4
  %42 = call i32 @hns3_reset_notify(%struct.hnae3_handle* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %47 = load i32, i32* @HNAE3_UNINIT_CLIENT, align 4
  %48 = call i32 @hns3_reset_notify(%struct.hnae3_handle* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %39
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %37, %23
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hns3_reset_notify(%struct.hnae3_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
