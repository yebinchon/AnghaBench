; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_init.c_mt7603_dma_sched_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_init.c_mt7603_dma_sched_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32 }

@MT_PSE_FC_P0 = common dso_local global i32 0, align 4
@MT_PSE_FC_P0_MAX_QUOTA = common dso_local global i32 0, align 4
@MT_PSE_FRP = common dso_local global i32 0, align 4
@MT_PSE_FRP_P0 = common dso_local global i32 0, align 4
@MT_PSE_FRP_P1 = common dso_local global i32 0, align 4
@MT_PSE_FRP_P2_RQ2 = common dso_local global i32 0, align 4
@MT_HIGH_PRIORITY_1 = common dso_local global i32 0, align 4
@MT_HIGH_PRIORITY_2 = common dso_local global i32 0, align 4
@MT_QUEUE_PRIORITY_1 = common dso_local global i32 0, align 4
@MT_QUEUE_PRIORITY_2 = common dso_local global i32 0, align 4
@MT_PRIORITY_MASK = common dso_local global i32 0, align 4
@MT_SCH_1 = common dso_local global i32 0, align 4
@MT_SCH_2 = common dso_local global i32 0, align 4
@MT_RSV_MAX_THRESH = common dso_local global i32 0, align 4
@MT7603_REV_E2 = common dso_local global i64 0, align 8
@MT_BMAP_0 = common dso_local global i32 0, align 4
@MT_BMAP_1 = common dso_local global i32 0, align 4
@MT_SCH_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7603_dev*)* @mt7603_dma_sched_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7603_dma_sched_init(%struct.mt7603_dev* %0) #0 {
  %2 = alloca %struct.mt7603_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %2, align 8
  store i32 128, i32* %3, align 4
  store i32 1792, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sdiv i32 4096, %14
  store i32 %15, i32* %6, align 4
  store i32 4096, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 2048, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 4, %18
  %20 = load i32, i32* %3, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %22 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %23 = load i32, i32* @MT_PSE_FC_P0, align 4
  %24 = load i32, i32* @MT_PSE_FC_P0_MAX_QUOTA, align 4
  %25 = call i32 @mt76_get_field(%struct.mt7603_dev* %22, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %3, align 4
  %28 = sdiv i32 %26, %27
  %29 = mul nsw i32 4, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %3, align 4
  %32 = sdiv i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %34 = load i32, i32* @MT_PSE_FRP, align 4
  %35 = load i32, i32* @MT_PSE_FRP_P0, align 4
  %36 = call i32 @FIELD_PREP(i32 %35, i32 7)
  %37 = load i32, i32* @MT_PSE_FRP_P1, align 4
  %38 = call i32 @FIELD_PREP(i32 %37, i32 6)
  %39 = or i32 %36, %38
  %40 = load i32, i32* @MT_PSE_FRP_P2_RQ2, align 4
  %41 = call i32 @FIELD_PREP(i32 %40, i32 4)
  %42 = or i32 %39, %41
  %43 = call i32 @mt76_wr(%struct.mt7603_dev* %33, i32 %34, i32 %42)
  %44 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %45 = load i32, i32* @MT_HIGH_PRIORITY_1, align 4
  %46 = call i32 @mt76_wr(%struct.mt7603_dev* %44, i32 %45, i32 1431655763)
  %47 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %48 = load i32, i32* @MT_HIGH_PRIORITY_2, align 4
  %49 = call i32 @mt76_wr(%struct.mt7603_dev* %47, i32 %48, i32 2018858325)
  %50 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %51 = load i32, i32* @MT_QUEUE_PRIORITY_1, align 4
  %52 = call i32 @mt76_wr(%struct.mt7603_dev* %50, i32 %51, i32 723126638)
  %53 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %54 = load i32, i32* @MT_QUEUE_PRIORITY_2, align 4
  %55 = call i32 @mt76_wr(%struct.mt7603_dev* %53, i32 %54, i32 2019511612)
  %56 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %57 = load i32, i32* @MT_PRIORITY_MASK, align 4
  %58 = call i32 @mt76_wr(%struct.mt7603_dev* %56, i32 %57, i32 -1)
  %59 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %60 = load i32, i32* @MT_SCH_1, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, 536870912
  %63 = call i32 @mt76_wr(%struct.mt7603_dev* %59, i32 %60, i32 %62)
  %64 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %65 = load i32, i32* @MT_SCH_2, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @mt76_wr(%struct.mt7603_dev* %64, i32 %65, i32 %66)
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %77, %1
  %69 = load i32, i32* %13, align 4
  %70 = icmp sle i32 %69, 4
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @MT_PAGE_COUNT(i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @mt76_wr(%struct.mt7603_dev* %72, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %68

80:                                               ; preds = %68
  %81 = load i32, i32* %6, align 4
  %82 = mul nsw i32 5, %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %86 = call i32 @MT_PAGE_COUNT(i32 5)
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @mt76_wr(%struct.mt7603_dev* %85, i32 %86, i32 %87)
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %10, align 4
  %92 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %93 = call i32 @MT_PAGE_COUNT(i32 7)
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @mt76_wr(%struct.mt7603_dev* %92, i32 %93, i32 %94)
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %10, align 4
  %99 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %100 = call i32 @MT_PAGE_COUNT(i32 8)
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @mt76_wr(%struct.mt7603_dev* %99, i32 %100, i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %10, align 4
  %106 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %107 = call i64 @is_mt7603(%struct.mt7603_dev* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %80
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %109, %80
  %111 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %112 = load i32, i32* @MT_RSV_MAX_THRESH, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* %10, align 4
  %115 = sub nsw i32 %113, %114
  %116 = call i32 @mt76_wr(%struct.mt7603_dev* %111, i32 %112, i32 %115)
  %117 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %118 = call i64 @is_mt7603(%struct.mt7603_dev* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %148

120:                                              ; preds = %110
  %121 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %122 = call i64 @mt76xx_rev(%struct.mt7603_dev* %121)
  %123 = load i64, i64* @MT7603_REV_E2, align 8
  %124 = icmp sge i64 %122, %123
  br i1 %124, label %125, label %148

125:                                              ; preds = %120
  %126 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %127 = call i32 @MT_GROUP_THRESH(i32 0)
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* %11, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load i32, i32* %12, align 4
  %132 = sub nsw i32 %130, %131
  %133 = call i32 @mt76_wr(%struct.mt7603_dev* %126, i32 %127, i32 %132)
  %134 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %135 = call i32 @MT_GROUP_THRESH(i32 1)
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @mt76_wr(%struct.mt7603_dev* %134, i32 %135, i32 %136)
  %138 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %139 = load i32, i32* @MT_BMAP_0, align 4
  %140 = call i32 @mt76_wr(%struct.mt7603_dev* %138, i32 %139, i32 8453983)
  %141 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %142 = call i32 @MT_GROUP_THRESH(i32 2)
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @mt76_wr(%struct.mt7603_dev* %141, i32 %142, i32 %143)
  %145 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %146 = load i32, i32* @MT_BMAP_1, align 4
  %147 = call i32 @mt76_wr(%struct.mt7603_dev* %145, i32 %146, i32 32)
  br label %156

148:                                              ; preds = %120, %110
  %149 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %150 = call i32 @MT_GROUP_THRESH(i32 0)
  %151 = load i32, i32* %4, align 4
  %152 = call i32 @mt76_wr(%struct.mt7603_dev* %149, i32 %150, i32 %151)
  %153 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %154 = load i32, i32* @MT_BMAP_0, align 4
  %155 = call i32 @mt76_wr(%struct.mt7603_dev* %153, i32 %154, i32 65535)
  br label %156

156:                                              ; preds = %148, %125
  %157 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %158 = load i32, i32* @MT_SCH_4, align 4
  %159 = call i32 @mt76_wr(%struct.mt7603_dev* %157, i32 %158, i32 0)
  store i32 0, i32* %13, align 4
  br label %160

160:                                              ; preds = %168, %156
  %161 = load i32, i32* %13, align 4
  %162 = icmp sle i32 %161, 15
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %165 = load i32, i32* %13, align 4
  %166 = call i32 @MT_TXTIME_THRESH(i32 %165)
  %167 = call i32 @mt76_wr(%struct.mt7603_dev* %164, i32 %166, i32 1048575)
  br label %168

168:                                              ; preds = %163
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %160

171:                                              ; preds = %160
  %172 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %173 = load i32, i32* @MT_SCH_4, align 4
  %174 = call i32 @BIT(i32 6)
  %175 = call i32 @mt76_set(%struct.mt7603_dev* %172, i32 %173, i32 %174)
  ret void
}

declare dso_local i32 @mt76_get_field(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @MT_PAGE_COUNT(i32) #1

declare dso_local i64 @is_mt7603(%struct.mt7603_dev*) #1

declare dso_local i64 @mt76xx_rev(%struct.mt7603_dev*) #1

declare dso_local i32 @MT_GROUP_THRESH(i32) #1

declare dso_local i32 @MT_TXTIME_THRESH(i32) #1

declare dso_local i32 @mt76_set(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
