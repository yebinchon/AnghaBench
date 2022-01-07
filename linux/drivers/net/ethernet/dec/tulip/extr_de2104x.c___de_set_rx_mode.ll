; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c___de_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c___de_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de_private = type { i32, %struct.de_desc*, i32, i32, %struct.TYPE_2__* }
%struct.de_desc = type { i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32 }

@MacMode = common dso_local global i32 0, align 4
@AcceptAllMulticast = common dso_local global i32 0, align 4
@AcceptAllPhys = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@DE_DUMMY_SKB = common dso_local global i32 0, align 4
@DE_TX_RING_SIZE = common dso_local global i32 0, align 4
@RingEnd = common dso_local global i32 0, align 4
@DE_SETUP_SKB = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@SetupFrame = common dso_local global i32 0, align 4
@DescOwn = common dso_local global i32 0, align 4
@TxPoll = common dso_local global i32 0, align 4
@NormalTxPoll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @__de_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__de_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.de_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.de_desc*, align 8
  %8 = alloca %struct.de_desc*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.de_private* @netdev_priv(%struct.net_device* %9)
  store %struct.de_private* %10, %struct.de_private** %3, align 8
  store %struct.de_desc* null, %struct.de_desc** %8, align 8
  %11 = load i32, i32* @MacMode, align 4
  %12 = call i32 @dr32(i32 %11)
  %13 = load i32, i32* @AcceptAllMulticast, align 4
  %14 = load i32, i32* @AcceptAllPhys, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %12, %16
  store i32 %17, i32* %4, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFF_PROMISC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load i32, i32* @AcceptAllMulticast, align 4
  %26 = load i32, i32* @AcceptAllPhys, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %186

30:                                               ; preds = %1
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call i32 @netdev_mc_count(%struct.net_device* %31)
  %33 = icmp sgt i32 %32, 1000
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFF_ALLMULTI, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34, %30
  %42 = load i32, i32* @AcceptAllMulticast, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %186

45:                                               ; preds = %34
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = call i32 @netdev_mc_count(%struct.net_device* %46)
  %48 = icmp sgt i32 %47, 14
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.de_private*, %struct.de_private** %3, align 8
  %51 = getelementptr inbounds %struct.de_private, %struct.de_private* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = call i32 @build_setup_frame_hash(i32 %52, %struct.net_device* %53)
  br label %61

55:                                               ; preds = %45
  %56 = load %struct.de_private*, %struct.de_private** %3, align 8
  %57 = getelementptr inbounds %struct.de_private, %struct.de_private* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = call i32 @build_setup_frame_perfect(i32 %58, %struct.net_device* %59)
  br label %61

61:                                               ; preds = %55, %49
  %62 = load %struct.de_private*, %struct.de_private** %3, align 8
  %63 = getelementptr inbounds %struct.de_private, %struct.de_private* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %99

67:                                               ; preds = %61
  %68 = load i32, i32* @DE_DUMMY_SKB, align 4
  %69 = load %struct.de_private*, %struct.de_private** %3, align 8
  %70 = getelementptr inbounds %struct.de_private, %struct.de_private* %69, i32 0, i32 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32 %68, i32* %75, align 4
  %76 = load %struct.de_private*, %struct.de_private** %3, align 8
  %77 = getelementptr inbounds %struct.de_private, %struct.de_private* %76, i32 0, i32 1
  %78 = load %struct.de_desc*, %struct.de_desc** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %78, i64 %80
  store %struct.de_desc* %81, %struct.de_desc** %8, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @DE_TX_RING_SIZE, align 4
  %84 = sub nsw i32 %83, 1
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %67
  %87 = load i32, i32* @RingEnd, align 4
  %88 = call i8* @cpu_to_le32(i32 %87)
  br label %90

89:                                               ; preds = %67
  br label %90

