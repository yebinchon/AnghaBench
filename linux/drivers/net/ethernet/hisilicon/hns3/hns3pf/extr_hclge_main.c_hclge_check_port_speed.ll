; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_check_port_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_check_port_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HCLGE_SUPPORT_10M_BIT = common dso_local global i32 0, align 4
@HCLGE_SUPPORT_100M_BIT = common dso_local global i32 0, align 4
@HCLGE_SUPPORT_1G_BIT = common dso_local global i32 0, align 4
@HCLGE_SUPPORT_10G_BIT = common dso_local global i32 0, align 4
@HCLGE_SUPPORT_25G_BIT = common dso_local global i32 0, align 4
@HCLGE_SUPPORT_40G_BIT = common dso_local global i32 0, align 4
@HCLGE_SUPPORT_50G_BIT = common dso_local global i32 0, align 4
@HCLGE_SUPPORT_100G_BIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i32)* @hclge_check_port_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_check_port_speed(%struct.hnae3_handle* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hclge_vport*, align 8
  %7 = alloca %struct.hclge_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %11 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %10)
  store %struct.hclge_vport* %11, %struct.hclge_vport** %6, align 8
  %12 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %13 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %12, i32 0, i32 0
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %13, align 8
  store %struct.hclge_dev* %14, %struct.hclge_dev** %7, align 8
  %15 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %16 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %37 [
    i32 132, label %21
    i32 134, label %23
    i32 131, label %25
    i32 133, label %27
    i32 130, label %29
    i32 129, label %31
    i32 128, label %33
    i32 135, label %35
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* @HCLGE_SUPPORT_10M_BIT, align 4
  store i32 %22, i32* %9, align 4
  br label %40

23:                                               ; preds = %2
  %24 = load i32, i32* @HCLGE_SUPPORT_100M_BIT, align 4
  store i32 %24, i32* %9, align 4
  br label %40

25:                                               ; preds = %2
  %26 = load i32, i32* @HCLGE_SUPPORT_1G_BIT, align 4
  store i32 %26, i32* %9, align 4
  br label %40

27:                                               ; preds = %2
  %28 = load i32, i32* @HCLGE_SUPPORT_10G_BIT, align 4
  store i32 %28, i32* %9, align 4
  br label %40

29:                                               ; preds = %2
  %30 = load i32, i32* @HCLGE_SUPPORT_25G_BIT, align 4
  store i32 %30, i32* %9, align 4
  br label %40

31:                                               ; preds = %2
  %32 = load i32, i32* @HCLGE_SUPPORT_40G_BIT, align 4
  store i32 %32, i32* %9, align 4
  br label %40

33:                                               ; preds = %2
  %34 = load i32, i32* @HCLGE_SUPPORT_50G_BIT, align 4
  store i32 %34, i32* %9, align 4
  br label %40

35:                                               ; preds = %2
  %36 = load i32, i32* @HCLGE_SUPPORT_100G_BIT, align 4
  store i32 %36, i32* %9, align 4
  br label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %49

40:                                               ; preds = %35, %33, %31, %29, %27, %25, %23, %21
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %45, %37
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
