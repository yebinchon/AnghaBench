; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_delete_peer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_delete_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_flowring = type { i64*, i32, %struct.brcmf_flowring_tdls_entry*, %struct.TYPE_2__**, %struct.brcmf_flowring_hash*, i32 }
%struct.brcmf_flowring_tdls_entry = type { %struct.brcmf_flowring_tdls_entry*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.brcmf_flowring_hash = type { i32, i64, i32 }
%struct.brcmf_bus = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@ADDR_INDIRECT = common dso_local global i64 0, align 8
@BRCMF_FLOWRING_HASHSIZE = common dso_local global i64 0, align 8
@RING_OPEN = common dso_local global i64 0, align 8
@RING_CLOSING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_flowring_delete_peer(%struct.brcmf_flowring* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.brcmf_flowring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.brcmf_bus*, align 8
  %8 = alloca %struct.brcmf_pub*, align 8
  %9 = alloca %struct.brcmf_flowring_hash*, align 8
  %10 = alloca %struct.brcmf_flowring_tdls_entry*, align 8
  %11 = alloca %struct.brcmf_flowring_tdls_entry*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.brcmf_flowring* %0, %struct.brcmf_flowring** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = zext i32 %15 to i64
  %17 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %18 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.brcmf_bus* @dev_get_drvdata(i32 %19)
  store %struct.brcmf_bus* %20, %struct.brcmf_bus** %7, align 8
  %21 = load %struct.brcmf_bus*, %struct.brcmf_bus** %7, align 8
  %22 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %21, i32 0, i32 0
  %23 = load %struct.brcmf_pub*, %struct.brcmf_pub** %22, align 8
  store %struct.brcmf_pub* %23, %struct.brcmf_pub** %8, align 8
  %24 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %25 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ADDR_INDIRECT, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %14, align 4
  %34 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %35 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %34, i32 0, i32 2
  %36 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %35, align 8
  store %struct.brcmf_flowring_tdls_entry* %36, %struct.brcmf_flowring_tdls_entry** %11, align 8
  store %struct.brcmf_flowring_tdls_entry* null, %struct.brcmf_flowring_tdls_entry** %10, align 8
  br label %37

37:                                               ; preds = %49, %3
  %38 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %11, align 8
  %39 = icmp ne %struct.brcmf_flowring_tdls_entry* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %11, align 8
  %42 = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, %struct.brcmf_flowring_tdls_entry* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @ETH_ALEN, align 4
  %46 = call i64 @memcmp(i32 %43, i32* %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %14, align 4
  br label %54

49:                                               ; preds = %40
  %50 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %11, align 8
  store %struct.brcmf_flowring_tdls_entry* %50, %struct.brcmf_flowring_tdls_entry** %10, align 8
  %51 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %11, align 8
  %52 = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, %struct.brcmf_flowring_tdls_entry* %51, i32 0, i32 0
  %53 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %52, align 8
  store %struct.brcmf_flowring_tdls_entry* %53, %struct.brcmf_flowring_tdls_entry** %11, align 8
  br label %37

54:                                               ; preds = %48, %37
  %55 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %56 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %55, i32 0, i32 4
  %57 = load %struct.brcmf_flowring_hash*, %struct.brcmf_flowring_hash** %56, align 8
  store %struct.brcmf_flowring_hash* %57, %struct.brcmf_flowring_hash** %9, align 8
  store i64 0, i64* %12, align 8
  br label %58

58:                                               ; preds = %115, %54
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* @BRCMF_FLOWRING_HASHSIZE, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %118

62:                                               ; preds = %58
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %62
  %66 = load %struct.brcmf_flowring_hash*, %struct.brcmf_flowring_hash** %9, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %66, i64 %67
  %69 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* @ETH_ALEN, align 4
  %73 = call i64 @memcmp(i32 %70, i32* %71, i32 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %114

75:                                               ; preds = %65, %62
  %76 = load %struct.brcmf_flowring_hash*, %struct.brcmf_flowring_hash** %9, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %76, i64 %77
  %79 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %75
  %84 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %85 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %84, i32 0, i32 4
  %86 = load %struct.brcmf_flowring_hash*, %struct.brcmf_flowring_hash** %85, align 8
  %87 = load i64, i64* %12, align 8
  %88 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %86, i64 %87
  %89 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %13, align 8
  %91 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %92 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %91, i32 0, i32 3
  %93 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %92, align 8
  %94 = load i64, i64* %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %93, i64 %94
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @RING_OPEN, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %83
  %102 = load i64, i64* @RING_CLOSING, align 8
  %103 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %104 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %103, i32 0, i32 3
  %105 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %104, align 8
  %106 = load i64, i64* %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %105, i64 %106
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i64 %102, i64* %109, align 8
  %110 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %111 = load i64, i64* %13, align 8
  %112 = call i32 @brcmf_msgbuf_delete_flowring(%struct.brcmf_pub* %110, i64 %111)
  br label %113

113:                                              ; preds = %101, %83
  br label %114

114:                                              ; preds = %113, %75, %65
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %12, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %12, align 8
  br label %58

118:                                              ; preds = %58
  %119 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %11, align 8
  %120 = icmp ne %struct.brcmf_flowring_tdls_entry* %119, null
  br i1 %120, label %121, label %147

121:                                              ; preds = %118
  %122 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %10, align 8
  %123 = icmp ne %struct.brcmf_flowring_tdls_entry* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %11, align 8
  %126 = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, %struct.brcmf_flowring_tdls_entry* %125, i32 0, i32 0
  %127 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %126, align 8
  %128 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %10, align 8
  %129 = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, %struct.brcmf_flowring_tdls_entry* %128, i32 0, i32 0
  store %struct.brcmf_flowring_tdls_entry* %127, %struct.brcmf_flowring_tdls_entry** %129, align 8
  br label %136

130:                                              ; preds = %121
  %131 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %11, align 8
  %132 = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, %struct.brcmf_flowring_tdls_entry* %131, i32 0, i32 0
  %133 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %132, align 8
  %134 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %135 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %134, i32 0, i32 2
  store %struct.brcmf_flowring_tdls_entry* %133, %struct.brcmf_flowring_tdls_entry** %135, align 8
  br label %136

136:                                              ; preds = %130, %124
  %137 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %11, align 8
  %138 = call i32 @kfree(%struct.brcmf_flowring_tdls_entry* %137)
  %139 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %140 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %139, i32 0, i32 2
  %141 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %140, align 8
  %142 = icmp eq %struct.brcmf_flowring_tdls_entry* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %145 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %144, i32 0, i32 1
  store i32 0, i32* %145, align 8
  br label %146

146:                                              ; preds = %143, %136
  br label %147

147:                                              ; preds = %146, %118
  ret void
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(i32) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @brcmf_msgbuf_delete_flowring(%struct.brcmf_pub*, i64) #1

declare dso_local i32 @kfree(%struct.brcmf_flowring_tdls_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
