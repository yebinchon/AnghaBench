; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.macsec_secy = type { i32, i32, i64, i64, i64, i64, i32, %struct.macsec_tx_sc }
%struct.macsec_tx_sc = type { i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { %struct.macsec_secy }

@MACSEC_DEFAULT_CIPHER_ID = common dso_local global i32 0, align 4
@MACSEC_CIPHER_ID_GCM_AES_256 = common dso_local global i32 0, align 4
@IFLA_MACSEC_SCI = common dso_local global i32 0, align 4
@IFLA_MACSEC_PAD = common dso_local global i32 0, align 4
@IFLA_MACSEC_ICV_LEN = common dso_local global i32 0, align 4
@IFLA_MACSEC_CIPHER_SUITE = common dso_local global i32 0, align 4
@IFLA_MACSEC_ENCODING_SA = common dso_local global i32 0, align 4
@IFLA_MACSEC_ENCRYPT = common dso_local global i32 0, align 4
@IFLA_MACSEC_PROTECT = common dso_local global i32 0, align 4
@IFLA_MACSEC_INC_SCI = common dso_local global i32 0, align 4
@IFLA_MACSEC_ES = common dso_local global i32 0, align 4
@IFLA_MACSEC_SCB = common dso_local global i32 0, align 4
@IFLA_MACSEC_REPLAY_PROTECT = common dso_local global i32 0, align 4
@IFLA_MACSEC_VALIDATION = common dso_local global i32 0, align 4
@IFLA_MACSEC_WINDOW = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @macsec_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macsec_fill_info(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.macsec_secy*, align 8
  %7 = alloca %struct.macsec_tx_sc*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.TYPE_2__* @macsec_priv(%struct.net_device* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.macsec_secy* %11, %struct.macsec_secy** %6, align 8
  %12 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %13 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %12, i32 0, i32 7
  store %struct.macsec_tx_sc* %13, %struct.macsec_tx_sc** %7, align 8
  %14 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %15 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %21 [
    i32 129, label %17
    i32 128, label %19
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @MACSEC_DEFAULT_CIPHER_ID, align 4
  store i32 %18, i32* %8, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @MACSEC_CIPHER_ID_GCM_AES_256, align 4
  store i32 %20, i32* %8, align 4
  br label %22

21:                                               ; preds = %2
  br label %127

22:                                               ; preds = %19, %17
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @IFLA_MACSEC_SCI, align 4
  %25 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %26 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IFLA_MACSEC_PAD, align 4
  %29 = call i64 @nla_put_sci(%struct.sk_buff* %23, i32 %24, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %110, label %31

31:                                               ; preds = %22
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load i32, i32* @IFLA_MACSEC_ICV_LEN, align 4
  %34 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %35 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @nla_put_u8(%struct.sk_buff* %32, i32 %33, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %110, label %39

39:                                               ; preds = %31
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load i32, i32* @IFLA_MACSEC_CIPHER_SUITE, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @IFLA_MACSEC_PAD, align 4
  %44 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %40, i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %110, label %46

46:                                               ; preds = %39
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load i32, i32* @IFLA_MACSEC_ENCODING_SA, align 4
  %49 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %7, align 8
  %50 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @nla_put_u8(%struct.sk_buff* %47, i32 %48, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %110, label %54

54:                                               ; preds = %46
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = load i32, i32* @IFLA_MACSEC_ENCRYPT, align 4
  %57 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %7, align 8
  %58 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @nla_put_u8(%struct.sk_buff* %55, i32 %56, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %110, label %62

62:                                               ; preds = %54
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = load i32, i32* @IFLA_MACSEC_PROTECT, align 4
  %65 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %66 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @nla_put_u8(%struct.sk_buff* %63, i32 %64, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %110, label %70

70:                                               ; preds = %62
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = load i32, i32* @IFLA_MACSEC_INC_SCI, align 4
  %73 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %7, align 8
  %74 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @nla_put_u8(%struct.sk_buff* %71, i32 %72, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %110, label %78

78:                                               ; preds = %70
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = load i32, i32* @IFLA_MACSEC_ES, align 4
  %81 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %7, align 8
  %82 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @nla_put_u8(%struct.sk_buff* %79, i32 %80, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %110, label %86

86:                                               ; preds = %78
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = load i32, i32* @IFLA_MACSEC_SCB, align 4
  %89 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %7, align 8
  %90 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @nla_put_u8(%struct.sk_buff* %87, i32 %88, i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %110, label %94

94:                                               ; preds = %86
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = load i32, i32* @IFLA_MACSEC_REPLAY_PROTECT, align 4
  %97 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %98 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @nla_put_u8(%struct.sk_buff* %95, i32 %96, i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %94
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = load i32, i32* @IFLA_MACSEC_VALIDATION, align 4
  %105 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %106 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @nla_put_u8(%struct.sk_buff* %103, i32 %104, i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102, %94, %86, %78, %70, %62, %54, %46, %39, %31, %22
  br label %127

111:                                              ; preds = %102
  %112 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %113 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = load i32, i32* @IFLA_MACSEC_WINDOW, align 4
  %119 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %120 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @nla_put_u32(%struct.sk_buff* %117, i32 %118, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %127

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %125, %111
  store i32 0, i32* %3, align 4
  br label %130

127:                                              ; preds = %124, %110, %21
  %128 = load i32, i32* @EMSGSIZE, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %127, %126
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.TYPE_2__* @macsec_priv(%struct.net_device*) #1

declare dso_local i64 @nla_put_sci(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
