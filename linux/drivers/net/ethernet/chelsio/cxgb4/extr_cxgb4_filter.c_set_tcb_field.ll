; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_set_tcb_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_set_tcb_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.filter_entry = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.cpl_set_tcb_field = type { i8*, i8*, i8*, i8* }
%struct.sk_buff = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CPL_SET_TCB_FIELD = common dso_local global i32 0, align 4
@CPL_PRIORITY_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.filter_entry*, i32, i32, i32, i32, i32)* @set_tcb_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_tcb_field(%struct.adapter* %0, %struct.filter_entry* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca %struct.filter_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.cpl_set_tcb_field*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  store %struct.adapter* %0, %struct.adapter** %9, align 8
  store %struct.filter_entry* %1, %struct.filter_entry** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.sk_buff* @alloc_skb(i32 32, i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %17, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %75

25:                                               ; preds = %7
  %26 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %27 = call i64 @__skb_put_zero(%struct.sk_buff* %26, i32 32)
  %28 = inttoptr i64 %27 to %struct.cpl_set_tcb_field*
  store %struct.cpl_set_tcb_field* %28, %struct.cpl_set_tcb_field** %16, align 8
  %29 = load %struct.cpl_set_tcb_field*, %struct.cpl_set_tcb_field** %16, align 8
  %30 = load i32, i32* @CPL_SET_TCB_FIELD, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @INIT_TP_WR_CPL(%struct.cpl_set_tcb_field* %29, i32 %30, i32 %31)
  %33 = call i32 @REPLY_CHAN_V(i32 0)
  %34 = load %struct.adapter*, %struct.adapter** %9, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @QUEUENO_V(i32 %38)
  %40 = or i32 %33, %39
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @NO_REPLY_V(i32 %41)
  %43 = or i32 %40, %42
  %44 = call i8* @htons(i32 %43)
  %45 = load %struct.cpl_set_tcb_field*, %struct.cpl_set_tcb_field** %16, align 8
  %46 = getelementptr inbounds %struct.cpl_set_tcb_field, %struct.cpl_set_tcb_field* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @TCB_WORD_V(i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @TCB_COOKIE_V(i32 %49)
  %51 = or i32 %48, %50
  %52 = call i8* @htons(i32 %51)
  %53 = load %struct.cpl_set_tcb_field*, %struct.cpl_set_tcb_field** %16, align 8
  %54 = getelementptr inbounds %struct.cpl_set_tcb_field, %struct.cpl_set_tcb_field* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i8* @cpu_to_be64(i32 %55)
  %57 = load %struct.cpl_set_tcb_field*, %struct.cpl_set_tcb_field** %16, align 8
  %58 = getelementptr inbounds %struct.cpl_set_tcb_field, %struct.cpl_set_tcb_field* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i8* @cpu_to_be64(i32 %59)
  %61 = load %struct.cpl_set_tcb_field*, %struct.cpl_set_tcb_field** %16, align 8
  %62 = getelementptr inbounds %struct.cpl_set_tcb_field, %struct.cpl_set_tcb_field* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %64 = load i32, i32* @CPL_PRIORITY_CONTROL, align 4
  %65 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %66 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 3
  %71 = call i32 @set_wr_txq(%struct.sk_buff* %63, i32 %64, i32 %70)
  %72 = load %struct.adapter*, %struct.adapter** %9, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %74 = call i32 @t4_ofld_send(%struct.adapter* %72, %struct.sk_buff* %73)
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %25, %22
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @__skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @INIT_TP_WR_CPL(%struct.cpl_set_tcb_field*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @REPLY_CHAN_V(i32) #1

declare dso_local i32 @QUEUENO_V(i32) #1

declare dso_local i32 @NO_REPLY_V(i32) #1

declare dso_local i32 @TCB_WORD_V(i32) #1

declare dso_local i32 @TCB_COOKIE_V(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @set_wr_txq(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @t4_ofld_send(%struct.adapter*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
