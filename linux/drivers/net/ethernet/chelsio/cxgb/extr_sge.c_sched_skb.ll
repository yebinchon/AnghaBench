; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_sched_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_sched_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { %struct.TYPE_6__*, %struct.cmdQ*, %struct.sched* }
%struct.TYPE_6__ = type { i64 }
%struct.cmdQ = type { i32 }
%struct.sched = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"sched_skb %p\0A\00", align 1
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@MAX_NPORTS = common dso_local global i32 0, align 4
@CMDQ_STAT_LAST_PKT_DB = common dso_local global i32 0, align 4
@CMDQ_STAT_RUNNING = common dso_local global i32 0, align 4
@F_CMDQ0_ENABLE = common dso_local global i32 0, align 4
@A_SG_DOORBELL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"sched_skb ret %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sge*, %struct.sk_buff*, i32)* @sched_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @sched_skb(%struct.sge* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sge*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sched*, align 8
  %9 = alloca %struct.sk_buff_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cmdQ*, align 8
  store %struct.sge* %0, %struct.sge** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.sge*, %struct.sge** %5, align 8
  %15 = getelementptr inbounds %struct.sge, %struct.sge* %14, i32 0, i32 2
  %16 = load %struct.sched*, %struct.sched** %15, align 8
  store %struct.sched* %16, %struct.sched** %8, align 8
  store i32 1, i32* %12, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load %struct.sched*, %struct.sched** %8, align 8
  %23 = getelementptr inbounds %struct.sched, %struct.sched* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %173

27:                                               ; preds = %21
  br label %46

28:                                               ; preds = %3
  %29 = load %struct.sched*, %struct.sched** %8, align 8
  %30 = getelementptr inbounds %struct.sched, %struct.sched* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store %struct.sk_buff_head* %38, %struct.sk_buff_head** %9, align 8
  %39 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %39, %struct.sk_buff* %40)
  %42 = load %struct.sched*, %struct.sched** %8, align 8
  %43 = getelementptr inbounds %struct.sched, %struct.sched* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %46

46:                                               ; preds = %28, %27
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %49 = add nsw i32 %48, 1
  %50 = icmp ult i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %132

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %130, %52
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %119, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @MAX_NPORTS, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %122

58:                                               ; preds = %54
  %59 = load %struct.sched*, %struct.sched** %8, align 8
  %60 = getelementptr inbounds %struct.sched, %struct.sched* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* @MAX_NPORTS, align 4
  %64 = sub i32 %63, 1
  %65 = and i32 %62, %64
  %66 = load %struct.sched*, %struct.sched** %8, align 8
  %67 = getelementptr inbounds %struct.sched, %struct.sched* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.sched*, %struct.sched** %8, align 8
  %69 = getelementptr inbounds %struct.sched, %struct.sched* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load %struct.sched*, %struct.sched** %8, align 8
  %72 = getelementptr inbounds %struct.sched, %struct.sched* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store %struct.sk_buff_head* %76, %struct.sk_buff_head** %9, align 8
  %77 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %78 = call %struct.sk_buff* @skb_peek(%struct.sk_buff_head* %77)
  store %struct.sk_buff* %78, %struct.sk_buff** %6, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = icmp ne %struct.sk_buff* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %58
  br label %119

82:                                               ; preds = %58
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.sched*, %struct.sched** %8, align 8
  %88 = getelementptr inbounds %struct.sched, %struct.sched* %87, i32 0, i32 2
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load %struct.sched*, %struct.sched** %8, align 8
  %91 = getelementptr inbounds %struct.sched, %struct.sched* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ule i32 %86, %96
  br i1 %97, label %98, label %118

98:                                               ; preds = %82
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.sched*, %struct.sched** %8, align 8
  %101 = getelementptr inbounds %struct.sched, %struct.sched* %100, i32 0, i32 2
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load %struct.sched*, %struct.sched** %8, align 8
  %104 = getelementptr inbounds %struct.sched, %struct.sched* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sub i32 %109, %99
  store i32 %110, i32* %108, align 4
  %111 = load %struct.sched*, %struct.sched** %8, align 8
  %112 = getelementptr inbounds %struct.sched, %struct.sched* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, -1
  store i64 %114, i64* %112, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %116 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %117 = call i32 @__skb_unlink(%struct.sk_buff* %115, %struct.sk_buff_head* %116)
  br label %132

118:                                              ; preds = %82
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %119

119:                                              ; preds = %118, %81
  %120 = load i32, i32* %10, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %54

122:                                              ; preds = %54
  %123 = load i32, i32* %12, align 4
  %124 = add i32 %123, -1
  store i32 %124, i32* %12, align 4
  %125 = icmp ne i32 %123, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load %struct.sge*, %struct.sge** %5, align 8
  %128 = call i64 @sched_update_avail(%struct.sge* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %53

131:                                              ; preds = %126, %122
  br label %132

132:                                              ; preds = %131, %98, %51
  %133 = load %struct.sched*, %struct.sched** %8, align 8
  %134 = getelementptr inbounds %struct.sched, %struct.sched* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %169

137:                                              ; preds = %132
  %138 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %139 = icmp ne %struct.sk_buff* %138, null
  br i1 %139, label %169, label %140

140:                                              ; preds = %137
  %141 = load %struct.sge*, %struct.sge** %5, align 8
  %142 = getelementptr inbounds %struct.sge, %struct.sge* %141, i32 0, i32 1
  %143 = load %struct.cmdQ*, %struct.cmdQ** %142, align 8
  %144 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %143, i64 0
  store %struct.cmdQ* %144, %struct.cmdQ** %13, align 8
  %145 = load i32, i32* @CMDQ_STAT_LAST_PKT_DB, align 4
  %146 = load %struct.cmdQ*, %struct.cmdQ** %13, align 8
  %147 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %146, i32 0, i32 0
  %148 = call i32 @clear_bit(i32 %145, i32* %147)
  %149 = load i32, i32* @CMDQ_STAT_RUNNING, align 4
  %150 = load %struct.cmdQ*, %struct.cmdQ** %13, align 8
  %151 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %150, i32 0, i32 0
  %152 = call i64 @test_and_set_bit(i32 %149, i32* %151)
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %168

154:                                              ; preds = %140
  %155 = load i32, i32* @CMDQ_STAT_LAST_PKT_DB, align 4
  %156 = load %struct.cmdQ*, %struct.cmdQ** %13, align 8
  %157 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %156, i32 0, i32 0
  %158 = call i32 @set_bit(i32 %155, i32* %157)
  %159 = load i32, i32* @F_CMDQ0_ENABLE, align 4
  %160 = load %struct.sge*, %struct.sge** %5, align 8
  %161 = getelementptr inbounds %struct.sge, %struct.sge* %160, i32 0, i32 0
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @A_SG_DOORBELL, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i32 @writel(i32 %159, i64 %166)
  br label %168

168:                                              ; preds = %154, %140
  br label %169

169:                                              ; preds = %168, %137, %132
  %170 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %171 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %170)
  %172 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %172, %struct.sk_buff** %4, align 8
  br label %173

173:                                              ; preds = %169, %26
  %174 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %174
}

declare dso_local i32 @pr_debug(i8*, %struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_peek(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i64 @sched_update_avail(%struct.sge*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
