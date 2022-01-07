; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_convert_key_from_CPU.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_convert_key_from_CPU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_wsec_key = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.brcmf_wsec_key_le = type { i32, i32, i8*, %struct.TYPE_3__, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_wsec_key*, %struct.brcmf_wsec_key_le*)* @convert_key_from_CPU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_key_from_CPU(%struct.brcmf_wsec_key* %0, %struct.brcmf_wsec_key_le* %1) #0 {
  %3 = alloca %struct.brcmf_wsec_key*, align 8
  %4 = alloca %struct.brcmf_wsec_key_le*, align 8
  store %struct.brcmf_wsec_key* %0, %struct.brcmf_wsec_key** %3, align 8
  store %struct.brcmf_wsec_key_le* %1, %struct.brcmf_wsec_key_le** %4, align 8
  %5 = load %struct.brcmf_wsec_key*, %struct.brcmf_wsec_key** %3, align 8
  %6 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @cpu_to_le32(i32 %7)
  %9 = load %struct.brcmf_wsec_key_le*, %struct.brcmf_wsec_key_le** %4, align 8
  %10 = getelementptr inbounds %struct.brcmf_wsec_key_le, %struct.brcmf_wsec_key_le* %9, i32 0, i32 7
  store i8* %8, i8** %10, align 8
  %11 = load %struct.brcmf_wsec_key*, %struct.brcmf_wsec_key** %3, align 8
  %12 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @cpu_to_le32(i32 %13)
  %15 = load %struct.brcmf_wsec_key_le*, %struct.brcmf_wsec_key_le** %4, align 8
  %16 = getelementptr inbounds %struct.brcmf_wsec_key_le, %struct.brcmf_wsec_key_le* %15, i32 0, i32 6
  store i8* %14, i8** %16, align 8
  %17 = load %struct.brcmf_wsec_key*, %struct.brcmf_wsec_key** %3, align 8
  %18 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @cpu_to_le32(i32 %19)
  %21 = load %struct.brcmf_wsec_key_le*, %struct.brcmf_wsec_key_le** %4, align 8
  %22 = getelementptr inbounds %struct.brcmf_wsec_key_le, %struct.brcmf_wsec_key_le* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load %struct.brcmf_wsec_key*, %struct.brcmf_wsec_key** %3, align 8
  %24 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = load %struct.brcmf_wsec_key_le*, %struct.brcmf_wsec_key_le** %4, align 8
  %28 = getelementptr inbounds %struct.brcmf_wsec_key_le, %struct.brcmf_wsec_key_le* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load %struct.brcmf_wsec_key*, %struct.brcmf_wsec_key** %3, align 8
  %30 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @cpu_to_le32(i32 %32)
  %34 = load %struct.brcmf_wsec_key_le*, %struct.brcmf_wsec_key_le** %4, align 8
  %35 = getelementptr inbounds %struct.brcmf_wsec_key_le, %struct.brcmf_wsec_key_le* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load %struct.brcmf_wsec_key*, %struct.brcmf_wsec_key** %3, align 8
  %38 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cpu_to_le16(i32 %40)
  %42 = load %struct.brcmf_wsec_key_le*, %struct.brcmf_wsec_key_le** %4, align 8
  %43 = getelementptr inbounds %struct.brcmf_wsec_key_le, %struct.brcmf_wsec_key_le* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.brcmf_wsec_key*, %struct.brcmf_wsec_key** %3, align 8
  %46 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = load %struct.brcmf_wsec_key_le*, %struct.brcmf_wsec_key_le** %4, align 8
  %50 = getelementptr inbounds %struct.brcmf_wsec_key_le, %struct.brcmf_wsec_key_le* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.brcmf_wsec_key_le*, %struct.brcmf_wsec_key_le** %4, align 8
  %52 = getelementptr inbounds %struct.brcmf_wsec_key_le, %struct.brcmf_wsec_key_le* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.brcmf_wsec_key*, %struct.brcmf_wsec_key** %3, align 8
  %55 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @memcpy(i32 %53, i32 %56, i32 4)
  %58 = load %struct.brcmf_wsec_key_le*, %struct.brcmf_wsec_key_le** %4, align 8
  %59 = getelementptr inbounds %struct.brcmf_wsec_key_le, %struct.brcmf_wsec_key_le* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.brcmf_wsec_key*, %struct.brcmf_wsec_key** %3, align 8
  %62 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @memcpy(i32 %60, i32 %63, i32 4)
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
