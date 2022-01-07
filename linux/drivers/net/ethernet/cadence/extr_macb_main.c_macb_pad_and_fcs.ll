; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_pad_and_fcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_pad_and_fcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32, i32 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i64 }

@ETH_ZLEN = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff**, %struct.net_device*)* @macb_pad_and_fcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macb_pad_and_fcs(%struct.sk_buff** %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff**, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff** %0, %struct.sk_buff*** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %14 = call i64 @skb_cloned(%struct.sk_buff* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %19 = call i64 @skb_header_cloned(%struct.sk_buff* %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %2
  %22 = phi i1 [ true, %2 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @ETH_ZLEN, align 4
  %25 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %24, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  %32 = call i32 @skb_headroom(%struct.sk_buff* %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %33, align 8
  %35 = call i32 @skb_tailroom(%struct.sk_buff* %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %21
  %43 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %43, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %50, align 8
  %52 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %42, %21
  store i32 0, i32* %3, align 4
  br label %180

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @ETH_FCS_LEN, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %145

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* @ETH_FCS_LEN, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %7, align 4
  br label %77

75:                                               ; preds = %68, %65
  %76 = load i32, i32* @ETH_FCS_LEN, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %74
  br label %78

78:                                               ; preds = %77
  br label %83

79:                                               ; preds = %57
  %80 = load i32, i32* @ETH_FCS_LEN, align 4
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %79, %78
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %116, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* %7, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %86
  %93 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %93, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %97, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %101, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @memmove(i32 %96, i32 %100, i32 %104)
  %106 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %106, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 2
  store i32 %105, i32* %108, align 8
  %109 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %109, align 8
  %111 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %111, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %110, i32 %114)
  br label %133

116:                                              ; preds = %86, %83
  %117 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @GFP_ATOMIC, align 4
  %121 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %118, i32 0, i32 %119, i32 %120)
  store %struct.sk_buff* %121, %struct.sk_buff** %10, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %123 = icmp ne %struct.sk_buff* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %116
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %180

127:                                              ; preds = %116
  %128 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %128, align 8
  %130 = call i32 @dev_consume_skb_any(%struct.sk_buff* %129)
  %131 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %132 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  store %struct.sk_buff* %131, %struct.sk_buff** %132, align 8
  br label %133

133:                                              ; preds = %127, %92
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @ETH_FCS_LEN, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @ETH_FCS_LEN, align 4
  %142 = sub nsw i32 %140, %141
  %143 = call i32 @skb_put_zero(%struct.sk_buff* %139, i32 %142)
  br label %144

144:                                              ; preds = %137, %133
  br label %145

145:                                              ; preds = %144, %64
  %146 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %146, align 8
  %148 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %150, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @crc32_le(i32 -1, i32 %149, i32 %153)
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = xor i32 %155, -1
  store i32 %156, i32* %11, align 4
  %157 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = and i32 %159, 255
  %161 = call i32 @skb_put_u8(%struct.sk_buff* %158, i32 %160)
  %162 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = ashr i32 %164, 8
  %166 = and i32 %165, 255
  %167 = call i32 @skb_put_u8(%struct.sk_buff* %163, i32 %166)
  %168 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = ashr i32 %170, 16
  %172 = and i32 %171, 255
  %173 = call i32 @skb_put_u8(%struct.sk_buff* %169, i32 %172)
  %174 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %174, align 8
  %176 = load i32, i32* %11, align 4
  %177 = ashr i32 %176, 24
  %178 = and i32 %177, 255
  %179 = call i32 @skb_put_u8(%struct.sk_buff* %175, i32 %178)
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %145, %124, %56
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i64 @skb_header_cloned(%struct.sk_buff*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @crc32_le(i32, i32, i32) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
