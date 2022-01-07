; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_mac_tnl_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_mac_tnl_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_mac_tnl_stats = type { i32, i64 }

@.str = private unnamed_addr constant [42 x i8] c"Recently generated mac tnl interruption:\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"[%07lu.%03lu] status = 0x%x\0A\00", align 1
@HCLGE_BILLION_NANO_SECONDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*)* @hclge_dbg_dump_mac_tnl_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_dbg_dump_mac_tnl_status(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca %struct.hclge_mac_tnl_stats, align 8
  %4 = alloca i64, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  %5 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %6 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 (i32*, i8*, ...) @dev_info(i32* %8, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %15, %1
  %11 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %12 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %11, i32 0, i32 1
  %13 = call i64 @kfifo_get(i32* %12, %struct.hclge_mac_tnl_stats* %3)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.hclge_mac_tnl_stats, %struct.hclge_mac_tnl_stats* %3, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @do_div(i64 %17, i32 1000000000)
  store i64 %18, i64* %4, align 8
  %19 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %20 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.hclge_mac_tnl_stats, %struct.hclge_mac_tnl_stats* %3, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = udiv i64 %25, 1000
  %27 = getelementptr inbounds %struct.hclge_mac_tnl_stats, %struct.hclge_mac_tnl_stats* %3, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i32*, i8*, ...) @dev_info(i32* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %24, i64 %26, i32 %28)
  br label %10

30:                                               ; preds = %10
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i64 @kfifo_get(i32*, %struct.hclge_mac_tnl_stats*) #1

declare dso_local i64 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
