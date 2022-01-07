; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }
%struct.net_device = type { i32 }
%struct.virtnet_info = type { i32 }

@VIRTNET_RQ_STATS_LEN = common dso_local global i32 0, align 4
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"rx_queue_%u_%s\00", align 1
@virtnet_rq_stats_desc = common dso_local global %struct.TYPE_4__* null, align 8
@VIRTNET_SQ_STATS_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"tx_queue_%u_%s\00", align 1
@virtnet_sq_stats_desc = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @virtnet_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtnet_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.virtnet_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.virtnet_info* @netdev_priv(%struct.net_device* %11)
  store %struct.virtnet_info* %12, %struct.virtnet_info** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to i8*
  store i8* %14, i8** %8, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %85 [
    i32 128, label %16
  ]

16:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %47, %16
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.virtnet_info*, %struct.virtnet_info** %7, align 8
  %20 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @VIRTNET_RQ_STATS_LEN, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @virtnet_rq_stats_desc, align 8
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @snprintf(i8* %29, i32 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %31, i8* %37)
  %39 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %8, align 8
  br label %43

43:                                               ; preds = %28
  %44 = load i32, i32* %10, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %24

46:                                               ; preds = %24
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %17

50:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %81, %50
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.virtnet_info*, %struct.virtnet_info** %7, align 8
  %54 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ult i32 %52, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %77, %57
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @VIRTNET_SQ_STATS_LEN, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @virtnet_sq_stats_desc, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @snprintf(i8* %63, i32 %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %65, i8* %71)
  %73 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %8, align 8
  br label %77

77:                                               ; preds = %62
  %78 = load i32, i32* %10, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %58

80:                                               ; preds = %58
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %51

84:                                               ; preds = %51
  br label %85

85:                                               ; preds = %3, %84
  ret void
}

declare dso_local %struct.virtnet_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
