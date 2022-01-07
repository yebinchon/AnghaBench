; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c___stmmac_test_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c___stmmac_test_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32 }
%struct.stmmac_packet_attrs = type { i64, i32, i32 }
%struct.stmmac_test_priv = type { i32, %struct.TYPE_3__, i32, %struct.stmmac_packet_attrs* }
%struct.TYPE_3__ = type { %struct.stmmac_test_priv*, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@stmmac_test_loopback_validate = common dso_local global i32 0, align 4
@STMMAC_LB_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*, %struct.stmmac_packet_attrs*)* @__stmmac_test_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__stmmac_test_loopback(%struct.stmmac_priv* %0, %struct.stmmac_packet_attrs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stmmac_priv*, align 8
  %5 = alloca %struct.stmmac_packet_attrs*, align 8
  %6 = alloca %struct.stmmac_test_priv*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %4, align 8
  store %struct.stmmac_packet_attrs* %1, %struct.stmmac_packet_attrs** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.stmmac_test_priv* @kzalloc(i32 48, i32 %9)
  store %struct.stmmac_test_priv* %10, %struct.stmmac_test_priv** %6, align 8
  %11 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %6, align 8
  %12 = icmp ne %struct.stmmac_test_priv* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %117

16:                                               ; preds = %2
  %17 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %6, align 8
  %18 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %6, align 8
  %20 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %19, i32 0, i32 2
  %21 = call i32 @init_completion(i32* %20)
  %22 = load i32, i32* @ETH_P_IP, align 4
  %23 = call i32 @htons(i32 %22)
  %24 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %6, align 8
  %25 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @stmmac_test_loopback_validate, align 4
  %28 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %6, align 8
  %29 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 4
  %31 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %32 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %6, align 8
  %35 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  %37 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %6, align 8
  %38 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %6, align 8
  %39 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store %struct.stmmac_test_priv* %37, %struct.stmmac_test_priv** %40, align 8
  %41 = load %struct.stmmac_packet_attrs*, %struct.stmmac_packet_attrs** %5, align 8
  %42 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %6, align 8
  %43 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %42, i32 0, i32 3
  store %struct.stmmac_packet_attrs* %41, %struct.stmmac_packet_attrs** %43, align 8
  %44 = load %struct.stmmac_packet_attrs*, %struct.stmmac_packet_attrs** %5, align 8
  %45 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %16
  %49 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %6, align 8
  %50 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %49, i32 0, i32 1
  %51 = call i32 @dev_add_pack(%struct.TYPE_3__* %50)
  br label %52

52:                                               ; preds = %48, %16
  %53 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %54 = load %struct.stmmac_packet_attrs*, %struct.stmmac_packet_attrs** %5, align 8
  %55 = call %struct.sk_buff* @stmmac_test_get_udp_skb(%struct.stmmac_priv* %53, %struct.stmmac_packet_attrs* %54)
  store %struct.sk_buff* %55, %struct.sk_buff** %7, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %8, align 4
  br label %104

61:                                               ; preds = %52
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = load %struct.stmmac_packet_attrs*, %struct.stmmac_packet_attrs** %5, align 8
  %64 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %62, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = call i32 @dev_queue_xmit(%struct.sk_buff* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %104

72:                                               ; preds = %61
  %73 = load %struct.stmmac_packet_attrs*, %struct.stmmac_packet_attrs** %5, align 8
  %74 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %104

78:                                               ; preds = %72
  %79 = load %struct.stmmac_packet_attrs*, %struct.stmmac_packet_attrs** %5, align 8
  %80 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @STMMAC_LB_TIMEOUT, align 4
  %85 = load %struct.stmmac_packet_attrs*, %struct.stmmac_packet_attrs** %5, align 8
  %86 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %78
  %88 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %6, align 8
  %89 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %88, i32 0, i32 2
  %90 = load %struct.stmmac_packet_attrs*, %struct.stmmac_packet_attrs** %5, align 8
  %91 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @wait_for_completion_timeout(i32* %89, i32 %92)
  %94 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %6, align 8
  %95 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %102

99:                                               ; preds = %87
  %100 = load i32, i32* @ETIMEDOUT, align 4
  %101 = sub nsw i32 0, %100
  br label %102

102:                                              ; preds = %99, %98
  %103 = phi i32 [ 0, %98 ], [ %101, %99 ]
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %102, %77, %71, %58
  %105 = load %struct.stmmac_packet_attrs*, %struct.stmmac_packet_attrs** %5, align 8
  %106 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %6, align 8
  %111 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %110, i32 0, i32 1
  %112 = call i32 @dev_remove_pack(%struct.TYPE_3__* %111)
  br label %113

113:                                              ; preds = %109, %104
  %114 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %6, align 8
  %115 = call i32 @kfree(%struct.stmmac_test_priv* %114)
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %13
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.stmmac_test_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @dev_add_pack(%struct.TYPE_3__*) #1

declare dso_local %struct.sk_buff* @stmmac_test_get_udp_skb(%struct.stmmac_priv*, %struct.stmmac_packet_attrs*) #1

declare dso_local i32 @skb_set_queue_mapping(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_remove_pack(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.stmmac_test_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
