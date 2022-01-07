; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_commonring.c_brcmf_commonring_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_commonring.c_brcmf_commonring_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_commonring = type { i32, i64, i32, i32 (i32)*, i64, i32 (i32)*, i64, i32, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_commonring_config(%struct.brcmf_commonring* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.brcmf_commonring*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.brcmf_commonring* %0, %struct.brcmf_commonring** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %5, align 8
  %11 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %10, i32 0, i32 10
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %5, align 8
  %14 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %13, i32 0, i32 9
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %5, align 8
  %17 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %16, i32 0, i32 8
  store i8* %15, i8** %17, align 8
  %18 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %5, align 8
  %19 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %5, align 8
  %24 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %23, i32 0, i32 7
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %5, align 8
  %27 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %22, %4
  %29 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %5, align 8
  %30 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %5, align 8
  %32 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %31, i32 0, i32 5
  %33 = load i32 (i32)*, i32 (i32)** %32, align 8
  %34 = icmp ne i32 (i32)* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %5, align 8
  %37 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %36, i32 0, i32 5
  %38 = load i32 (i32)*, i32 (i32)** %37, align 8
  %39 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %5, align 8
  %40 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %38(i32 %41)
  br label %43

43:                                               ; preds = %35, %28
  %44 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %5, align 8
  %45 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %5, align 8
  %47 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %46, i32 0, i32 3
  %48 = load i32 (i32)*, i32 (i32)** %47, align 8
  %49 = icmp ne i32 (i32)* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %5, align 8
  %52 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %51, i32 0, i32 3
  %53 = load i32 (i32)*, i32 (i32)** %52, align 8
  %54 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %5, align 8
  %55 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %53(i32 %56)
  br label %58

58:                                               ; preds = %50, %43
  %59 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %5, align 8
  %60 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
