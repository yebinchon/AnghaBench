; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_changelink_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_changelink_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.macsec_secy = type { i32, i32, i32, i32, i8*, i32, %struct.macsec_tx_sc }
%struct.macsec_tx_sc = type { i64, i32, i32, i32, i32, i32* }
%struct.macsec_tx_sa = type { i64 }
%struct.TYPE_2__ = type { %struct.macsec_secy }

@IFLA_MACSEC_ENCODING_SA = common dso_local global i64 0, align 8
@IFLA_MACSEC_WINDOW = common dso_local global i64 0, align 8
@IFLA_MACSEC_ENCRYPT = common dso_local global i64 0, align 8
@IFLA_MACSEC_PROTECT = common dso_local global i64 0, align 8
@IFLA_MACSEC_INC_SCI = common dso_local global i64 0, align 8
@IFLA_MACSEC_ES = common dso_local global i64 0, align 8
@IFLA_MACSEC_SCB = common dso_local global i64 0, align 8
@IFLA_MACSEC_REPLAY_PROTECT = common dso_local global i64 0, align 8
@IFLA_MACSEC_VALIDATION = common dso_local global i64 0, align 8
@IFLA_MACSEC_CIPHER_SUITE = common dso_local global i64 0, align 8
@MACSEC_GCM_AES_128_SAK_LEN = common dso_local global i32 0, align 4
@MACSEC_GCM_AES_256_SAK_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**)* @macsec_changelink_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macsec_changelink_common(%struct.net_device* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.macsec_secy*, align 8
  %7 = alloca %struct.macsec_tx_sc*, align 8
  %8 = alloca %struct.macsec_tx_sa*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.TYPE_2__* @macsec_priv(%struct.net_device* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.macsec_secy* %11, %struct.macsec_secy** %6, align 8
  %12 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %13 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %12, i32 0, i32 6
  store %struct.macsec_tx_sc* %13, %struct.macsec_tx_sc** %7, align 8
  %14 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %15 = load i64, i64* @IFLA_MACSEC_ENCODING_SA, align 8
  %16 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %15
  %17 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %19, label %49

19:                                               ; preds = %2
  %20 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %21 = load i64, i64* @IFLA_MACSEC_ENCODING_SA, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = call i8* @nla_get_u8(%struct.nlattr* %23)
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %7, align 8
  %27 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %7, align 8
  %29 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %7, align 8
  %32 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.macsec_tx_sa* @rtnl_dereference(i32 %35)
  store %struct.macsec_tx_sa* %36, %struct.macsec_tx_sa** %8, align 8
  %37 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %8, align 8
  %38 = icmp ne %struct.macsec_tx_sa* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %19
  %40 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %8, align 8
  %41 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %39, %19
  %45 = phi i1 [ false, %19 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  %47 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %48 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %44, %2
  %50 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %51 = load i64, i64* @IFLA_MACSEC_WINDOW, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %50, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = icmp ne %struct.nlattr* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %57 = load i64, i64* @IFLA_MACSEC_WINDOW, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %56, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = call i32 @nla_get_u32(%struct.nlattr* %59)
  %61 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %62 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %55, %49
  %64 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %65 = load i64, i64* @IFLA_MACSEC_ENCRYPT, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %64, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = icmp ne %struct.nlattr* %67, null
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %71 = load i64, i64* @IFLA_MACSEC_ENCRYPT, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %70, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = call i8* @nla_get_u8(%struct.nlattr* %73)
  %75 = icmp ne i8* %74, null
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %7, align 8
  %80 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %69, %63
  %82 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %83 = load i64, i64* @IFLA_MACSEC_PROTECT, align 8
  %84 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %82, i64 %83
  %85 = load %struct.nlattr*, %struct.nlattr** %84, align 8
  %86 = icmp ne %struct.nlattr* %85, null
  br i1 %86, label %87, label %99

87:                                               ; preds = %81
  %88 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %89 = load i64, i64* @IFLA_MACSEC_PROTECT, align 8
  %90 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %88, i64 %89
  %91 = load %struct.nlattr*, %struct.nlattr** %90, align 8
  %92 = call i8* @nla_get_u8(%struct.nlattr* %91)
  %93 = icmp ne i8* %92, null
  %94 = xor i1 %93, true
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %98 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %87, %81
  %100 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %101 = load i64, i64* @IFLA_MACSEC_INC_SCI, align 8
  %102 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %101
  %103 = load %struct.nlattr*, %struct.nlattr** %102, align 8
  %104 = icmp ne %struct.nlattr* %103, null
  br i1 %104, label %105, label %117

105:                                              ; preds = %99
  %106 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %107 = load i64, i64* @IFLA_MACSEC_INC_SCI, align 8
  %108 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %106, i64 %107
  %109 = load %struct.nlattr*, %struct.nlattr** %108, align 8
  %110 = call i8* @nla_get_u8(%struct.nlattr* %109)
  %111 = icmp ne i8* %110, null
  %112 = xor i1 %111, true
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %7, align 8
  %116 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %105, %99
  %118 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %119 = load i64, i64* @IFLA_MACSEC_ES, align 8
  %120 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %118, i64 %119
  %121 = load %struct.nlattr*, %struct.nlattr** %120, align 8
  %122 = icmp ne %struct.nlattr* %121, null
  br i1 %122, label %123, label %135

123:                                              ; preds = %117
  %124 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %125 = load i64, i64* @IFLA_MACSEC_ES, align 8
  %126 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %124, i64 %125
  %127 = load %struct.nlattr*, %struct.nlattr** %126, align 8
  %128 = call i8* @nla_get_u8(%struct.nlattr* %127)
  %129 = icmp ne i8* %128, null
  %130 = xor i1 %129, true
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %7, align 8
  %134 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %123, %117
  %136 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %137 = load i64, i64* @IFLA_MACSEC_SCB, align 8
  %138 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %136, i64 %137
  %139 = load %struct.nlattr*, %struct.nlattr** %138, align 8
  %140 = icmp ne %struct.nlattr* %139, null
  br i1 %140, label %141, label %153

141:                                              ; preds = %135
  %142 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %143 = load i64, i64* @IFLA_MACSEC_SCB, align 8
  %144 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %142, i64 %143
  %145 = load %struct.nlattr*, %struct.nlattr** %144, align 8
  %146 = call i8* @nla_get_u8(%struct.nlattr* %145)
  %147 = icmp ne i8* %146, null
  %148 = xor i1 %147, true
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %7, align 8
  %152 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 4
  br label %153

153:                                              ; preds = %141, %135
  %154 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %155 = load i64, i64* @IFLA_MACSEC_REPLAY_PROTECT, align 8
  %156 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %154, i64 %155
  %157 = load %struct.nlattr*, %struct.nlattr** %156, align 8
  %158 = icmp ne %struct.nlattr* %157, null
  br i1 %158, label %159, label %171

159:                                              ; preds = %153
  %160 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %161 = load i64, i64* @IFLA_MACSEC_REPLAY_PROTECT, align 8
  %162 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %160, i64 %161
  %163 = load %struct.nlattr*, %struct.nlattr** %162, align 8
  %164 = call i8* @nla_get_u8(%struct.nlattr* %163)
  %165 = icmp ne i8* %164, null
  %166 = xor i1 %165, true
  %167 = xor i1 %166, true
  %168 = zext i1 %167 to i32
  %169 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %170 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %159, %153
  %172 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %173 = load i64, i64* @IFLA_MACSEC_VALIDATION, align 8
  %174 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %172, i64 %173
  %175 = load %struct.nlattr*, %struct.nlattr** %174, align 8
  %176 = icmp ne %struct.nlattr* %175, null
  br i1 %176, label %177, label %185

177:                                              ; preds = %171
  %178 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %179 = load i64, i64* @IFLA_MACSEC_VALIDATION, align 8
  %180 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %178, i64 %179
  %181 = load %struct.nlattr*, %struct.nlattr** %180, align 8
  %182 = call i8* @nla_get_u8(%struct.nlattr* %181)
  %183 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %184 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %183, i32 0, i32 4
  store i8* %182, i8** %184, align 8
  br label %185

185:                                              ; preds = %177, %171
  %186 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %187 = load i64, i64* @IFLA_MACSEC_CIPHER_SUITE, align 8
  %188 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %186, i64 %187
  %189 = load %struct.nlattr*, %struct.nlattr** %188, align 8
  %190 = icmp ne %struct.nlattr* %189, null
  br i1 %190, label %191, label %209

191:                                              ; preds = %185
  %192 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %193 = load i64, i64* @IFLA_MACSEC_CIPHER_SUITE, align 8
  %194 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %192, i64 %193
  %195 = load %struct.nlattr*, %struct.nlattr** %194, align 8
  %196 = call i32 @nla_get_u64(%struct.nlattr* %195)
  switch i32 %196, label %205 [
    i32 130, label %197
    i32 128, label %197
    i32 129, label %201
  ]

197:                                              ; preds = %191, %191
  %198 = load i32, i32* @MACSEC_GCM_AES_128_SAK_LEN, align 4
  %199 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %200 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 4
  br label %208

201:                                              ; preds = %191
  %202 = load i32, i32* @MACSEC_GCM_AES_256_SAK_LEN, align 4
  %203 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %204 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 4
  br label %208

205:                                              ; preds = %191
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %3, align 4
  br label %210

208:                                              ; preds = %201, %197
  br label %209

209:                                              ; preds = %208, %185
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %209, %205
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local %struct.TYPE_2__* @macsec_priv(%struct.net_device*) #1

declare dso_local i8* @nla_get_u8(%struct.nlattr*) #1

declare dso_local %struct.macsec_tx_sa* @rtnl_dereference(i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u64(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
