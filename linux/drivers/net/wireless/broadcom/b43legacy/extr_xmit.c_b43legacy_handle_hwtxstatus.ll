; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_xmit.c_b43legacy_handle_hwtxstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_xmit.c_b43legacy_handle_hwtxstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32 }
%struct.b43legacy_hwtxstatus = type { i32, i32, i32, i32, i32 }
%struct.b43legacy_txstatus = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_handle_hwtxstatus(%struct.b43legacy_wldev* %0, %struct.b43legacy_hwtxstatus* %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca %struct.b43legacy_hwtxstatus*, align 8
  %5 = alloca %struct.b43legacy_txstatus, align 8
  %6 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store %struct.b43legacy_hwtxstatus* %1, %struct.b43legacy_hwtxstatus** %4, align 8
  %7 = load %struct.b43legacy_hwtxstatus*, %struct.b43legacy_hwtxstatus** %4, align 8
  %8 = getelementptr inbounds %struct.b43legacy_hwtxstatus, %struct.b43legacy_hwtxstatus* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @le16_to_cpu(i32 %9)
  %11 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %5, i32 0, i32 9
  store i8* %10, i8** %11, align 8
  %12 = load %struct.b43legacy_hwtxstatus*, %struct.b43legacy_hwtxstatus** %4, align 8
  %13 = getelementptr inbounds %struct.b43legacy_hwtxstatus, %struct.b43legacy_hwtxstatus* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @le16_to_cpu(i32 %14)
  %16 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %5, i32 0, i32 8
  store i8* %15, i8** %16, align 8
  %17 = load %struct.b43legacy_hwtxstatus*, %struct.b43legacy_hwtxstatus** %4, align 8
  %18 = getelementptr inbounds %struct.b43legacy_hwtxstatus, %struct.b43legacy_hwtxstatus* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %5, i32 0, i32 7
  store i32 %19, i32* %20, align 4
  %21 = load %struct.b43legacy_hwtxstatus*, %struct.b43legacy_hwtxstatus** %4, align 8
  %22 = getelementptr inbounds %struct.b43legacy_hwtxstatus, %struct.b43legacy_hwtxstatus* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 4
  %26 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %5, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 15
  %29 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %5, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.b43legacy_hwtxstatus*, %struct.b43legacy_hwtxstatus** %4, align 8
  %31 = getelementptr inbounds %struct.b43legacy_hwtxstatus, %struct.b43legacy_hwtxstatus* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 28
  %36 = ashr i32 %35, 2
  %37 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %5, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 128
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %5, i32 0, i32 3
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 64
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %5, i32 0, i32 4
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 32
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %5, i32 0, i32 5
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, 2
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %5, i32 0, i32 6
  store i32 %64, i32* %65, align 8
  %66 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %67 = call i32 @b43legacy_handle_txstatus(%struct.b43legacy_wldev* %66, %struct.b43legacy_txstatus* %5)
  ret void
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @b43legacy_handle_txstatus(%struct.b43legacy_wldev*, %struct.b43legacy_txstatus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
