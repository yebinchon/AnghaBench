; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lg-vl600.c_vl600_tx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lg-vl600.c_vl600_tx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.sk_buff = type { i32, i64, i64 }
%struct.vl600_frame_hdr = type { i8*, i8*, i8* }
%struct.vl600_pkt_hdr = type { i8*, %struct.vl600_frame_hdr, i32 }

@vl600_tx_fixup.serial = internal global i32 1, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.usbnet*, %struct.sk_buff*, i32)* @vl600_tx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @vl600_tx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.vl600_frame_hdr*, align 8
  %10 = alloca %struct.vl600_pkt_hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = sub i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %11, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 24
  %26 = add i64 %25, 3
  %27 = and i64 %26, -4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %12, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.vl600_frame_hdr*
  store %struct.vl600_frame_hdr* %32, %struct.vl600_frame_hdr** %9, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = icmp ugt i64 %36, 24
  br i1 %37, label %38, label %48

38:                                               ; preds = %3
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.vl600_frame_hdr*, %struct.vl600_frame_hdr** %9, align 8
  %43 = getelementptr inbounds %struct.vl600_frame_hdr, %struct.vl600_frame_hdr* %42, i32 0, i32 2
  %44 = call i32 @le32_to_cpup(i8** %43)
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %47, %struct.sk_buff** %4, align 8
  br label %176

48:                                               ; preds = %38, %3
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %52, 4
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %176

55:                                               ; preds = %48
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = call i32 @skb_cloned(%struct.sk_buff* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %109, label %59

59:                                               ; preds = %55
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = call i32 @skb_headroom(%struct.sk_buff* %60)
  store i32 %61, i32* %13, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = call i32 @skb_tailroom(%struct.sk_buff* %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %66, %69
  %71 = sext i32 %70 to i64
  %72 = sub i64 %71, 24
  %73 = icmp uge i64 %65, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %59
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp uge i64 %76, 24
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %129

79:                                               ; preds = %74, %59
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %80, %81
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %82, %85
  %87 = load i32, i32* %12, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %79
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, 24
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @memmove(i64 %93, i64 %96, i32 %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %103, i32 %106)
  br label %129

108:                                              ; preds = %79
  br label %109

109:                                              ; preds = %108, %55
  %110 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %111, %114
  %116 = sext i32 %115 to i64
  %117 = sub i64 %116, 24
  %118 = trunc i64 %117 to i32
  %119 = load i32, i32* %7, align 4
  %120 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %110, i32 24, i32 %118, i32 %119)
  store %struct.sk_buff* %120, %struct.sk_buff** %8, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %122 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %121)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %124 = icmp ne %struct.sk_buff* %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %109
  %126 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %126, %struct.sk_buff** %4, align 8
  br label %176

127:                                              ; preds = %109
  %128 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %128, %struct.sk_buff** %6, align 8
  br label %129

129:                                              ; preds = %127, %89, %78
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to %struct.vl600_pkt_hdr*
  store %struct.vl600_pkt_hdr* %133, %struct.vl600_pkt_hdr** %10, align 8
  %134 = load i32, i32* @ETH_P_IP, align 4
  %135 = call i32 @htons(i32 %134)
  %136 = load %struct.vl600_pkt_hdr*, %struct.vl600_pkt_hdr** %10, align 8
  %137 = getelementptr inbounds %struct.vl600_pkt_hdr, %struct.vl600_pkt_hdr* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.vl600_pkt_hdr*, %struct.vl600_pkt_hdr** %10, align 8
  %139 = getelementptr inbounds %struct.vl600_pkt_hdr, %struct.vl600_pkt_hdr* %138, i32 0, i32 1
  %140 = call i32 @memset(%struct.vl600_frame_hdr* %139, i32 0, i32 24)
  %141 = load i32, i32* %11, align 4
  %142 = call i8* @cpu_to_le32(i32 %141)
  %143 = load %struct.vl600_pkt_hdr*, %struct.vl600_pkt_hdr** %10, align 8
  %144 = getelementptr inbounds %struct.vl600_pkt_hdr, %struct.vl600_pkt_hdr* %143, i32 0, i32 0
  store i8* %142, i8** %144, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %146 = call %struct.vl600_frame_hdr* @skb_push(%struct.sk_buff* %145, i32 24)
  store %struct.vl600_frame_hdr* %146, %struct.vl600_frame_hdr** %9, align 8
  %147 = load %struct.vl600_frame_hdr*, %struct.vl600_frame_hdr** %9, align 8
  %148 = call i32 @memset(%struct.vl600_frame_hdr* %147, i32 0, i32 24)
  %149 = load i32, i32* %12, align 4
  %150 = call i8* @cpu_to_le32(i32 %149)
  %151 = load %struct.vl600_frame_hdr*, %struct.vl600_frame_hdr** %9, align 8
  %152 = getelementptr inbounds %struct.vl600_frame_hdr, %struct.vl600_frame_hdr* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  %153 = load i32, i32* @vl600_tx_fixup.serial, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* @vl600_tx_fixup.serial, align 4
  %155 = call i8* @cpu_to_le32(i32 %153)
  %156 = load %struct.vl600_frame_hdr*, %struct.vl600_frame_hdr** %9, align 8
  %157 = getelementptr inbounds %struct.vl600_frame_hdr, %struct.vl600_frame_hdr* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  %158 = call i8* @cpu_to_le32(i32 1)
  %159 = load %struct.vl600_frame_hdr*, %struct.vl600_frame_hdr** %9, align 8
  %160 = getelementptr inbounds %struct.vl600_frame_hdr, %struct.vl600_frame_hdr* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %129
  %167 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %168 = load i32, i32* %12, align 4
  %169 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sub nsw i32 %168, %171
  %173 = call i32 @skb_put(%struct.sk_buff* %167, i32 %172)
  br label %174

174:                                              ; preds = %166, %129
  %175 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %175, %struct.sk_buff** %4, align 8
  br label %176

176:                                              ; preds = %174, %125, %54, %46
  %177 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %177
}

declare dso_local i32 @le32_to_cpup(i8**) #1

declare dso_local i32 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @memmove(i64, i64, i32) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memset(%struct.vl600_frame_hdr*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.vl600_frame_hdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
