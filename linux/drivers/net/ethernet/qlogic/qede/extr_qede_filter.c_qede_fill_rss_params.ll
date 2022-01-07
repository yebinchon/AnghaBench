; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_fill_rss_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_fill_rss_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32*, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qed_update_vport_rss_params = type { i32, i32, i32* }

@QED_RSS_IND_TABLE_SIZE = common dso_local global i32 0, align 4
@QEDE_RSS_INDIR_INITED = common dso_local global i32 0, align 4
@QEDE_RSS_KEY_INITED = common dso_local global i32 0, align 4
@QEDE_RSS_CAPS_INITED = common dso_local global i32 0, align 4
@QED_RSS_IPV4 = common dso_local global i32 0, align 4
@QED_RSS_IPV6 = common dso_local global i32 0, align 4
@QED_RSS_IPV4_TCP = common dso_local global i32 0, align 4
@QED_RSS_IPV6_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qede_fill_rss_params(%struct.qede_dev* %0, %struct.qed_update_vport_rss_params* %1, i32* %2) #0 {
  %4 = alloca %struct.qede_dev*, align 8
  %5 = alloca %struct.qed_update_vport_rss_params*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %4, align 8
  store %struct.qed_update_vport_rss_params* %1, %struct.qed_update_vport_rss_params** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %13 = call i32 @QEDE_RSS_COUNT(%struct.qede_dev* %12)
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.qed_update_vport_rss_params*, %struct.qed_update_vport_rss_params** %5, align 8
  %17 = call i32 @memset(%struct.qed_update_vport_rss_params* %16, i32 0, i32 16)
  %18 = load i32*, i32** %6, align 8
  store i32 0, i32* %18, align 4
  br label %166

19:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %37, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @QED_RSS_IND_TABLE_SIZE, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %26 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %33 = call i32 @QEDE_RSS_COUNT(%struct.qede_dev* %32)
  %34 = icmp sge i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  store i32 1, i32* %7, align 4
  br label %40

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %20

40:                                               ; preds = %35, %20
  %41 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %42 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @QEDE_RSS_INDIR_INITED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %79

50:                                               ; preds = %47, %40
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %70, %50
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @QED_RSS_IND_TABLE_SIZE, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %57 = call i32 @QEDE_RSS_COUNT(%struct.qede_dev* %56)
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %10, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i64, i64* %10, align 8
  %61 = call i64 @ethtool_rxfh_indir_default(i32 %59, i64 %60)
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %65 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  br label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %51

73:                                               ; preds = %51
  %74 = load i32, i32* @QEDE_RSS_INDIR_INITED, align 4
  %75 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %76 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %47
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %110, %79
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @QED_RSS_IND_TABLE_SIZE, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %113

84:                                               ; preds = %80
  %85 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %86 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %87 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = call i64 @QEDE_RX_QUEUE_IDX(%struct.qede_dev* %85, i64 %93)
  store i64 %94, i64* %11, align 8
  %95 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %96 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %95, i32 0, i32 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i64, i64* %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.qed_update_vport_rss_params*, %struct.qed_update_vport_rss_params** %5, align 8
  %105 = getelementptr inbounds %struct.qed_update_vport_rss_params, %struct.qed_update_vport_rss_params* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %103, i32* %109, align 4
  br label %110

110:                                              ; preds = %84
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %80

113:                                              ; preds = %80
  %114 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %115 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @QEDE_RSS_KEY_INITED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %113
  %121 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %122 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @netdev_rss_key_fill(i32 %123, i32 4)
  %125 = load i32, i32* @QEDE_RSS_KEY_INITED, align 4
  %126 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %127 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %120, %113
  %131 = load %struct.qed_update_vport_rss_params*, %struct.qed_update_vport_rss_params** %5, align 8
  %132 = getelementptr inbounds %struct.qed_update_vport_rss_params, %struct.qed_update_vport_rss_params* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %135 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @memcpy(i32 %133, i32 %136, i32 4)
  %138 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %139 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @QEDE_RSS_CAPS_INITED, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %159, label %144

144:                                              ; preds = %130
  %145 = load i32, i32* @QED_RSS_IPV4, align 4
  %146 = load i32, i32* @QED_RSS_IPV6, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @QED_RSS_IPV4_TCP, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @QED_RSS_IPV6_TCP, align 4
  %151 = or i32 %149, %150
  %152 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %153 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @QEDE_RSS_CAPS_INITED, align 4
  %155 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %156 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %144, %130
  %160 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %161 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.qed_update_vport_rss_params*, %struct.qed_update_vport_rss_params** %5, align 8
  %164 = getelementptr inbounds %struct.qed_update_vport_rss_params, %struct.qed_update_vport_rss_params* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load i32*, i32** %6, align 8
  store i32 1, i32* %165, align 4
  br label %166

166:                                              ; preds = %159, %15
  ret void
}

declare dso_local i32 @QEDE_RSS_COUNT(%struct.qede_dev*) #1

declare dso_local i32 @memset(%struct.qed_update_vport_rss_params*, i32, i32) #1

declare dso_local i64 @ethtool_rxfh_indir_default(i32, i64) #1

declare dso_local i64 @QEDE_RX_QUEUE_IDX(%struct.qede_dev*, i64) #1

declare dso_local i32 @netdev_rss_key_fill(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
