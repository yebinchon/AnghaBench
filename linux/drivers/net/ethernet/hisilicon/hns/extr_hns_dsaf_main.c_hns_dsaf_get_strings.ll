; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32 }

@ETH_SS_STATS = common dso_local global i32 0, align 4
@DSAF_PPE_INODE_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_dsaf_get_strings(i32 %0, i32* %1, i32 %2, %struct.dsaf_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dsaf_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dsaf_device* %3, %struct.dsaf_device** %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = bitcast i32* %11 to i8*
  store i8* %12, i8** %9, align 8
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ETH_SS_STATS, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %30

18:                                               ; preds = %4
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.dsaf_device*, %struct.dsaf_device** %8, align 8
  %22 = call i8* @hns_dsaf_get_node_stats_strings(i8* %19, i32 %20, %struct.dsaf_device* %21)
  store i8* %22, i8** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @DSAF_PPE_INODE_BASE, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.dsaf_device*, %struct.dsaf_device** %8, align 8
  %29 = call i8* @hns_dsaf_get_node_stats_strings(i8* %26, i32 %27, %struct.dsaf_device* %28)
  br label %30

30:                                               ; preds = %18, %17
  ret void
}

declare dso_local i8* @hns_dsaf_get_node_stats_strings(i8*, i32, %struct.dsaf_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
