; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_add_tdls_peer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_add_tdls_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_flowring = type { i32, %struct.brcmf_flowring_tdls_entry* }
%struct.brcmf_flowring_tdls_entry = type { %struct.brcmf_flowring_tdls_entry*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_flowring_add_tdls_peer(%struct.brcmf_flowring* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.brcmf_flowring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.brcmf_flowring_tdls_entry*, align 8
  %8 = alloca %struct.brcmf_flowring_tdls_entry*, align 8
  store %struct.brcmf_flowring* %0, %struct.brcmf_flowring** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @ETH_ALEN, align 4
  %10 = zext i32 %9 to i64
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.brcmf_flowring_tdls_entry* @kzalloc(i32 16, i32 %11)
  store %struct.brcmf_flowring_tdls_entry* %12, %struct.brcmf_flowring_tdls_entry** %7, align 8
  %13 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %7, align 8
  %14 = icmp eq %struct.brcmf_flowring_tdls_entry* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %74

16:                                               ; preds = %3
  %17 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %7, align 8
  %18 = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, %struct.brcmf_flowring_tdls_entry* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @ETH_ALEN, align 4
  %22 = call i32 @memcpy(i32 %19, i32* %20, i32 %21)
  %23 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %7, align 8
  %24 = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, %struct.brcmf_flowring_tdls_entry* %23, i32 0, i32 0
  store %struct.brcmf_flowring_tdls_entry* null, %struct.brcmf_flowring_tdls_entry** %24, align 8
  %25 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %26 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %25, i32 0, i32 1
  %27 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %26, align 8
  %28 = icmp eq %struct.brcmf_flowring_tdls_entry* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %16
  %30 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %7, align 8
  %31 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %32 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %31, i32 0, i32 1
  store %struct.brcmf_flowring_tdls_entry* %30, %struct.brcmf_flowring_tdls_entry** %32, align 8
  br label %68

33:                                               ; preds = %16
  %34 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %35 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %34, i32 0, i32 1
  %36 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %35, align 8
  store %struct.brcmf_flowring_tdls_entry* %36, %struct.brcmf_flowring_tdls_entry** %8, align 8
  %37 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %8, align 8
  %38 = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, %struct.brcmf_flowring_tdls_entry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i64 @memcmp(i32 %39, i32* %40, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %71

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %63, %45
  %47 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %8, align 8
  %48 = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, %struct.brcmf_flowring_tdls_entry* %47, i32 0, i32 0
  %49 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %48, align 8
  %50 = icmp ne %struct.brcmf_flowring_tdls_entry* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %8, align 8
  %53 = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, %struct.brcmf_flowring_tdls_entry* %52, i32 0, i32 0
  %54 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %53, align 8
  store %struct.brcmf_flowring_tdls_entry* %54, %struct.brcmf_flowring_tdls_entry** %8, align 8
  %55 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %8, align 8
  %56 = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, %struct.brcmf_flowring_tdls_entry* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* @ETH_ALEN, align 4
  %60 = call i64 @memcmp(i32 %57, i32* %58, i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %71

63:                                               ; preds = %51
  br label %46

64:                                               ; preds = %46
  %65 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %7, align 8
  %66 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %8, align 8
  %67 = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, %struct.brcmf_flowring_tdls_entry* %66, i32 0, i32 0
  store %struct.brcmf_flowring_tdls_entry* %65, %struct.brcmf_flowring_tdls_entry** %67, align 8
  br label %68

68:                                               ; preds = %64, %29
  %69 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %70 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %74

71:                                               ; preds = %62, %44
  %72 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %7, align 8
  %73 = call i32 @kfree(%struct.brcmf_flowring_tdls_entry* %72)
  br label %74

74:                                               ; preds = %71, %68, %15
  ret void
}

declare dso_local %struct.brcmf_flowring_tdls_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.brcmf_flowring_tdls_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
