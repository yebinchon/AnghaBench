; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_espibug_workaround_t204.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_espibug_workaround_t204.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { i64, i32, %struct.sk_buff**, %struct.adapter* }
%struct.sk_buff = type { i32*, i32 }
%struct.adapter = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@espibug_timer = common dso_local global i32 0, align 4
@MAX_NPORTS = common dso_local global i32 0, align 4
@PORT_MASK = common dso_local global i32 0, align 4
@ch_mac_addr = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@sge = common dso_local global %struct.sge* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @espibug_workaround_t204 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @espibug_workaround_t204(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sge*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %11 = load %struct.sge*, %struct.sge** %3, align 8
  %12 = ptrtoint %struct.sge* %11 to i32
  %13 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %14 = load i32, i32* @espibug_timer, align 4
  %15 = call %struct.sge* @from_timer(i32 %12, %struct.timer_list* %13, i32 %14)
  store %struct.sge* %15, %struct.sge** %3, align 8
  %16 = load %struct.sge*, %struct.sge** %3, align 8
  %17 = getelementptr inbounds %struct.sge, %struct.sge* %16, i32 0, i32 3
  %18 = load %struct.adapter*, %struct.adapter** %17, align 8
  store %struct.adapter* %18, %struct.adapter** %4, align 8
  %19 = load %struct.adapter*, %struct.adapter** %4, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @MAX_NPORTS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %6, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %7, align 8
  %27 = load %struct.adapter*, %struct.adapter** %4, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PORT_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %132

33:                                               ; preds = %1
  %34 = load %struct.adapter*, %struct.adapter** %4, align 8
  %35 = getelementptr inbounds i32, i32* %26, i64 0
  %36 = call i64 @t1_espi_get_mon_t204(%struct.adapter* %34, i32* %35, i32 0)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %9, align 4
  br label %141

39:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %128, %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %131

44:                                               ; preds = %40
  %45 = load %struct.sge*, %struct.sge** %3, align 8
  %46 = getelementptr inbounds %struct.sge, %struct.sge* %45, i32 0, i32 2
  %47 = load %struct.sk_buff**, %struct.sk_buff*** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %47, i64 %49
  %51 = load %struct.sk_buff*, %struct.sk_buff** %50, align 8
  store %struct.sk_buff* %51, %struct.sk_buff** %10, align 8
  %52 = load %struct.adapter*, %struct.adapter** %4, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @netif_running(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %44
  %63 = load %struct.adapter*, %struct.adapter** %4, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @netif_queue_stopped(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %89, label %73

73:                                               ; preds = %62
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %26, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %26, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 4095
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %88 = icmp ne %struct.sk_buff* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %86, %79, %73, %62, %44
  br label %128

90:                                               ; preds = %86
  %91 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %114, label %97

97:                                               ; preds = %90
  %98 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %99 = load i32, i32* @ch_mac_addr, align 4
  %100 = load i32, i32* @ETH_ALEN, align 4
  %101 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %98, i32 4, i32 %99, i32 %100)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 10
  %107 = load i32, i32* @ch_mac_addr, align 4
  %108 = load i32, i32* @ETH_ALEN, align 4
  %109 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %102, i32 %106, i32 %107, i32 %108)
  %110 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 255, i32* %113, align 4
  br label %114

114:                                              ; preds = %97, %90
  %115 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %116 = call %struct.sk_buff* @skb_get(%struct.sk_buff* %115)
  store %struct.sk_buff* %116, %struct.sk_buff** %10, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %118 = load %struct.adapter*, %struct.adapter** %4, align 8
  %119 = load %struct.adapter*, %struct.adapter** %4, align 8
  %120 = getelementptr inbounds %struct.adapter, %struct.adapter* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @t1_sge_tx(%struct.sk_buff* %117, %struct.adapter* %118, i32 0, i32 %126)
  br label %128

128:                                              ; preds = %114, %89
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %40

131:                                              ; preds = %40
  br label %132

132:                                              ; preds = %131, %1
  %133 = load %struct.sge*, %struct.sge** %3, align 8
  %134 = getelementptr inbounds %struct.sge, %struct.sge* %133, i32 0, i32 1
  %135 = load i64, i64* @jiffies, align 8
  %136 = load %struct.sge*, %struct.sge** %3, align 8
  %137 = getelementptr inbounds %struct.sge, %struct.sge* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %135, %138
  %140 = call i32 @mod_timer(i32* %134, i64 %139)
  store i32 0, i32* %9, align 4
  br label %141

141:                                              ; preds = %132, %38
  %142 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i32, i32* %9, align 4
  switch i32 %143, label %145 [
    i32 0, label %144
    i32 1, label %144
  ]

144:                                              ; preds = %141, %141
  ret void

145:                                              ; preds = %141
  unreachable
}

declare dso_local %struct.sge* @from_timer(i32, %struct.timer_list*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @t1_espi_get_mon_t204(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i64 @netif_queue_stopped(i32) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @t1_sge_tx(%struct.sk_buff*, %struct.adapter*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
