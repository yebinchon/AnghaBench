; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_nla_put_secy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_nla_put_secy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macsec_secy = type { i32, i32, i64, i64, i64, i64, i64, i32, %struct.macsec_tx_sc }
%struct.macsec_tx_sc = type { i64, i64, i64, i64, i64 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@MACSEC_ATTR_SECY = common dso_local global i32 0, align 4
@MACSEC_DEFAULT_CIPHER_ID = common dso_local global i32 0, align 4
@MACSEC_CIPHER_ID_GCM_AES_256 = common dso_local global i32 0, align 4
@MACSEC_SECY_ATTR_SCI = common dso_local global i32 0, align 4
@MACSEC_SECY_ATTR_PAD = common dso_local global i32 0, align 4
@MACSEC_SECY_ATTR_CIPHER_SUITE = common dso_local global i32 0, align 4
@MACSEC_SECY_ATTR_ICV_LEN = common dso_local global i32 0, align 4
@MACSEC_SECY_ATTR_OPER = common dso_local global i32 0, align 4
@MACSEC_SECY_ATTR_PROTECT = common dso_local global i32 0, align 4
@MACSEC_SECY_ATTR_REPLAY = common dso_local global i32 0, align 4
@MACSEC_SECY_ATTR_VALIDATE = common dso_local global i32 0, align 4
@MACSEC_SECY_ATTR_ENCRYPT = common dso_local global i32 0, align 4
@MACSEC_SECY_ATTR_INC_SCI = common dso_local global i32 0, align 4
@MACSEC_SECY_ATTR_ES = common dso_local global i32 0, align 4
@MACSEC_SECY_ATTR_SCB = common dso_local global i32 0, align 4
@MACSEC_SECY_ATTR_ENCODING_SA = common dso_local global i32 0, align 4
@MACSEC_SECY_ATTR_WINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macsec_secy*, %struct.sk_buff*)* @nla_put_secy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nla_put_secy(%struct.macsec_secy* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.macsec_secy*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.macsec_tx_sc*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  store %struct.macsec_secy* %0, %struct.macsec_secy** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.macsec_secy*, %struct.macsec_secy** %4, align 8
  %10 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %9, i32 0, i32 8
  store %struct.macsec_tx_sc* %10, %struct.macsec_tx_sc** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = load i32, i32* @MACSEC_ATTR_SECY, align 4
  %13 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %11, i32 %12)
  store %struct.nlattr* %13, %struct.nlattr** %7, align 8
  %14 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %146

17:                                               ; preds = %2
  %18 = load %struct.macsec_secy*, %struct.macsec_secy** %4, align 8
  %19 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %25 [
    i32 129, label %21
    i32 128, label %23
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* @MACSEC_DEFAULT_CIPHER_ID, align 4
  store i32 %22, i32* %8, align 4
  br label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @MACSEC_CIPHER_ID_GCM_AES_256, align 4
  store i32 %24, i32* %8, align 4
  br label %26

25:                                               ; preds = %17
  br label %142

26:                                               ; preds = %23, %21
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i32, i32* @MACSEC_SECY_ATTR_SCI, align 4
  %29 = load %struct.macsec_secy*, %struct.macsec_secy** %4, align 8
  %30 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MACSEC_SECY_ATTR_PAD, align 4
  %33 = call i64 @nla_put_sci(%struct.sk_buff* %27, i32 %28, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %122, label %35

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load i32, i32* @MACSEC_SECY_ATTR_CIPHER_SUITE, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @MACSEC_SECY_ATTR_PAD, align 4
  %40 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %36, i32 %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %122, label %42

42:                                               ; preds = %35
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load i32, i32* @MACSEC_SECY_ATTR_ICV_LEN, align 4
  %45 = load %struct.macsec_secy*, %struct.macsec_secy** %4, align 8
  %46 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @nla_put_u8(%struct.sk_buff* %43, i32 %44, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %122, label %50

50:                                               ; preds = %42
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load i32, i32* @MACSEC_SECY_ATTR_OPER, align 4
  %53 = load %struct.macsec_secy*, %struct.macsec_secy** %4, align 8
  %54 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @nla_put_u8(%struct.sk_buff* %51, i32 %52, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %122, label %58

58:                                               ; preds = %50
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = load i32, i32* @MACSEC_SECY_ATTR_PROTECT, align 4
  %61 = load %struct.macsec_secy*, %struct.macsec_secy** %4, align 8
  %62 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @nla_put_u8(%struct.sk_buff* %59, i32 %60, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %122, label %66

66:                                               ; preds = %58
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = load i32, i32* @MACSEC_SECY_ATTR_REPLAY, align 4
  %69 = load %struct.macsec_secy*, %struct.macsec_secy** %4, align 8
  %70 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @nla_put_u8(%struct.sk_buff* %67, i32 %68, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %122, label %74

74:                                               ; preds = %66
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = load i32, i32* @MACSEC_SECY_ATTR_VALIDATE, align 4
  %77 = load %struct.macsec_secy*, %struct.macsec_secy** %4, align 8
  %78 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @nla_put_u8(%struct.sk_buff* %75, i32 %76, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %122, label %82

82:                                               ; preds = %74
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = load i32, i32* @MACSEC_SECY_ATTR_ENCRYPT, align 4
  %85 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %6, align 8
  %86 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @nla_put_u8(%struct.sk_buff* %83, i32 %84, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %122, label %90

90:                                               ; preds = %82
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = load i32, i32* @MACSEC_SECY_ATTR_INC_SCI, align 4
  %93 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %6, align 8
  %94 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @nla_put_u8(%struct.sk_buff* %91, i32 %92, i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %122, label %98

98:                                               ; preds = %90
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = load i32, i32* @MACSEC_SECY_ATTR_ES, align 4
  %101 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %6, align 8
  %102 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @nla_put_u8(%struct.sk_buff* %99, i32 %100, i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %122, label %106

106:                                              ; preds = %98
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = load i32, i32* @MACSEC_SECY_ATTR_SCB, align 4
  %109 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %6, align 8
  %110 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i64 @nla_put_u8(%struct.sk_buff* %107, i32 %108, i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %106
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = load i32, i32* @MACSEC_SECY_ATTR_ENCODING_SA, align 4
  %117 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %6, align 8
  %118 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @nla_put_u8(%struct.sk_buff* %115, i32 %116, i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114, %106, %98, %90, %82, %74, %66, %58, %50, %42, %35, %26
  br label %142

123:                                              ; preds = %114
  %124 = load %struct.macsec_secy*, %struct.macsec_secy** %4, align 8
  %125 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %123
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = load i32, i32* @MACSEC_SECY_ATTR_WINDOW, align 4
  %131 = load %struct.macsec_secy*, %struct.macsec_secy** %4, align 8
  %132 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @nla_put_u32(%struct.sk_buff* %129, i32 %130, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  br label %142

137:                                              ; preds = %128
  br label %138

138:                                              ; preds = %137, %123
  %139 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %140 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %141 = call i32 @nla_nest_end(%struct.sk_buff* %139, %struct.nlattr* %140)
  store i32 0, i32* %3, align 4
  br label %146

142:                                              ; preds = %136, %122, %25
  %143 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %144 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %145 = call i32 @nla_nest_cancel(%struct.sk_buff* %143, %struct.nlattr* %144)
  store i32 1, i32* %3, align 4
  br label %146

146:                                              ; preds = %142, %138, %16
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_sci(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
