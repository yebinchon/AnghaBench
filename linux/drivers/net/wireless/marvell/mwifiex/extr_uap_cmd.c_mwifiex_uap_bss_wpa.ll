; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_uap_bss_wpa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_uap_bss_wpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_cmd_tlv_pwk_cipher = type { i32, i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.host_cmd_tlv_gwk_cipher = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.host_cmd_tlv_passphrase = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.host_cmd_tlv_akmp = type { i8*, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.mwifiex_uap_bss_param = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

@TLV_TYPE_UAP_AKMP = common dso_local global i32 0, align 4
@VALID_CIPHER_BITMAP = common dso_local global i32 0, align 4
@TLV_TYPE_PWK_CIPHER = common dso_local global i32 0, align 4
@PROTOCOL_WPA = common dso_local global i32 0, align 4
@PROTOCOL_WPA2 = common dso_local global i32 0, align 4
@TLV_TYPE_GWK_CIPHER = common dso_local global i32 0, align 4
@TLV_TYPE_UAP_WPA_PASSPHRASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i8*, i32*)* @mwifiex_uap_bss_wpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_uap_bss_wpa(i32** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.host_cmd_tlv_pwk_cipher*, align 8
  %8 = alloca %struct.host_cmd_tlv_gwk_cipher*, align 8
  %9 = alloca %struct.host_cmd_tlv_passphrase*, align 8
  %10 = alloca %struct.host_cmd_tlv_akmp*, align 8
  %11 = alloca %struct.mwifiex_uap_bss_param*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.mwifiex_uap_bss_param*
  store %struct.mwifiex_uap_bss_param* %15, %struct.mwifiex_uap_bss_param** %11, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32**, i32*** %4, align 8
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %13, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = bitcast i32* %20 to %struct.host_cmd_tlv_akmp*
  store %struct.host_cmd_tlv_akmp* %21, %struct.host_cmd_tlv_akmp** %10, align 8
  %22 = load i32, i32* @TLV_TYPE_UAP_AKMP, align 4
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = load %struct.host_cmd_tlv_akmp*, %struct.host_cmd_tlv_akmp** %10, align 8
  %25 = getelementptr inbounds %struct.host_cmd_tlv_akmp, %struct.host_cmd_tlv_akmp* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i8* %23, i8** %26, align 8
  %27 = call i8* @cpu_to_le16(i32 28)
  %28 = load %struct.host_cmd_tlv_akmp*, %struct.host_cmd_tlv_akmp** %10, align 8
  %29 = getelementptr inbounds %struct.host_cmd_tlv_akmp, %struct.host_cmd_tlv_akmp* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %32 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @cpu_to_le16(i32 %33)
  %35 = load %struct.host_cmd_tlv_akmp*, %struct.host_cmd_tlv_akmp** %10, align 8
  %36 = getelementptr inbounds %struct.host_cmd_tlv_akmp, %struct.host_cmd_tlv_akmp* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %38 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @cpu_to_le16(i32 %39)
  %41 = load %struct.host_cmd_tlv_akmp*, %struct.host_cmd_tlv_akmp** %10, align 8
  %42 = getelementptr inbounds %struct.host_cmd_tlv_akmp, %struct.host_cmd_tlv_akmp* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, 32
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %12, align 4
  %47 = load i32*, i32** %13, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 32
  store i32* %48, i32** %13, align 8
  %49 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %50 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @VALID_CIPHER_BITMAP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %84

56:                                               ; preds = %3
  %57 = load i32*, i32** %13, align 8
  %58 = bitcast i32* %57 to %struct.host_cmd_tlv_pwk_cipher*
  store %struct.host_cmd_tlv_pwk_cipher* %58, %struct.host_cmd_tlv_pwk_cipher** %7, align 8
  %59 = load i32, i32* @TLV_TYPE_PWK_CIPHER, align 4
  %60 = call i8* @cpu_to_le16(i32 %59)
  %61 = load %struct.host_cmd_tlv_pwk_cipher*, %struct.host_cmd_tlv_pwk_cipher** %7, align 8
  %62 = getelementptr inbounds %struct.host_cmd_tlv_pwk_cipher, %struct.host_cmd_tlv_pwk_cipher* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i8* %60, i8** %63, align 8
  %64 = call i8* @cpu_to_le16(i32 28)
  %65 = load %struct.host_cmd_tlv_pwk_cipher*, %struct.host_cmd_tlv_pwk_cipher** %7, align 8
  %66 = getelementptr inbounds %struct.host_cmd_tlv_pwk_cipher, %struct.host_cmd_tlv_pwk_cipher* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  %68 = load i32, i32* @PROTOCOL_WPA, align 4
  %69 = call i8* @cpu_to_le16(i32 %68)
  %70 = load %struct.host_cmd_tlv_pwk_cipher*, %struct.host_cmd_tlv_pwk_cipher** %7, align 8
  %71 = getelementptr inbounds %struct.host_cmd_tlv_pwk_cipher, %struct.host_cmd_tlv_pwk_cipher* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %73 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.host_cmd_tlv_pwk_cipher*, %struct.host_cmd_tlv_pwk_cipher** %7, align 8
  %77 = getelementptr inbounds %struct.host_cmd_tlv_pwk_cipher, %struct.host_cmd_tlv_pwk_cipher* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %79, 32
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %12, align 4
  %82 = load i32*, i32** %13, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 32
  store i32* %83, i32** %13, align 8
  br label %84

84:                                               ; preds = %56, %3
  %85 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %86 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @VALID_CIPHER_BITMAP, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %120

92:                                               ; preds = %84
  %93 = load i32*, i32** %13, align 8
  %94 = bitcast i32* %93 to %struct.host_cmd_tlv_pwk_cipher*
  store %struct.host_cmd_tlv_pwk_cipher* %94, %struct.host_cmd_tlv_pwk_cipher** %7, align 8
  %95 = load i32, i32* @TLV_TYPE_PWK_CIPHER, align 4
  %96 = call i8* @cpu_to_le16(i32 %95)
  %97 = load %struct.host_cmd_tlv_pwk_cipher*, %struct.host_cmd_tlv_pwk_cipher** %7, align 8
  %98 = getelementptr inbounds %struct.host_cmd_tlv_pwk_cipher, %struct.host_cmd_tlv_pwk_cipher* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  store i8* %96, i8** %99, align 8
  %100 = call i8* @cpu_to_le16(i32 28)
  %101 = load %struct.host_cmd_tlv_pwk_cipher*, %struct.host_cmd_tlv_pwk_cipher** %7, align 8
  %102 = getelementptr inbounds %struct.host_cmd_tlv_pwk_cipher, %struct.host_cmd_tlv_pwk_cipher* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i8* %100, i8** %103, align 8
  %104 = load i32, i32* @PROTOCOL_WPA2, align 4
  %105 = call i8* @cpu_to_le16(i32 %104)
  %106 = load %struct.host_cmd_tlv_pwk_cipher*, %struct.host_cmd_tlv_pwk_cipher** %7, align 8
  %107 = getelementptr inbounds %struct.host_cmd_tlv_pwk_cipher, %struct.host_cmd_tlv_pwk_cipher* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %109 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.host_cmd_tlv_pwk_cipher*, %struct.host_cmd_tlv_pwk_cipher** %7, align 8
  %113 = getelementptr inbounds %struct.host_cmd_tlv_pwk_cipher, %struct.host_cmd_tlv_pwk_cipher* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = add i64 %115, 32
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %12, align 4
  %118 = load i32*, i32** %13, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 32
  store i32* %119, i32** %13, align 8
  br label %120

120:                                              ; preds = %92, %84
  %121 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %122 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @VALID_CIPHER_BITMAP, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %152

128:                                              ; preds = %120
  %129 = load i32*, i32** %13, align 8
  %130 = bitcast i32* %129 to %struct.host_cmd_tlv_gwk_cipher*
  store %struct.host_cmd_tlv_gwk_cipher* %130, %struct.host_cmd_tlv_gwk_cipher** %8, align 8
  %131 = load i32, i32* @TLV_TYPE_GWK_CIPHER, align 4
  %132 = call i8* @cpu_to_le16(i32 %131)
  %133 = load %struct.host_cmd_tlv_gwk_cipher*, %struct.host_cmd_tlv_gwk_cipher** %8, align 8
  %134 = getelementptr inbounds %struct.host_cmd_tlv_gwk_cipher, %struct.host_cmd_tlv_gwk_cipher* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  store i8* %132, i8** %135, align 8
  %136 = call i8* @cpu_to_le16(i32 20)
  %137 = load %struct.host_cmd_tlv_gwk_cipher*, %struct.host_cmd_tlv_gwk_cipher** %8, align 8
  %138 = getelementptr inbounds %struct.host_cmd_tlv_gwk_cipher, %struct.host_cmd_tlv_gwk_cipher* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  store i8* %136, i8** %139, align 8
  %140 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %141 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.host_cmd_tlv_gwk_cipher*, %struct.host_cmd_tlv_gwk_cipher** %8, align 8
  %145 = getelementptr inbounds %struct.host_cmd_tlv_gwk_cipher, %struct.host_cmd_tlv_gwk_cipher* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = add i64 %147, 24
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %12, align 4
  %150 = load i32*, i32** %13, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 24
  store i32* %151, i32** %13, align 8
  br label %152

152:                                              ; preds = %128, %120
  %153 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %154 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %204

158:                                              ; preds = %152
  %159 = load i32*, i32** %13, align 8
  %160 = bitcast i32* %159 to %struct.host_cmd_tlv_passphrase*
  store %struct.host_cmd_tlv_passphrase* %160, %struct.host_cmd_tlv_passphrase** %9, align 8
  %161 = load i32, i32* @TLV_TYPE_UAP_WPA_PASSPHRASE, align 4
  %162 = call i8* @cpu_to_le16(i32 %161)
  %163 = load %struct.host_cmd_tlv_passphrase*, %struct.host_cmd_tlv_passphrase** %9, align 8
  %164 = getelementptr inbounds %struct.host_cmd_tlv_passphrase, %struct.host_cmd_tlv_passphrase* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  store i8* %162, i8** %165, align 8
  %166 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %167 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i8* @cpu_to_le16(i32 %169)
  %171 = load %struct.host_cmd_tlv_passphrase*, %struct.host_cmd_tlv_passphrase** %9, align 8
  %172 = getelementptr inbounds %struct.host_cmd_tlv_passphrase, %struct.host_cmd_tlv_passphrase* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  store i8* %170, i8** %173, align 8
  %174 = load %struct.host_cmd_tlv_passphrase*, %struct.host_cmd_tlv_passphrase** %9, align 8
  %175 = getelementptr inbounds %struct.host_cmd_tlv_passphrase, %struct.host_cmd_tlv_passphrase* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %178 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %182 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @memcpy(i32 %176, i32 %180, i32 %184)
  %186 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %187 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = add i64 4, %190
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = add i64 %193, %191
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %12, align 4
  %196 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %197 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = add i64 4, %200
  %202 = load i32*, i32** %13, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 %201
  store i32* %203, i32** %13, align 8
  br label %204

204:                                              ; preds = %158, %152
  %205 = load i32, i32* %12, align 4
  %206 = load i32*, i32** %6, align 8
  store i32 %205, i32* %206, align 4
  %207 = load i32*, i32** %13, align 8
  %208 = load i32**, i32*** %4, align 8
  store i32* %207, i32** %208, align 8
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
