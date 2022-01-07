; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_lif_rss_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_lif_rss_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { i32, i32, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@IONIC_RSS_HASH_KEY_SIZE = common dso_local global i32 0, align 4
@IONIC_RSS_TYPE_IPV4 = common dso_local global i32 0, align 4
@IONIC_RSS_TYPE_IPV4_TCP = common dso_local global i32 0, align 4
@IONIC_RSS_TYPE_IPV4_UDP = common dso_local global i32 0, align 4
@IONIC_RSS_TYPE_IPV6 = common dso_local global i32 0, align 4
@IONIC_RSS_TYPE_IPV6_TCP = common dso_local global i32 0, align 4
@IONIC_RSS_TYPE_IPV6_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ionic_lif*)* @ionic_lif_rss_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_lif_rss_init(%struct.ionic_lif* %0) #0 {
  %2 = alloca %struct.ionic_lif*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ionic_lif* %0, %struct.ionic_lif** %2, align 8
  %7 = load i32, i32* @IONIC_RSS_HASH_KEY_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* @IONIC_RSS_HASH_KEY_SIZE, align 4
  %12 = call i32 @netdev_rss_key_fill(i32* %10, i32 %11)
  %13 = load i32, i32* @IONIC_RSS_TYPE_IPV4, align 4
  %14 = load i32, i32* @IONIC_RSS_TYPE_IPV4_TCP, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @IONIC_RSS_TYPE_IPV4_UDP, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @IONIC_RSS_TYPE_IPV6, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @IONIC_RSS_TYPE_IPV6_TCP, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @IONIC_RSS_TYPE_IPV6_UDP, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %25 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %27 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %26, i32 0, i32 3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  store i32 %34, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %51, %1
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %42 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ethtool_rxfh_indir_default(i32 %40, i32 %43)
  %45 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %46 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  br label %51

51:                                               ; preds = %39
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %35

54:                                               ; preds = %35
  %55 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %56 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %57 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ionic_lif_rss_config(%struct.ionic_lif* %55, i32 %58, i32* %10, i32* null)
  %60 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %60)
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @netdev_rss_key_fill(i32*, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @ethtool_rxfh_indir_default(i32, i32) #2

declare dso_local i32 @ionic_lif_rss_config(%struct.ionic_lif*, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
