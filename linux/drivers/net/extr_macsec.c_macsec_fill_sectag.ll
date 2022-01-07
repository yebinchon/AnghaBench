; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_fill_sectag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_fill_sectag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macsec_eth_header = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.macsec_secy = type { i64, i32, %struct.macsec_tx_sc }
%struct.macsec_tx_sc = type { i32, i64, i64, i64 }

@ETH_P_MACSEC = common dso_local global i32 0, align 4
@MACSEC_TCI_SC = common dso_local global i32 0, align 4
@MACSEC_TCI_ES = common dso_local global i32 0, align 4
@MACSEC_TCI_SCB = common dso_local global i32 0, align 4
@MACSEC_TCI_CONFID = common dso_local global i32 0, align 4
@DEFAULT_ICV_LEN = common dso_local global i64 0, align 8
@MACSEC_TCI_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macsec_eth_header*, %struct.macsec_secy*, i32, i32)* @macsec_fill_sectag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macsec_fill_sectag(%struct.macsec_eth_header* %0, %struct.macsec_secy* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.macsec_eth_header*, align 8
  %6 = alloca %struct.macsec_secy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.macsec_tx_sc*, align 8
  store %struct.macsec_eth_header* %0, %struct.macsec_eth_header** %5, align 8
  store %struct.macsec_secy* %1, %struct.macsec_secy** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %11 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %10, i32 0, i32 2
  store %struct.macsec_tx_sc* %11, %struct.macsec_tx_sc** %9, align 8
  %12 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %5, align 8
  %13 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %12, i32 0, i32 0
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @macsec_sectag_len(i32 %14)
  %16 = call i32 @memset(i32* %13, i32 0, i32 %15)
  %17 = load i32, i32* @ETH_P_MACSEC, align 4
  %18 = call i32 @htons(i32 %17)
  %19 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %5, align 8
  %20 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %4
  %25 = load i32, i32* @MACSEC_TCI_SC, align 4
  %26 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %5, align 8
  %27 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %5, align 8
  %31 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %30, i32 0, i32 2
  %32 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %33 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %32, i32 0, i32 1
  %34 = call i32 @memcpy(i32* %31, i32* %33, i32 4)
  br label %58

35:                                               ; preds = %4
  %36 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %9, align 8
  %37 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @MACSEC_TCI_ES, align 4
  %42 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %5, align 8
  %43 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %9, align 8
  %48 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @MACSEC_TCI_SCB, align 4
  %53 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %5, align 8
  %54 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %46
  br label %58

58:                                               ; preds = %57, %24
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @htonl(i32 %59)
  %61 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %5, align 8
  %62 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %9, align 8
  %64 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %58
  %68 = load i32, i32* @MACSEC_TCI_CONFID, align 4
  %69 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %5, align 8
  %70 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %86

73:                                               ; preds = %58
  %74 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %75 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DEFAULT_ICV_LEN, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i32, i32* @MACSEC_TCI_C, align 4
  %81 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %5, align 8
  %82 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %73
  br label %86

86:                                               ; preds = %85, %67
  %87 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %9, align 8
  %88 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %5, align 8
  %91 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @macsec_sectag_len(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
