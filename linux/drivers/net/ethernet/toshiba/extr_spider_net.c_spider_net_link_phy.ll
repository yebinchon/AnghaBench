; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_link_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_link_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { i64, i32, %struct.TYPE_6__*, i32, %struct.mii_phy }
%struct.TYPE_6__ = type { i32 }
%struct.mii_phy = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.mii_phy*)*, i32 (%struct.mii_phy*)*, i32 (%struct.mii_phy*, i32)* }
%struct.timer_list = type { i32 }

@aneg_timer = common dso_local global i32 0, align 4
@SPIDER_NET_ANEG_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"%s: link is down trying to bring it up\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@SPIDER_NET_ANEG_TIMER = common dso_local global i64 0, align 8
@SPIDER_NET_GMACST = common dso_local global i32 0, align 4
@SPIDER_NET_GMACINTEN = common dso_local global i32 0, align 4
@SPIDER_NET_GMACMODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%s: link up, %i Mbps, %s-duplex %sautoneg.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"no \00", align 1
@card = common dso_local global %struct.spider_net_card* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @spider_net_link_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spider_net_link_phy(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.spider_net_card*, align 8
  %4 = alloca %struct.mii_phy*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %6 = ptrtoint %struct.spider_net_card* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @aneg_timer, align 4
  %9 = call %struct.spider_net_card* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.spider_net_card* %9, %struct.spider_net_card** %3, align 8
  %10 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %11 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %10, i32 0, i32 4
  store %struct.mii_phy* %11, %struct.mii_phy** %4, align 8
  %12 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %13 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SPIDER_NET_ANEG_TIMEOUT, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %85

17:                                               ; preds = %1
  %18 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %19 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %25 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %76 [
    i32 130, label %27
    i32 129, label %49
    i32 128, label %71
  ]

27:                                               ; preds = %17
  %28 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %29 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %28, i32 0, i32 3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32 (%struct.mii_phy*, i32)*, i32 (%struct.mii_phy*, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.mii_phy*, i32)* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %27
  %37 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %38 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %37, i32 0, i32 3
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32 (%struct.mii_phy*, i32)*, i32 (%struct.mii_phy*, i32)** %42, align 8
  %44 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %45 = call i32 %43(%struct.mii_phy* %44, i32 1)
  br label %46

46:                                               ; preds = %36, %27
  %47 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %48 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %47, i32 0, i32 1
  store i32 129, i32* %48, align 8
  br label %76

49:                                               ; preds = %17
  %50 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %51 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %50, i32 0, i32 3
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32 (%struct.mii_phy*, i32)*, i32 (%struct.mii_phy*, i32)** %55, align 8
  %57 = icmp ne i32 (%struct.mii_phy*, i32)* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %49
  %59 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %60 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %59, i32 0, i32 3
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32 (%struct.mii_phy*, i32)*, i32 (%struct.mii_phy*, i32)** %64, align 8
  %66 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %67 = call i32 %65(%struct.mii_phy* %66, i32 0)
  br label %68

68:                                               ; preds = %58, %49
  %69 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %70 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %69, i32 0, i32 1
  store i32 128, i32* %70, align 8
  br label %76

71:                                               ; preds = %17
  %72 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %73 = call i32 @spider_net_setup_aneg(%struct.spider_net_card* %72)
  %74 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %75 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %74, i32 0, i32 1
  store i32 130, i32* %75, align 8
  br label %76

76:                                               ; preds = %17, %71, %68, %46
  %77 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %78 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %80 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %79, i32 0, i32 3
  %81 = load i64, i64* @jiffies, align 8
  %82 = load i64, i64* @SPIDER_NET_ANEG_TIMER, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @mod_timer(i32* %80, i64 %83)
  br label %162

85:                                               ; preds = %1
  %86 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %87 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %86, i32 0, i32 3
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32 (%struct.mii_phy*)*, i32 (%struct.mii_phy*)** %91, align 8
  %93 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %94 = call i32 %92(%struct.mii_phy* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %85
  %97 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %98 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %98, align 8
  %101 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %102 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %101, i32 0, i32 3
  %103 = load i64, i64* @jiffies, align 8
  %104 = load i64, i64* @SPIDER_NET_ANEG_TIMER, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @mod_timer(i32* %102, i64 %105)
  br label %162

107:                                              ; preds = %85
  %108 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %109 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %108, i32 0, i32 3
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32 (%struct.mii_phy*)*, i32 (%struct.mii_phy*)** %113, align 8
  %115 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %116 = call i32 %114(%struct.mii_phy* %115)
  %117 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %118 = load i32, i32* @SPIDER_NET_GMACST, align 4
  %119 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %120 = load i32, i32* @SPIDER_NET_GMACST, align 4
  %121 = call i32 @spider_net_read_reg(%struct.spider_net_card* %119, i32 %120)
  %122 = call i32 @spider_net_write_reg(%struct.spider_net_card* %117, i32 %118, i32 %121)
  %123 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %124 = load i32, i32* @SPIDER_NET_GMACINTEN, align 4
  %125 = call i32 @spider_net_write_reg(%struct.spider_net_card* %123, i32 %124, i32 4)
  %126 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %127 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 1000
  br i1 %129, label %130, label %134

130:                                              ; preds = %107
  %131 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %132 = load i32, i32* @SPIDER_NET_GMACMODE, align 4
  %133 = call i32 @spider_net_write_reg(%struct.spider_net_card* %131, i32 %132, i32 1)
  br label %138

134:                                              ; preds = %107
  %135 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %136 = load i32, i32* @SPIDER_NET_GMACMODE, align 4
  %137 = call i32 @spider_net_write_reg(%struct.spider_net_card* %135, i32 %136, i32 0)
  br label %138

138:                                              ; preds = %134, %130
  %139 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %140 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %139, i32 0, i32 0
  store i64 0, i64* %140, align 8
  %141 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %142 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %141, i32 0, i32 2
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %147 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %150 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 1
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %155 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %156 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 1
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %161 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %145, i32 %148, i8* %154, i8* %160)
  br label %162

162:                                              ; preds = %138, %96, %76
  ret void
}

declare dso_local %struct.spider_net_card* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @spider_net_setup_aneg(%struct.spider_net_card*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spider_net_write_reg(%struct.spider_net_card*, i32, i32) #1

declare dso_local i32 @spider_net_read_reg(%struct.spider_net_card*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
