; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_info_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_info_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_nic_priv = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"MAC address: %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Task queue pairs numbers: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"RSS size: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Allocated RSS size: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"RX buffer length: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Desc num per TX queue: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Desc num per RX queue: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Total number of enabled TCs: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Max mtu size: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns3_nic_priv*)* @hns3_info_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_info_show(%struct.hns3_nic_priv* %0) #0 {
  %2 = alloca %struct.hns3_nic_priv*, align 8
  %3 = alloca %struct.hnae3_knic_private_info*, align 8
  store %struct.hns3_nic_priv* %0, %struct.hns3_nic_priv** %2, align 8
  %4 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %5 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %4, i32 0, i32 2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.hnae3_knic_private_info* %7, %struct.hnae3_knic_private_info** %3, align 8
  %8 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %9 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %12 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_info(i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %18 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %3, align 8
  %21 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_info(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %25 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %3, align 8
  %28 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_info(i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %32 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %3, align 8
  %35 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_info(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %39 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %3, align 8
  %42 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_info(i32 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  %45 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %46 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %3, align 8
  %49 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_info(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  %52 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %53 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %3, align 8
  %56 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_info(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  %59 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %60 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %3, align 8
  %63 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_info(i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %64)
  %66 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %67 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %70 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_info(i32 %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %73)
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
