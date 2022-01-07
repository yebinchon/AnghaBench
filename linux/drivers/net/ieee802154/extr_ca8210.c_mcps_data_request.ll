; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_mcps_data_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_mcps_data_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.macaddr = type { i64* }
%struct.secspec = type { i64 }
%struct.mac_message = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8**, i64, i64, i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i8**, i8**, i64 }

@SPI_MCPS_DATA_REQUEST = common dso_local global i32 0, align 4
@MAC_MODE_NO_ADDR = common dso_local global i64 0, align 8
@MAC_MODE_SHORT_ADDR = common dso_local global i64 0, align 8
@MAX_DATA_SIZE = common dso_local global i32 0, align 4
@MAC_SYSTEM_ERROR = common dso_local global i64 0, align 8
@MAC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, %union.macaddr*, i64, i64*, i64, i64, %struct.secspec*, i8*)* @mcps_data_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mcps_data_request(i64 %0, i64 %1, i32 %2, %union.macaddr* %3, i64 %4, i64* %5, i64 %6, i64 %7, %struct.secspec* %8, i8* %9) #0 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %union.macaddr*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.secspec*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.secspec*, align 8
  %23 = alloca %struct.mac_message, align 8
  store i64 %0, i64* %12, align 8
  store i64 %1, i64* %13, align 8
  store i32 %2, i32* %14, align 4
  store %union.macaddr* %3, %union.macaddr** %15, align 8
  store i64 %4, i64* %16, align 8
  store i64* %5, i64** %17, align 8
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store %struct.secspec* %8, %struct.secspec** %20, align 8
  store i8* %9, i8** %21, align 8
  %24 = load i32, i32* @SPI_MCPS_DATA_REQUEST, align 4
  %25 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %23, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i64, i64* %12, align 8
  %27 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %23, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 5
  store i64 %26, i64* %29, align 8
  %30 = load i64, i64* %13, align 8
  %31 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %23, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i64 %30, i64* %34, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* @MAC_MODE_NO_ADDR, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %90

38:                                               ; preds = %10
  %39 = load i32, i32* %14, align 4
  %40 = call i8* @LS_BYTE(i32 %39)
  %41 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %23, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  store i8* %40, i8** %46, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call i8* @MS_BYTE(i32 %47)
  %49 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %23, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  store i8* %48, i8** %54, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* @MAC_MODE_SHORT_ADDR, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %38
  %59 = load %union.macaddr*, %union.macaddr** %15, align 8
  %60 = bitcast %union.macaddr* %59 to i32*
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @LS_BYTE(i32 %61)
  %63 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %23, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  store i8* %62, i8** %68, align 8
  %69 = load %union.macaddr*, %union.macaddr** %15, align 8
  %70 = bitcast %union.macaddr* %69 to i32*
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @MS_BYTE(i32 %71)
  %73 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %23, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 1
  store i8* %72, i8** %78, align 8
  br label %89

79:                                               ; preds = %38
  %80 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %23, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i8**, i8*** %83, align 8
  %85 = load %union.macaddr*, %union.macaddr** %15, align 8
  %86 = bitcast %union.macaddr* %85 to i64**
  %87 = load i64*, i64** %86, align 8
  %88 = call i32 @memcpy(i8** %84, i64* %87, i64 8)
  br label %89

89:                                               ; preds = %79, %58
  br label %90

90:                                               ; preds = %89, %10
  %91 = load i64, i64* %16, align 8
  %92 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %23, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  store i64 %91, i64* %94, align 8
  %95 = load i64, i64* %18, align 8
  %96 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %23, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  store i64 %95, i64* %98, align 8
  %99 = load i64, i64* %19, align 8
  %100 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %23, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i64 %99, i64* %102, align 8
  %103 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %23, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i8**, i8*** %105, align 8
  %107 = load i64*, i64** %17, align 8
  %108 = load i64, i64* %16, align 8
  %109 = call i32 @memcpy(i8** %106, i64* %107, i64 %108)
  %110 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %23, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i8**, i8*** %112, align 8
  %114 = load i64, i64* %16, align 8
  %115 = getelementptr inbounds i8*, i8** %113, i64 %114
  %116 = bitcast i8** %115 to %struct.secspec*
  store %struct.secspec* %116, %struct.secspec** %22, align 8
  %117 = load i32, i32* @MAX_DATA_SIZE, align 4
  %118 = sext i32 %117 to i64
  %119 = sub i64 4, %118
  %120 = load i64, i64* %16, align 8
  %121 = add i64 %119, %120
  %122 = trunc i64 %121 to i32
  %123 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %23, i32 0, i32 0
  store i32 %122, i32* %123, align 8
  %124 = load %struct.secspec*, %struct.secspec** %20, align 8
  %125 = icmp ne %struct.secspec* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %90
  %127 = load %struct.secspec*, %struct.secspec** %20, align 8
  %128 = getelementptr inbounds %struct.secspec, %struct.secspec* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126, %90
  %132 = load %struct.secspec*, %struct.secspec** %22, align 8
  %133 = getelementptr inbounds %struct.secspec, %struct.secspec* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  %134 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %23, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 8
  br label %147

137:                                              ; preds = %126
  %138 = load %struct.secspec*, %struct.secspec** %22, align 8
  %139 = load %struct.secspec*, %struct.secspec** %20, align 8
  %140 = bitcast %struct.secspec* %138 to i8*
  %141 = bitcast %struct.secspec* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 %141, i64 8, i1 false)
  %142 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %23, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = add i64 %144, 8
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 8
  br label %147

147:                                              ; preds = %137, %131
  %148 = load i8*, i8** %21, align 8
  %149 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %23, i32 0, i32 1
  %150 = getelementptr inbounds %struct.mac_message, %struct.mac_message* %23, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 2
  %153 = call i64 @ca8210_spi_transfer(i8* %148, i32* %149, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %147
  %156 = load i64, i64* @MAC_SYSTEM_ERROR, align 8
  store i64 %156, i64* %11, align 8
  br label %159

157:                                              ; preds = %147
  %158 = load i64, i64* @MAC_SUCCESS, align 8
  store i64 %158, i64* %11, align 8
  br label %159

159:                                              ; preds = %157, %155
  %160 = load i64, i64* %11, align 8
  ret i64 %160
}

declare dso_local i8* @LS_BYTE(i32) #1

declare dso_local i8* @MS_BYTE(i32) #1

declare dso_local i32 @memcpy(i8**, i64*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ca8210_spi_transfer(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
