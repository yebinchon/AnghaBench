; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_tx.c_get_real_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_tx.c_get_real_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.skb_shared_info = type { i32, i64 }
%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CTRL_SIZE = common dso_local global i32 0, align 4
@DS_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Non-linear headers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.skb_shared_info*, %struct.net_device*, i32*, i32*, i8**)* @get_real_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_real_size(%struct.sk_buff* %0, %struct.skb_shared_info* %1, %struct.net_device* %2, i32* %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.skb_shared_info*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.mlx4_en_priv*, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.skb_shared_info* %1, %struct.skb_shared_info** %9, align 8
  store %struct.net_device* %2, %struct.net_device** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  %16 = load %struct.net_device*, %struct.net_device** %10, align 8
  %17 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.mlx4_en_priv* %17, %struct.mlx4_en_priv** %14, align 8
  %18 = load %struct.skb_shared_info*, %struct.skb_shared_info** %9, align 8
  %19 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %88

22:                                               ; preds = %6
  %23 = load i32*, i32** %12, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = call i32 @skb_inner_transport_header(%struct.sk_buff* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %30, %33
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = call i32 @inner_tcp_hdrlen(%struct.sk_buff* %35)
  %37 = add nsw i32 %34, %36
  %38 = load i32*, i32** %11, align 8
  store i32 %37, i32* %38, align 4
  br label %46

39:                                               ; preds = %22
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = call i32 @skb_transport_offset(%struct.sk_buff* %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = call i32 @tcp_hdrlen(%struct.sk_buff* %42)
  %44 = add nsw i32 %41, %43
  %45 = load i32*, i32** %11, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %39, %28
  %47 = load i32, i32* @CTRL_SIZE, align 4
  %48 = load %struct.skb_shared_info*, %struct.skb_shared_info** %9, align 8
  %49 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DS_SIZE, align 4
  %52 = mul nsw i32 %50, %51
  %53 = add nsw i32 %47, %52
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 4
  %57 = load i32, i32* @DS_SIZE, align 4
  %58 = call i32 @ALIGN(i32 %56, i32 %57)
  %59 = add nsw i32 %53, %58
  store i32 %59, i32* %15, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = call i32 @skb_headlen(%struct.sk_buff* %62)
  %64 = icmp ne i32 %61, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %46
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = call i32 @skb_headlen(%struct.sk_buff* %71)
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* @DS_SIZE, align 4
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %15, align 4
  br label %86

78:                                               ; preds = %68
  %79 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %14, align 8
  %80 = call i64 @netif_msg_tx_err(%struct.mlx4_en_priv* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %14, align 8
  %84 = call i32 @en_warn(%struct.mlx4_en_priv* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %78
  store i32 0, i32* %7, align 4
  br label %118

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %46
  br label %116

88:                                               ; preds = %6
  %89 = load i32*, i32** %11, align 8
  store i32 0, i32* %89, align 4
  %90 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %14, align 8
  %91 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %96 = load %struct.skb_shared_info*, %struct.skb_shared_info** %9, align 8
  %97 = load i8**, i8*** %13, align 8
  %98 = call i32 @is_inline(i32 %94, %struct.sk_buff* %95, %struct.skb_shared_info* %96, i8** %97)
  %99 = load i32*, i32** %12, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %88
  %104 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %105 = call i32 @inline_size(%struct.sk_buff* %104)
  store i32 %105, i32* %15, align 4
  br label %115

106:                                              ; preds = %88
  %107 = load i32, i32* @CTRL_SIZE, align 4
  %108 = load %struct.skb_shared_info*, %struct.skb_shared_info** %9, align 8
  %109 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  %112 = load i32, i32* @DS_SIZE, align 4
  %113 = mul nsw i32 %111, %112
  %114 = add nsw i32 %107, %113
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %106, %103
  br label %116

116:                                              ; preds = %115, %87
  %117 = load i32, i32* %15, align 4
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %116, %85
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_inner_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @inner_tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @netif_msg_tx_err(%struct.mlx4_en_priv*) #1

declare dso_local i32 @en_warn(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @is_inline(i32, %struct.sk_buff*, %struct.skb_shared_info*, i8**) #1

declare dso_local i32 @inline_size(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
