; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sxgbe_rx_norm_desc = type { i32 }
%struct.sxgbe_priv_data = type { i64, i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__**, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.sxgbe_rx_norm_desc*, i32*, i32*)*, i32 (%struct.sxgbe_rx_norm_desc*)*, i64 (%struct.sxgbe_rx_norm_desc*)* }
%struct.TYPE_4__ = type { i32, %struct.sk_buff**, %struct.sxgbe_rx_norm_desc* }
%struct.sk_buff = type { i32, %struct.sxgbe_rx_norm_desc* }

@CHECKSUM_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"rx descriptor is not consistent\0A\00", align 1
@NET_IP_ALIGN = common dso_local global %struct.sxgbe_rx_norm_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sxgbe_priv_data*, i32)* @sxgbe_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sxgbe_rx(%struct.sxgbe_priv_data* %0, i32 %1) #0 {
  %3 = alloca %struct.sxgbe_priv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sxgbe_rx_norm_desc*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  store %struct.sxgbe_priv_data* %0, %struct.sxgbe_priv_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %16 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %19 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %22 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %21, i32 0, i32 4
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %23, i64 %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %183, %98, %2
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %185

33:                                               ; preds = %29
  %34 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %35 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %34, i32 0, i32 4
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load %struct.sxgbe_rx_norm_desc*, %struct.sxgbe_rx_norm_desc** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, %struct.sxgbe_rx_norm_desc* %41, i64 %43
  store %struct.sxgbe_rx_norm_desc* %44, %struct.sxgbe_rx_norm_desc** %12, align 8
  %45 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %46 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %45, i32 0, i32 3
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i64 (%struct.sxgbe_rx_norm_desc*)*, i64 (%struct.sxgbe_rx_norm_desc*)** %50, align 8
  %52 = load %struct.sxgbe_rx_norm_desc*, %struct.sxgbe_rx_norm_desc** %12, align 8
  %53 = call i64 %51(%struct.sxgbe_rx_norm_desc* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %33
  br label %185

56:                                               ; preds = %33
  %57 = load i32, i32* %9, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %9, align 4
  %59 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %60 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %59, i32 0, i32 4
  %61 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %61, i64 %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* %6, align 4
  %69 = urem i32 %67, %68
  store i32 %69, i32* %8, align 4
  %70 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %71 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %70, i32 0, i32 4
  %72 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %72, i64 %73
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load %struct.sxgbe_rx_norm_desc*, %struct.sxgbe_rx_norm_desc** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, %struct.sxgbe_rx_norm_desc* %77, i64 %79
  %81 = call i32 @prefetch(%struct.sxgbe_rx_norm_desc* %80)
  %82 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %83 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %82, i32 0, i32 3
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32 (%struct.sxgbe_rx_norm_desc*, i32*, i32*)*, i32 (%struct.sxgbe_rx_norm_desc*, i32*, i32*)** %87, align 8
  %89 = load %struct.sxgbe_rx_norm_desc*, %struct.sxgbe_rx_norm_desc** %12, align 8
  %90 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %91 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %90, i32 0, i32 7
  %92 = call i32 %88(%struct.sxgbe_rx_norm_desc* %89, i32* %91, i32* %10)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %56
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %7, align 4
  br label %29

100:                                              ; preds = %56
  %101 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %102 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = load i32, i32* @CHECKSUM_NONE, align 4
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %109, %100
  %112 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %113 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %112, i32 0, i32 4
  %114 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %113, align 8
  %115 = load i64, i64* %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %114, i64 %115
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load %struct.sk_buff**, %struct.sk_buff*** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %119, i64 %121
  %123 = load %struct.sk_buff*, %struct.sk_buff** %122, align 8
  store %struct.sk_buff* %123, %struct.sk_buff** %13, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %125 = icmp ne %struct.sk_buff* %124, null
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %111
  %131 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %132 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @netdev_err(i32 %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %135

135:                                              ; preds = %130, %111
  %136 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 1
  %138 = load %struct.sxgbe_rx_norm_desc*, %struct.sxgbe_rx_norm_desc** %137, align 8
  %139 = load %struct.sxgbe_rx_norm_desc*, %struct.sxgbe_rx_norm_desc** @NET_IP_ALIGN, align 8
  %140 = ptrtoint %struct.sxgbe_rx_norm_desc* %138 to i64
  %141 = ptrtoint %struct.sxgbe_rx_norm_desc* %139 to i64
  %142 = sub i64 %140, %141
  %143 = sdiv exact i64 %142, 4
  %144 = inttoptr i64 %143 to %struct.sxgbe_rx_norm_desc*
  %145 = call i32 @prefetch(%struct.sxgbe_rx_norm_desc* %144)
  %146 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %147 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %146, i32 0, i32 4
  %148 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %147, align 8
  %149 = load i64, i64* %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %148, i64 %149
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load %struct.sk_buff**, %struct.sk_buff*** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %153, i64 %155
  store %struct.sk_buff* null, %struct.sk_buff** %156, align 8
  %157 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %158 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %157, i32 0, i32 3
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  %163 = load i32 (%struct.sxgbe_rx_norm_desc*)*, i32 (%struct.sxgbe_rx_norm_desc*)** %162, align 8
  %164 = load %struct.sxgbe_rx_norm_desc*, %struct.sxgbe_rx_norm_desc** %12, align 8
  %165 = call i32 %163(%struct.sxgbe_rx_norm_desc* %164)
  store i32 %165, i32* %14, align 4
  %166 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %167 = load i32, i32* %14, align 4
  %168 = call i32 @skb_put(%struct.sk_buff* %166, i32 %167)
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @CHECKSUM_NONE, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %135
  %176 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %177 = call i32 @netif_receive_skb(%struct.sk_buff* %176)
  br label %183

178:                                              ; preds = %135
  %179 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %180 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %179, i32 0, i32 2
  %181 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %182 = call i32 @napi_gro_receive(i32* %180, %struct.sk_buff* %181)
  br label %183

183:                                              ; preds = %178, %175
  %184 = load i32, i32* %8, align 4
  store i32 %184, i32* %7, align 4
  br label %29

185:                                              ; preds = %55, %29
  %186 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %187 = call i32 @sxgbe_rx_refill(%struct.sxgbe_priv_data* %186)
  %188 = load i32, i32* %9, align 4
  ret i32 %188
}

declare dso_local i32 @prefetch(%struct.sxgbe_rx_norm_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @sxgbe_rx_refill(%struct.sxgbe_priv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
