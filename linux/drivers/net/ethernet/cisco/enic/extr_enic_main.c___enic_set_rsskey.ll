; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c___enic_set_rsskey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c___enic_set_rsskey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32, i32, i32* }
%union.vnic_rss_key = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@ENIC_RSS_LEN = common dso_local global i32 0, align 4
@ENIC_RSS_BYTES_PER_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__enic_set_rsskey(%struct.enic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.enic*, align 8
  %4 = alloca %union.vnic_rss_key*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %3, align 8
  %10 = load %struct.enic*, %struct.enic** %3, align 8
  %11 = getelementptr inbounds %struct.enic, %struct.enic* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %union.vnic_rss_key* @pci_zalloc_consistent(i32 %12, i32 8, i32* %5)
  store %union.vnic_rss_key* %13, %union.vnic_rss_key** %4, align 8
  %14 = load %union.vnic_rss_key*, %union.vnic_rss_key** %4, align 8
  %15 = icmp ne %union.vnic_rss_key* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %69

19:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %49, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ENIC_RSS_LEN, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @ENIC_RSS_BYTES_PER_KEY, align 4
  %27 = sdiv i32 %25, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ENIC_RSS_BYTES_PER_KEY, align 4
  %30 = srem i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.enic*, %struct.enic** %3, align 8
  %32 = getelementptr inbounds %struct.enic, %struct.enic* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %union.vnic_rss_key*, %union.vnic_rss_key** %4, align 8
  %39 = bitcast %union.vnic_rss_key* %38 to %struct.TYPE_2__**
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %37, i32* %48, align 4
  br label %49

49:                                               ; preds = %24
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %20

52:                                               ; preds = %20
  %53 = load %struct.enic*, %struct.enic** %3, align 8
  %54 = getelementptr inbounds %struct.enic, %struct.enic* %53, i32 0, i32 1
  %55 = call i32 @spin_lock_bh(i32* %54)
  %56 = load %struct.enic*, %struct.enic** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @enic_set_rss_key(%struct.enic* %56, i32 %57, i32 8)
  store i32 %58, i32* %9, align 4
  %59 = load %struct.enic*, %struct.enic** %3, align 8
  %60 = getelementptr inbounds %struct.enic, %struct.enic* %59, i32 0, i32 1
  %61 = call i32 @spin_unlock_bh(i32* %60)
  %62 = load %struct.enic*, %struct.enic** %3, align 8
  %63 = getelementptr inbounds %struct.enic, %struct.enic* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %union.vnic_rss_key*, %union.vnic_rss_key** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @pci_free_consistent(i32 %64, i32 8, %union.vnic_rss_key* %65, i32 %66)
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %52, %16
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %union.vnic_rss_key* @pci_zalloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @enic_set_rss_key(%struct.enic*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %union.vnic_rss_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
