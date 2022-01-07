; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_beacon.c_mt76x02_mac_set_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_beacon.c_mt76x02_mac_set_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }

@MT_MAC_BSSID_DW1 = common dso_local global i32 0, align 4
@MT_MAC_BSSID_DW1_MBEACON_N = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x02_mac_set_beacon(%struct.mt76x02_dev* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %106, %3
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %13 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %12, i32 0, i32 1
  %14 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.sk_buff** %14)
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %109

17:                                               ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %68

21:                                               ; preds = %17
  %22 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %23 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %22, i32 0, i32 1
  %24 = load %struct.sk_buff**, %struct.sk_buff*** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %24, i64 %26
  %28 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = xor i32 %32, %37
  store i32 %38, i32* %7, align 4
  %39 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %40 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %39, i32 0, i32 1
  %41 = load %struct.sk_buff**, %struct.sk_buff*** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %41, i64 %43
  %45 = load %struct.sk_buff*, %struct.sk_buff** %44, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %21
  %48 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %49 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %48, i32 0, i32 1
  %50 = load %struct.sk_buff**, %struct.sk_buff*** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %50, i64 %52
  %54 = load %struct.sk_buff*, %struct.sk_buff** %53, align 8
  %55 = call i32 @dev_kfree_skb(%struct.sk_buff* %54)
  br label %56

56:                                               ; preds = %47, %21
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %59 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %58, i32 0, i32 1
  %60 = load %struct.sk_buff**, %struct.sk_buff*** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %60, i64 %62
  store %struct.sk_buff* %57, %struct.sk_buff** %63, align 8
  %64 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = call i32 @__mt76x02_mac_set_beacon(%struct.mt76x02_dev* %64, i32 %65, %struct.sk_buff* %66)
  br label %92

68:                                               ; preds = %17
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %68
  %72 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %73 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %72, i32 0, i32 1
  %74 = load %struct.sk_buff**, %struct.sk_buff*** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %74, i64 %76
  %78 = load %struct.sk_buff*, %struct.sk_buff** %77, align 8
  %79 = icmp ne %struct.sk_buff* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %71
  %81 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %84 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %83, i32 0, i32 1
  %85 = load %struct.sk_buff**, %struct.sk_buff*** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %85, i64 %87
  %89 = load %struct.sk_buff*, %struct.sk_buff** %88, align 8
  %90 = call i32 @__mt76x02_mac_set_beacon(%struct.mt76x02_dev* %81, i32 %82, %struct.sk_buff* %89)
  br label %91

91:                                               ; preds = %80, %71, %68
  br label %92

92:                                               ; preds = %91, %56
  %93 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %94 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %93, i32 0, i32 1
  %95 = load %struct.sk_buff**, %struct.sk_buff*** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %95, i64 %97
  %99 = load %struct.sk_buff*, %struct.sk_buff** %98, align 8
  %100 = icmp ne %struct.sk_buff* %99, null
  %101 = xor i1 %100, true
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %92
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %10

109:                                              ; preds = %10
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %131, %109
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %114 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %113, i32 0, i32 1
  %115 = load %struct.sk_buff**, %struct.sk_buff*** %114, align 8
  %116 = call i32 @ARRAY_SIZE(%struct.sk_buff** %115)
  %117 = icmp slt i32 %112, %116
  br i1 %117, label %118, label %134

118:                                              ; preds = %111
  %119 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %120 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @BIT(i32 %122)
  %124 = and i32 %121, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %118
  br label %134

127:                                              ; preds = %118
  %128 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @__mt76x02_mac_set_beacon(%struct.mt76x02_dev* %128, i32 %129, %struct.sk_buff* null)
  br label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %111

134:                                              ; preds = %126, %111
  %135 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %136 = load i32, i32* @MT_MAC_BSSID_DW1, align 4
  %137 = load i32, i32* @MT_MAC_BSSID_DW1_MBEACON_N, align 4
  %138 = load i32, i32* %8, align 4
  %139 = sub nsw i32 %138, 1
  %140 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %135, i32 %136, i32 %137, i32 %139)
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(%struct.sk_buff**) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @__mt76x02_mac_set_beacon(%struct.mt76x02_dev*, i32, %struct.sk_buff*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt76_rmw_field(%struct.mt76x02_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
