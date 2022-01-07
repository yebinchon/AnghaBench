; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_rxsum_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_rxsum_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32 }
%struct.sk_buff = type { i32 }

@RXWBFLAG_TCPON = common dso_local global i32 0, align 4
@RXWBFLAG_UDPON = common dso_local global i32 0, align 4
@RXWBFLAG_IPV4 = common dso_local global i32 0, align 4
@RXWBFLAG_MF = common dso_local global i32 0, align 4
@RXWBFLAG_TCPCS = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"TCP Checksum error\0A\00", align 1
@RXWBFLAG_UDPCS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"UDP Checksum error\0A\00", align 1
@RXWBFLAG_IPCS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"IPv4 Checksum error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_adapter*, i32, %struct.sk_buff*)* @jme_rxsum_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_rxsum_ok(%struct.jme_adapter* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jme_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.jme_adapter* %0, %struct.jme_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @RXWBFLAG_TCPON, align 4
  %10 = load i32, i32* @RXWBFLAG_UDPON, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @RXWBFLAG_IPV4, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %8, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %92

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @RXWBFLAG_MF, align 4
  %20 = load i32, i32* @RXWBFLAG_TCPON, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @RXWBFLAG_TCPCS, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %18, %23
  %25 = load i32, i32* @RXWBFLAG_TCPON, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %17
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @RXWBFLAG_IPV4, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %37 = load i32, i32* @rx_err, align 4
  %38 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %39 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @netif_err(%struct.jme_adapter* %36, i32 %37, i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %35, %30
  store i32 0, i32* %4, align 4
  br label %92

43:                                               ; preds = %17
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @RXWBFLAG_MF, align 4
  %46 = load i32, i32* @RXWBFLAG_UDPON, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @RXWBFLAG_UDPCS, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %44, %49
  %51 = load i32, i32* @RXWBFLAG_UDPON, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %43
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = call i64 @jme_udpsum(%struct.sk_buff* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @RXWBFLAG_IPV4, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %67 = load i32, i32* @rx_err, align 4
  %68 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %69 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @netif_err(%struct.jme_adapter* %66, i32 %67, i32 %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %65, %60
  store i32 0, i32* %4, align 4
  br label %92

73:                                               ; preds = %56, %43
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @RXWBFLAG_IPV4, align 4
  %76 = load i32, i32* @RXWBFLAG_IPCS, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = load i32, i32* @RXWBFLAG_IPV4, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %73
  %85 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %86 = load i32, i32* @rx_err, align 4
  %87 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %88 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @netif_err(%struct.jme_adapter* %85, i32 %86, i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %92

91:                                               ; preds = %73
  store i32 1, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %84, %72, %42, %16
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_err(%struct.jme_adapter*, i32, i32, i8*) #1

declare dso_local i64 @jme_udpsum(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
