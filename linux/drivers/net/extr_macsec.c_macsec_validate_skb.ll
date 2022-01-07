; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_validate_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_validate_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.macsec_eth_header = type { i32, i32, i32, i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MACSEC_TCI_SC = common dso_local global i32 0, align 4
@MACSEC_TCI_VERSION = common dso_local global i32 0, align 4
@MACSEC_TCI_ES = common dso_local global i32 0, align 4
@MACSEC_TCI_SCB = common dso_local global i32 0, align 4
@MIN_NON_SHORT_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @macsec_validate_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macsec_validate_skb(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.macsec_eth_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.macsec_eth_header*
  store %struct.macsec_eth_header* %12, %struct.macsec_eth_header** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = mul nsw i32 2, %16
  %18 = sub nsw i32 %15, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %6, align 8
  %20 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MACSEC_TCI_SC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @macsec_extra_len(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sle i32 %33, 16
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %99

36:                                               ; preds = %2
  %37 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %6, align 8
  %38 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MACSEC_TCI_VERSION, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %99

44:                                               ; preds = %36
  %45 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %6, align 8
  %46 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MACSEC_TCI_ES, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %44
  %52 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %6, align 8
  %53 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MACSEC_TCI_SCB, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %51, %44
  %59 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %6, align 8
  %60 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MACSEC_TCI_SC, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %99

66:                                               ; preds = %58, %51
  %67 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %6, align 8
  %68 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %99

72:                                               ; preds = %66
  %73 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %6, align 8
  %74 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %99

78:                                               ; preds = %72
  %79 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %6, align 8
  %80 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %6, align 8
  %87 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %85, %88
  %90 = icmp eq i32 %84, %89
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %3, align 4
  br label %99

92:                                               ; preds = %78
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @MIN_NON_SHORT_LEN, align 4
  %96 = add nsw i32 %94, %95
  %97 = icmp sge i32 %93, %96
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %92, %83, %77, %71, %65, %43, %35
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @macsec_extra_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
