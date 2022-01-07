; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_handle_ncsi_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_handle_ncsi_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_4__*, %struct.hnae3_ae_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.hnae3_ae_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.hnae3_ae_dev*, i32)* }

@HNAE3_GLOBAL_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"requesting reset due to NCSI error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*)* @hclge_handle_ncsi_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_handle_ncsi_error(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca %struct.hnae3_ae_dev*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  %4 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %5 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %4, i32 0, i32 1
  %6 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %5, align 8
  store %struct.hnae3_ae_dev* %6, %struct.hnae3_ae_dev** %3, align 8
  %7 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32 (%struct.hnae3_ae_dev*, i32)*, i32 (%struct.hnae3_ae_dev*, i32)** %10, align 8
  %12 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %13 = load i32, i32* @HNAE3_GLOBAL_RESET, align 4
  %14 = call i32 %11(%struct.hnae3_ae_dev* %12, i32 %13)
  %15 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %16 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @dev_warn(i32* %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %21 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %23, align 8
  %25 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %26 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 %24(%struct.TYPE_4__* %27, i32* null)
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
