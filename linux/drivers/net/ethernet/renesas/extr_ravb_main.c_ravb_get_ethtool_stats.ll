; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.ravb_private = type { i32*, i32*, i32*, i32*, %struct.net_device_stats* }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@RAVB_BE = common dso_local global i32 0, align 4
@NUM_RX_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @ravb_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ravb_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ravb_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %11)
  store %struct.ravb_private* %12, %struct.ravb_private** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @RAVB_BE, align 4
  store i32 %13, i32* %9, align 4
  br label %14

14:                                               ; preds = %161, %3
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @NUM_RX_QUEUE, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %164

18:                                               ; preds = %14
  %19 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %20 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %19, i32 0, i32 4
  %21 = load %struct.net_device_stats*, %struct.net_device_stats** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %21, i64 %23
  store %struct.net_device_stats* %24, %struct.net_device_stats** %10, align 8
  %25 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %26 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32 %31, i32* %36, align 4
  %37 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %38 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 %43, i32* %48, align 4
  %49 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %50 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  store i32 %55, i32* %60, align 4
  %61 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %62 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %67, i32* %72, align 4
  %73 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %74 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %73, i32 0, i32 10
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 %75, i32* %80, align 4
  %81 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %82 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 %83, i32* %88, align 4
  %89 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %90 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  store i32 %91, i32* %96, align 4
  %97 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %98 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %99, i32* %104, align 4
  %105 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %106 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %107, i32* %112, align 4
  %113 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %114 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %115, i32* %120, align 4
  %121 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %122 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %6, align 8
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  store i32 %123, i32* %128, align 4
  %129 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %130 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  store i32 %131, i32* %136, align 4
  %137 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %138 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  store i32 %139, i32* %144, align 4
  %145 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %146 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %6, align 8
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  store i32 %147, i32* %152, align 4
  %153 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %154 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  store i32 %155, i32* %160, align 4
  br label %161

161:                                              ; preds = %18
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %14

164:                                              ; preds = %14
  ret void
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
