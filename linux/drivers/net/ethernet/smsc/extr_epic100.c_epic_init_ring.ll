; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_epic100.c_epic_init_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_epic100.c_epic_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.epic_private = type { i32, i32, i32, i64, %struct.TYPE_4__*, i32**, %struct.TYPE_3__*, i32, %struct.sk_buff**, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64, i32, i64 }
%struct.sk_buff = type { i32 }

@PKT_BUF_SZ = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@DescOwn = common dso_local global i64 0, align 8
@TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @epic_init_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @epic_init_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.epic_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.epic_private* @netdev_priv(%struct.net_device* %6)
  store %struct.epic_private* %7, %struct.epic_private** %3, align 8
  %8 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %9 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %8, i32 0, i32 12
  store i64 0, i64* %9, align 8
  %10 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %11 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %10, i32 0, i32 10
  store i64 0, i64* %11, align 8
  %12 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %13 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %12, i32 0, i32 11
  store i64 0, i64* %13, align 8
  %14 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %15 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %17 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 1500
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @PKT_BUF_SZ, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 32
  br label %29

29:                                               ; preds = %24, %22
  %30 = phi i32 [ %23, %22 ], [ %28, %24 ]
  %31 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %32 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %76, %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @RX_RING_SIZE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %79

37:                                               ; preds = %33
  %38 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %39 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %38, i32 0, i32 6
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %46 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %49 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %48, i32 0, i32 6
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %47, i32* %54, align 8
  %55 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %56 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %55, i32 0, i32 9
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = add i64 %57, %61
  %63 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %64 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %63, i32 0, i32 6
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  store i64 %62, i64* %69, align 8
  %70 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %71 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %70, i32 0, i32 8
  %72 = load %struct.sk_buff**, %struct.sk_buff*** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %72, i64 %74
  store %struct.sk_buff* null, %struct.sk_buff** %75, align 8
  br label %76

76:                                               ; preds = %37
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %33

79:                                               ; preds = %33
  %80 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %81 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %80, i32 0, i32 9
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %84 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %83, i32 0, i32 6
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  store i64 %82, i64* %90, align 8
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %141, %79
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @RX_RING_SIZE, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %144

95:                                               ; preds = %91
  %96 = load %struct.net_device*, %struct.net_device** %2, align 8
  %97 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %98 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 2
  %101 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %96, i32 %100)
  store %struct.sk_buff* %101, %struct.sk_buff** %5, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %104 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %103, i32 0, i32 8
  %105 = load %struct.sk_buff**, %struct.sk_buff*** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %105, i64 %107
  store %struct.sk_buff* %102, %struct.sk_buff** %108, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = icmp eq %struct.sk_buff* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %95
  br label %144

112:                                              ; preds = %95
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = call i32 @skb_reserve(%struct.sk_buff* %113, i32 2)
  %115 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %116 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %122 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %125 = call i32 @pci_map_single(i32 %117, i32 %120, i32 %123, i32 %124)
  %126 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %127 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %126, i32 0, i32 6
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  store i32 %125, i32* %132, align 8
  %133 = load i64, i64* @DescOwn, align 8
  %134 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %135 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %134, i32 0, i32 6
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  store i64 %133, i64* %140, align 8
  br label %141

141:                                              ; preds = %112
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %4, align 4
  br label %91

144:                                              ; preds = %111, %91
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @RX_RING_SIZE, align 4
  %147 = sub nsw i32 %145, %146
  %148 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %149 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %183, %144
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @TX_RING_SIZE, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %186

154:                                              ; preds = %150
  %155 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %156 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %155, i32 0, i32 5
  %157 = load i32**, i32*** %156, align 8
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  store i32* null, i32** %160, align 8
  %161 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %162 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %161, i32 0, i32 4
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = load i32, i32* %4, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  store i32 0, i32* %167, align 8
  %168 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %169 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* %4, align 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = mul i64 %173, 4
  %175 = add i64 %170, %174
  %176 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %177 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %176, i32 0, i32 4
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  store i64 %175, i64* %182, align 8
  br label %183

183:                                              ; preds = %154
  %184 = load i32, i32* %4, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %4, align 4
  br label %150

186:                                              ; preds = %150
  %187 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %188 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.epic_private*, %struct.epic_private** %3, align 8
  %191 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %190, i32 0, i32 4
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = load i32, i32* %4, align 4
  %194 = sub nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  store i64 %189, i64* %197, align 8
  ret void
}

declare dso_local %struct.epic_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