90:                                               ; preds = %89, %86
  %91 = phi i8* [ %88, %86 ], [ null, %89 ]
  %92 = load %struct.de_desc*, %struct.de_desc** %8, align 8
  %93 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load %struct.de_desc*, %struct.de_desc** %8, align 8
  %95 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %94, i32 0, i32 1
  store i8* null, i8** %95, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i8* @NEXT_TX(i32 %96)
  %98 = ptrtoint i8* %97 to i32
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %90, %61
  %100 = load i32, i32* @DE_SETUP_SKB, align 4
  %101 = load %struct.de_private*, %struct.de_private** %3, align 8
  %102 = getelementptr inbounds %struct.de_private, %struct.de_private* %101, i32 0, i32 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  store i32 %100, i32* %107, align 4
  %108 = load %struct.de_private*, %struct.de_private** %3, align 8
  %109 = getelementptr inbounds %struct.de_private, %struct.de_private* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.de_private*, %struct.de_private** %3, align 8
  %112 = getelementptr inbounds %struct.de_private, %struct.de_private* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %115 = call i32 @pci_map_single(i32 %110, i32 %113, i32 4, i32 %114)
  store i32 %115, i32* %6, align 4
  %116 = load %struct.de_private*, %struct.de_private** %3, align 8
  %117 = getelementptr inbounds %struct.de_private, %struct.de_private* %116, i32 0, i32 4
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  store i32 %115, i32* %122, align 4
  %123 = load %struct.de_private*, %struct.de_private** %3, align 8
  %124 = getelementptr inbounds %struct.de_private, %struct.de_private* %123, i32 0, i32 1
  %125 = load %struct.de_desc*, %struct.de_desc** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %125, i64 %127
  store %struct.de_desc* %128, %struct.de_desc** %7, align 8
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @DE_TX_RING_SIZE, align 4
  %131 = sub nsw i32 %130, 1
  %132 = icmp eq i32 %129, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %99
  %134 = load i32, i32* @SetupFrame, align 4
  %135 = load i32, i32* @RingEnd, align 4
  %136 = or i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = or i64 %137, 4
  %139 = trunc i64 %138 to i32
  %140 = call i8* @cpu_to_le32(i32 %139)
  %141 = load %struct.de_desc*, %struct.de_desc** %7, align 8
  %142 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %141, i32 0, i32 2
  store i8* %140, i8** %142, align 8
  br label %151

143:                                              ; preds = %99
  %144 = load i32, i32* @SetupFrame, align 4
  %145 = sext i32 %144 to i64
  %146 = or i64 %145, 4
  %147 = trunc i64 %146 to i32
  %148 = call i8* @cpu_to_le32(i32 %147)
  %149 = load %struct.de_desc*, %struct.de_desc** %7, align 8
  %150 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %149, i32 0, i32 2
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %143, %133
  %152 = load i32, i32* %6, align 4
  %153 = call i8* @cpu_to_le32(i32 %152)
  %154 = load %struct.de_desc*, %struct.de_desc** %7, align 8
  %155 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = call i32 (...) @wmb()
  %157 = load i32, i32* @DescOwn, align 4
  %158 = call i8* @cpu_to_le32(i32 %157)
  %159 = load %struct.de_desc*, %struct.de_desc** %7, align 8
  %160 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  %161 = call i32 (...) @wmb()
  %162 = load %struct.de_desc*, %struct.de_desc** %8, align 8
  %163 = icmp ne %struct.de_desc* %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %151
  %165 = load i32, i32* @DescOwn, align 4
  %166 = call i8* @cpu_to_le32(i32 %165)
  %167 = load %struct.de_desc*, %struct.de_desc** %8, align 8
  %168 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %167, i32 0, i32 0
  store i8* %166, i8** %168, align 8
  %169 = call i32 (...) @wmb()
  br label %170

170:                                              ; preds = %164, %151
  %171 = load i32, i32* %5, align 4
  %172 = call i8* @NEXT_TX(i32 %171)
  %173 = ptrtoint i8* %172 to i32
  %174 = load %struct.de_private*, %struct.de_private** %3, align 8
  %175 = getelementptr inbounds %struct.de_private, %struct.de_private* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load %struct.de_private*, %struct.de_private** %3, align 8
  %177 = call i64 @TX_BUFFS_AVAIL(%struct.de_private* %176)
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %170
  %180 = load %struct.net_device*, %struct.net_device** %2, align 8
  %181 = call i32 @netif_stop_queue(%struct.net_device* %180)
  br label %182

182:                                              ; preds = %179, %170
  %183 = load i32, i32* @TxPoll, align 4
  %184 = load i32, i32* @NormalTxPoll, align 4
  %185 = call i32 @dw32(i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %182, %41, %24
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @MacMode, align 4
  %189 = call i32 @dr32(i32 %188)
  %190 = icmp ne i32 %187, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %186
  %192 = load i32, i32* @MacMode, align 4
  %193 = load i32, i32* %4, align 4
  %194 = call i32 @dw32(i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %191, %186
  ret void
}

declare dso_local %struct.de_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dr32(i32) #1

declare dso_local i32 @netdev_mc_count(%struct.net_device*) #1

declare dso_local i32 @build_setup_frame_hash(i32, %struct.net_device*) #1

declare dso_local i32 @build_setup_frame_perfect(i32, %struct.net_device*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @NEXT_TX(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @TX_BUFFS_AVAIL(%struct.de_private*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @dw32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
