; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_flowring = type { i32, i32, i32, %struct.brcmf_flowring_ring** }
%struct.brcmf_flowring_ring = type { i32, i64 }
%struct.brcmf_bus = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_if = type { i32 }

@RING_OPEN = common dso_local global i64 0, align 8
@BRCMF_NETIF_STOP_REASON_FLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_flowring*, i64, i32)* @brcmf_flowring_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_flowring_block(%struct.brcmf_flowring* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.brcmf_flowring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcmf_flowring_ring*, align 8
  %8 = alloca %struct.brcmf_bus*, align 8
  %9 = alloca %struct.brcmf_pub*, align 8
  %10 = alloca %struct.brcmf_if*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.brcmf_flowring* %0, %struct.brcmf_flowring** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %16 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %15, i32 0, i32 1
  %17 = load i64, i64* %14, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %20 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %19, i32 0, i32 3
  %21 = load %struct.brcmf_flowring_ring**, %struct.brcmf_flowring_ring*** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %21, i64 %22
  %24 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %23, align 8
  store %struct.brcmf_flowring_ring* %24, %struct.brcmf_flowring_ring** %7, align 8
  %25 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %7, align 8
  %26 = getelementptr inbounds %struct.brcmf_flowring_ring, %struct.brcmf_flowring_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %32 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %31, i32 0, i32 1
  %33 = load i64, i64* %14, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  br label %126

35:                                               ; preds = %3
  %36 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i64 @brcmf_flowring_ifidx_get(%struct.brcmf_flowring* %36, i32 %38)
  store i64 %39, i64* %13, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %88, %35
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %43 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %91

46:                                               ; preds = %40
  %47 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %48 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %47, i32 0, i32 3
  %49 = load %struct.brcmf_flowring_ring**, %struct.brcmf_flowring_ring*** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %49, i64 %51
  %53 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %52, align 8
  %54 = icmp ne %struct.brcmf_flowring_ring* %53, null
  br i1 %54, label %55, label %87

55:                                               ; preds = %46
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %5, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %55
  %61 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %62 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %61, i32 0, i32 3
  %63 = load %struct.brcmf_flowring_ring**, %struct.brcmf_flowring_ring*** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %63, i64 %65
  %67 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %66, align 8
  store %struct.brcmf_flowring_ring* %67, %struct.brcmf_flowring_ring** %7, align 8
  %68 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %7, align 8
  %69 = getelementptr inbounds %struct.brcmf_flowring_ring, %struct.brcmf_flowring_ring* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @RING_OPEN, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %60
  %74 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i64 @brcmf_flowring_ifidx_get(%struct.brcmf_flowring* %74, i32 %75)
  %77 = load i64, i64* %13, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %7, align 8
  %81 = getelementptr inbounds %struct.brcmf_flowring_ring, %struct.brcmf_flowring_ring* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 1, i32* %11, align 4
  br label %91

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %73, %60
  br label %87

87:                                               ; preds = %86, %55, %46
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %40

91:                                               ; preds = %84, %40
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %94 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %93, i32 0, i32 3
  %95 = load %struct.brcmf_flowring_ring**, %struct.brcmf_flowring_ring*** %94, align 8
  %96 = load i64, i64* %5, align 8
  %97 = getelementptr inbounds %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %95, i64 %96
  %98 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %97, align 8
  %99 = getelementptr inbounds %struct.brcmf_flowring_ring, %struct.brcmf_flowring_ring* %98, i32 0, i32 0
  store i32 %92, i32* %99, align 8
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %91
  %103 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %104 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %103, i32 0, i32 1
  %105 = load i64, i64* %14, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  br label %126

107:                                              ; preds = %91
  %108 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %109 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call %struct.brcmf_bus* @dev_get_drvdata(i32 %110)
  store %struct.brcmf_bus* %111, %struct.brcmf_bus** %8, align 8
  %112 = load %struct.brcmf_bus*, %struct.brcmf_bus** %8, align 8
  %113 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %112, i32 0, i32 0
  %114 = load %struct.brcmf_pub*, %struct.brcmf_pub** %113, align 8
  store %struct.brcmf_pub* %114, %struct.brcmf_pub** %9, align 8
  %115 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  %116 = load i64, i64* %13, align 8
  %117 = call %struct.brcmf_if* @brcmf_get_ifp(%struct.brcmf_pub* %115, i64 %116)
  store %struct.brcmf_if* %117, %struct.brcmf_if** %10, align 8
  %118 = load %struct.brcmf_if*, %struct.brcmf_if** %10, align 8
  %119 = load i32, i32* @BRCMF_NETIF_STOP_REASON_FLOW, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @brcmf_txflowblock_if(%struct.brcmf_if* %118, i32 %119, i32 %120)
  %122 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %123 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %122, i32 0, i32 1
  %124 = load i64, i64* %14, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* %123, i64 %124)
  br label %126

126:                                              ; preds = %107, %102, %30
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @brcmf_flowring_ifidx_get(%struct.brcmf_flowring*, i32) #1

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(i32) #1

declare dso_local %struct.brcmf_if* @brcmf_get_ifp(%struct.brcmf_pub*, i64) #1

declare dso_local i32 @brcmf_txflowblock_if(%struct.brcmf_if*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
