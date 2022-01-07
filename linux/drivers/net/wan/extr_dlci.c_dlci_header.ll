; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_dlci.c_dlci_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_dlci.c_dlci_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.frhdr = type { i32, i32, i32, i32, i32, i32 }

@FRAD_I_UI = common dso_local global i32 0, align 4
@FRAD_P_IP = common dso_local global i32 0, align 4
@FRAD_P_PADDING = common dso_local global i32 0, align 4
@FRAD_P_SNAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)* @dlci_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlci_header(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.frhdr, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i16 %2, i16* %10, align 2
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* @FRAD_I_UI, align 4
  %18 = getelementptr inbounds %struct.frhdr, %struct.frhdr* %14, i32 0, i32 5
  store i32 %17, i32* %18, align 4
  %19 = load i16, i16* %10, align 2
  %20 = zext i16 %19 to i32
  switch i32 %20, label %24 [
    i32 128, label %21
  ]

21:                                               ; preds = %6
  %22 = load i32, i32* @FRAD_P_IP, align 4
  %23 = getelementptr inbounds %struct.frhdr, %struct.frhdr* %14, i32 0, i32 4
  store i32 %22, i32* %23, align 4
  store i32 8, i32* %15, align 4
  br label %35

24:                                               ; preds = %6
  %25 = load i32, i32* @FRAD_P_PADDING, align 4
  %26 = getelementptr inbounds %struct.frhdr, %struct.frhdr* %14, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @FRAD_P_SNAP, align 4
  %28 = getelementptr inbounds %struct.frhdr, %struct.frhdr* %14, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.frhdr, %struct.frhdr* %14, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memset(i32 %30, i32 0, i32 4)
  %32 = load i16, i16* %10, align 2
  %33 = call i32 @htons(i16 zeroext %32)
  %34 = getelementptr inbounds %struct.frhdr, %struct.frhdr* %14, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  store i32 24, i32* %15, align 4
  br label %35

35:                                               ; preds = %24, %21
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = load i32, i32* %15, align 4
  %38 = call i8* @skb_push(%struct.sk_buff* %36, i32 %37)
  store i8* %38, i8** %16, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %47

42:                                               ; preds = %35
  %43 = load i8*, i8** %16, align 8
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @memcpy(i8* %43, %struct.frhdr* %14, i32 %44)
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %42, %41
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @htons(i16 zeroext) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.frhdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
