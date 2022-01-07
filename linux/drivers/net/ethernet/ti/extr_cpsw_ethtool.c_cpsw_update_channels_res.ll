; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_update_channels_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_update_channels_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_priv = type { i32, %struct.cpsw_common* }
%struct.cpsw_common = type { i32, i32, i32, %struct.cpsw_vector*, %struct.cpsw_vector* }
%struct.cpsw_vector = type { i32 }
%struct.netdev_queue = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"created new %d %s channel\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"destroyed %d %s channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpsw_priv*, i32, i32, void (i8*, i32, i32)*)* @cpsw_update_channels_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_update_channels_res(%struct.cpsw_priv* %0, i32 %1, i32 %2, void (i8*, i32, i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpsw_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca void (i8*, i32, i32)*, align 8
  %10 = alloca %struct.cpsw_common*, align 8
  %11 = alloca void (i8*, i32, i32)*, align 8
  %12 = alloca %struct.netdev_queue*, align 8
  %13 = alloca %struct.cpsw_vector*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.cpsw_priv* %0, %struct.cpsw_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store void (i8*, i32, i32)* %3, void (i8*, i32, i32)** %9, align 8
  %17 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %18 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %17, i32 0, i32 1
  %19 = load %struct.cpsw_common*, %struct.cpsw_common** %18, align 8
  store %struct.cpsw_common* %19, %struct.cpsw_common** %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  %24 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %23, i32 0, i32 0
  store i32* %24, i32** %15, align 8
  %25 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  %26 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %25, i32 0, i32 4
  %27 = load %struct.cpsw_vector*, %struct.cpsw_vector** %26, align 8
  store %struct.cpsw_vector* %27, %struct.cpsw_vector** %13, align 8
  %28 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %9, align 8
  store void (i8*, i32, i32)* %28, void (i8*, i32, i32)** %11, align 8
  br label %35

29:                                               ; preds = %4
  %30 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  %31 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %30, i32 0, i32 1
  store i32* %31, i32** %15, align 8
  %32 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  %33 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %32, i32 0, i32 3
  %34 = load %struct.cpsw_vector*, %struct.cpsw_vector** %33, align 8
  store %struct.cpsw_vector* %34, %struct.cpsw_vector** %13, align 8
  store void (i8*, i32, i32)* @cpsw_tx_handler, void (i8*, i32, i32)** %11, align 8
  br label %35

35:                                               ; preds = %29, %22
  br label %36

36:                                               ; preds = %104, %35
  %37 = load i32*, i32** %15, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %117

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* %45, align 4
  br label %51

47:                                               ; preds = %41
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 7, %49
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i32 [ %46, %44 ], [ %50, %47 ]
  store i32 %52, i32* %16, align 4
  %53 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  %54 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %16, align 4
  %57 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %11, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @cpdma_chan_create(i32 %55, i32 %56, void (i8*, i32, i32)* %57, i32 %58)
  %60 = load %struct.cpsw_vector*, %struct.cpsw_vector** %13, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %60, i64 %63
  %65 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %64, i32 0, i32 0
  store i32 %59, i32* %65, align 4
  %66 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %67 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %68, i32 %70)
  store %struct.netdev_queue* %71, %struct.netdev_queue** %12, align 8
  %72 = load %struct.netdev_queue*, %struct.netdev_queue** %12, align 8
  %73 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load %struct.cpsw_vector*, %struct.cpsw_vector** %13, align 8
  %75 = load i32*, i32** %15, align 8
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %74, i64 %77
  %79 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @IS_ERR(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %51
  %84 = load %struct.cpsw_vector*, %struct.cpsw_vector** %13, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %84, i64 %87
  %89 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @PTR_ERR(i32 %90)
  store i32 %91, i32* %5, align 4
  br label %150

92:                                               ; preds = %51
  %93 = load %struct.cpsw_vector*, %struct.cpsw_vector** %13, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %93, i64 %96
  %98 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %92
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %150

104:                                              ; preds = %92
  %105 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %106 = load i32, i32* @ifup, align 4
  %107 = load i32*, i32** %15, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %113 = call i32 @cpsw_info(%struct.cpsw_priv* %105, i32 %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %108, i8* %112)
  %114 = load i32*, i32** %15, align 8
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  br label %36

117:                                              ; preds = %36
  br label %118

118:                                              ; preds = %139, %117
  %119 = load i32*, i32** %15, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %149

123:                                              ; preds = %118
  %124 = load i32*, i32** %15, align 8
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %124, align 4
  %127 = load %struct.cpsw_vector*, %struct.cpsw_vector** %13, align 8
  %128 = load i32*, i32** %15, align 8
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %127, i64 %130
  %132 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @cpdma_chan_destroy(i32 %133)
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %123
  %138 = load i32, i32* %14, align 4
  store i32 %138, i32* %5, align 4
  br label %150

139:                                              ; preds = %123
  %140 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %141 = load i32, i32* @ifup, align 4
  %142 = load i32*, i32** %15, align 8
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %148 = call i32 @cpsw_info(%struct.cpsw_priv* %140, i32 %141, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %143, i8* %147)
  br label %118

149:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %150

150:                                              ; preds = %149, %137, %101, %83
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local void @cpsw_tx_handler(i8*, i32, i32) #1

declare dso_local i32 @cpdma_chan_create(i32, i32, void (i8*, i32, i32)*, i32) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @cpsw_info(%struct.cpsw_priv*, i32, i8*, i32, i8*) #1

declare dso_local i32 @cpdma_chan_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
