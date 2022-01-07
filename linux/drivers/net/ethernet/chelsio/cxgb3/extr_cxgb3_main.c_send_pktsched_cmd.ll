; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_send_pktsched_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_send_pktsched_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.mngt_pktsched_wr = type { i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FW_WROPCODE_MNGT = common dso_local global i32 0, align 4
@FW_MNGTOPCODE_PKTSCHED_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32, i32, i32, i32)* @send_pktsched_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_pktsched_cmd(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.mngt_pktsched_wr*, align 8
  %16 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @alloc_skb(i32 28, i32 %17)
  %19 = bitcast i8* %18 to %struct.sk_buff*
  store %struct.sk_buff* %19, %struct.sk_buff** %14, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load %struct.adapter*, %struct.adapter** %8, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  store %struct.sk_buff* %25, %struct.sk_buff** %14, align 8
  br label %26

26:                                               ; preds = %22, %6
  %27 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %82

32:                                               ; preds = %26
  %33 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %34 = call %struct.mngt_pktsched_wr* @skb_put(%struct.sk_buff* %33, i32 28)
  store %struct.mngt_pktsched_wr* %34, %struct.mngt_pktsched_wr** %15, align 8
  %35 = load i32, i32* @FW_WROPCODE_MNGT, align 4
  %36 = call i32 @V_WR_OP(i32 %35)
  %37 = call i32 @htonl(i32 %36)
  %38 = load %struct.mngt_pktsched_wr*, %struct.mngt_pktsched_wr** %15, align 8
  %39 = getelementptr inbounds %struct.mngt_pktsched_wr, %struct.mngt_pktsched_wr* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @FW_MNGTOPCODE_PKTSCHED_SET, align 4
  %41 = load %struct.mngt_pktsched_wr*, %struct.mngt_pktsched_wr** %15, align 8
  %42 = getelementptr inbounds %struct.mngt_pktsched_wr, %struct.mngt_pktsched_wr* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.mngt_pktsched_wr*, %struct.mngt_pktsched_wr** %15, align 8
  %45 = getelementptr inbounds %struct.mngt_pktsched_wr, %struct.mngt_pktsched_wr* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.mngt_pktsched_wr*, %struct.mngt_pktsched_wr** %15, align 8
  %48 = getelementptr inbounds %struct.mngt_pktsched_wr, %struct.mngt_pktsched_wr* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.mngt_pktsched_wr*, %struct.mngt_pktsched_wr** %15, align 8
  %51 = getelementptr inbounds %struct.mngt_pktsched_wr, %struct.mngt_pktsched_wr* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.mngt_pktsched_wr*, %struct.mngt_pktsched_wr** %15, align 8
  %54 = getelementptr inbounds %struct.mngt_pktsched_wr, %struct.mngt_pktsched_wr* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.mngt_pktsched_wr*, %struct.mngt_pktsched_wr** %15, align 8
  %57 = getelementptr inbounds %struct.mngt_pktsched_wr, %struct.mngt_pktsched_wr* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.adapter*, %struct.adapter** %8, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %60 = call i32 @t3_mgmt_tx(%struct.adapter* %58, %struct.sk_buff* %59)
  store i32 %60, i32* %16, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %62 = load %struct.adapter*, %struct.adapter** %8, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 0
  %64 = load %struct.sk_buff*, %struct.sk_buff** %63, align 8
  %65 = icmp eq %struct.sk_buff* %61, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %32
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @alloc_skb(i32 4, i32 %67)
  %69 = bitcast i8* %68 to %struct.sk_buff*
  %70 = load %struct.adapter*, %struct.adapter** %8, align 8
  %71 = getelementptr inbounds %struct.adapter, %struct.adapter* %70, i32 0, i32 0
  store %struct.sk_buff* %69, %struct.sk_buff** %71, align 8
  %72 = load %struct.adapter*, %struct.adapter** %8, align 8
  %73 = getelementptr inbounds %struct.adapter, %struct.adapter* %72, i32 0, i32 0
  %74 = load %struct.sk_buff*, %struct.sk_buff** %73, align 8
  %75 = icmp ne %struct.sk_buff* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %66
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %16, align 4
  br label %79

79:                                               ; preds = %76, %66
  br label %80

80:                                               ; preds = %79, %32
  %81 = load i32, i32* %16, align 4
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %80, %29
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i8* @alloc_skb(i32, i32) #1

declare dso_local %struct.mngt_pktsched_wr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @V_WR_OP(i32) #1

declare dso_local i32 @t3_mgmt_tx(%struct.adapter*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
