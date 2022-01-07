; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_flowring = type { i64*, %struct.brcmf_flowring_hash*, i64 }
%struct.brcmf_flowring_hash = type { i64, i64, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@brcmf_flowring_prio2fifo = common dso_local global i64* null, align 8
@ADDR_INDIRECT = common dso_local global i64 0, align 8
@ALLFFMAC = common dso_local global i64 0, align 8
@BRCMF_FLOWRING_HASHSIZE = common dso_local global i32 0, align 4
@BRCMF_FLOWRING_INVALID_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_flowring_lookup(%struct.brcmf_flowring* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_flowring*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.brcmf_flowring_hash*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  store %struct.brcmf_flowring* %0, %struct.brcmf_flowring** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = zext i32 %17 to i64
  %19 = load i64*, i64** @brcmf_flowring_prio2fifo, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %15, align 8
  %23 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %6, align 8
  %24 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ADDR_INDIRECT, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %14, align 4
  %32 = load i64*, i64** %7, align 8
  store i64* %32, i64** %16, align 8
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %4
  %36 = load i64*, i64** %7, align 8
  %37 = call i64 @is_multicast_ether_addr(i64* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i64, i64* @ALLFFMAC, align 8
  %41 = inttoptr i64 %40 to i64*
  store i64* %41, i64** %16, align 8
  store i64 0, i64* %15, align 8
  br label %42

42:                                               ; preds = %39, %35, %4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %6, align 8
  %47 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %6, align 8
  %52 = load i64*, i64** %7, align 8
  %53 = call i64 @brcmf_flowring_is_tdls_mac(%struct.brcmf_flowring* %51, i64* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %14, align 4
  br label %56

56:                                               ; preds = %55, %50, %45, %42
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i64, i64* %15, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @BRCMF_FLOWRING_HASH_STA(i64 %60, i64 %61)
  br label %68

63:                                               ; preds = %56
  %64 = load i64*, i64** %16, align 8
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @BRCMF_FLOWRING_HASH_AP(i64* %64, i64 %65, i64 %66)
  br label %68

68:                                               ; preds = %63, %59
  %69 = phi i32 [ %62, %59 ], [ %67, %63 ]
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* @BRCMF_FLOWRING_HASHSIZE, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load i32, i32* %11, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %74 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %6, align 8
  %75 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %74, i32 0, i32 1
  %76 = load %struct.brcmf_flowring_hash*, %struct.brcmf_flowring_hash** %75, align 8
  store %struct.brcmf_flowring_hash* %76, %struct.brcmf_flowring_hash** %10, align 8
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %121, %68
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @BRCMF_FLOWRING_HASHSIZE, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %124

81:                                               ; preds = %77
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %81
  %85 = load %struct.brcmf_flowring_hash*, %struct.brcmf_flowring_hash** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %85, i64 %87
  %89 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i64*, i64** %16, align 8
  %92 = load i32, i32* @ETH_ALEN, align 4
  %93 = call i64 @memcmp(i32 %90, i64* %91, i32 %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %84, %81
  %96 = load %struct.brcmf_flowring_hash*, %struct.brcmf_flowring_hash** %10, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %96, i64 %98
  %100 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %15, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %95
  %105 = load %struct.brcmf_flowring_hash*, %struct.brcmf_flowring_hash** %10, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %105, i64 %107
  %109 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  store i32 1, i32* %13, align 4
  br label %124

114:                                              ; preds = %104, %95, %84
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* @BRCMF_FLOWRING_HASHSIZE, align 4
  %118 = sub nsw i32 %117, 1
  %119 = load i32, i32* %11, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %77

124:                                              ; preds = %113, %77
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load %struct.brcmf_flowring_hash*, %struct.brcmf_flowring_hash** %10, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %128, i64 %130
  %132 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %5, align 4
  br label %136

134:                                              ; preds = %124
  %135 = load i32, i32* @BRCMF_FLOWRING_INVALID_ID, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %134, %127
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i64 @is_multicast_ether_addr(i64*) #1

declare dso_local i64 @brcmf_flowring_is_tdls_mac(%struct.brcmf_flowring*, i64*) #1

declare dso_local i32 @BRCMF_FLOWRING_HASH_STA(i64, i64) #1

declare dso_local i32 @BRCMF_FLOWRING_HASH_AP(i64*, i64, i64) #1

declare dso_local i64 @memcmp(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
