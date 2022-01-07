; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_get_debug_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_get_debug_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_3__, %struct.mwifiex_adapter* }
%struct.TYPE_3__ = type { i32 }
%struct.mwifiex_adapter = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_debug_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32 }

@MWIFIEX_IS_HS_CONFIGURED = common dso_local global i32 0, align 4
@MWIFIEX_IS_CMD_TIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_get_debug_info(%struct.mwifiex_private* %0, %struct.mwifiex_debug_info* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.mwifiex_debug_info*, align 8
  %5 = alloca %struct.mwifiex_adapter*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.mwifiex_debug_info* %1, %struct.mwifiex_debug_info** %4, align 8
  %6 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %7 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %6, i32 0, i32 1
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  store %struct.mwifiex_adapter* %8, %struct.mwifiex_adapter** %5, align 8
  %9 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %10 = icmp ne %struct.mwifiex_debug_info* %9, null
  br i1 %10, label %11, label %275

11:                                               ; preds = %2
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %12, i32 0, i32 13
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %16 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %15, i32 0, i32 44
  store i32 %14, i32* %16, align 4
  %17 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %18 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %17, i32 0, i32 43
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %21 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @memcpy(i32 %19, i32 %23, i32 4)
  %25 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %26 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %25, i32 0, i32 12
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %30 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %29, i32 0, i32 42
  store i8* %28, i8** %30, align 8
  %31 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %31, i32 0, i32 11
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %36 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %35, i32 0, i32 41
  store i8* %34, i8** %36, align 8
  %37 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %38 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %39 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %38, i32 0, i32 39
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mwifiex_get_rx_reorder_tbl(%struct.mwifiex_private* %37, i32 %40)
  %42 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %43 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %42, i32 0, i32 40
  store i32 %41, i32* %43, align 8
  %44 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %45 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %46 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %45, i32 0, i32 37
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mwifiex_get_tx_ba_stream_tbl(%struct.mwifiex_private* %44, i32 %47)
  %49 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %50 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %49, i32 0, i32 38
  store i32 %48, i32* %50, align 8
  %51 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %52 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %53 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %52, i32 0, i32 35
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mwifiex_get_tdls_list(%struct.mwifiex_private* %51, i32 %54)
  %56 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %57 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %56, i32 0, i32 36
  store i32 %55, i32* %57, align 8
  %58 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %62 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %61, i32 0, i32 34
  store i32 %60, i32* %62, align 8
  %63 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %64 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %67 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %66, i32 0, i32 33
  store i32 %65, i32* %67, align 4
  %68 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %69 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %72 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %71, i32 0, i32 32
  store i32 %70, i32* %72, align 8
  %73 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %74 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %77 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %76, i32 0, i32 31
  store i32 %75, i32* %77, align 4
  %78 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %79 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %82 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %81, i32 0, i32 30
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @MWIFIEX_IS_HS_CONFIGURED, align 4
  %84 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %85 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %84, i32 0, i32 4
  %86 = call i8* @test_bit(i32 %83, i32* %85)
  %87 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %88 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %87, i32 0, i32 29
  store i8* %86, i8** %88, align 8
  %89 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %90 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %93 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %92, i32 0, i32 28
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @MWIFIEX_IS_CMD_TIMEDOUT, align 4
  %95 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %96 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %95, i32 0, i32 4
  %97 = call i8* @test_bit(i32 %94, i32* %96)
  %98 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %99 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %98, i32 0, i32 27
  store i8* %97, i8** %99, align 8
  %100 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %101 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 23
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %105 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %104, i32 0, i32 26
  store i32 %103, i32* %105, align 8
  %106 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %107 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 22
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %111 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %110, i32 0, i32 25
  store i32 %109, i32* %111, align 4
  %112 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %113 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 21
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %117 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %116, i32 0, i32 24
  store i32 %115, i32* %117, align 8
  %118 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %119 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 20
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %123 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %122, i32 0, i32 23
  store i32 %121, i32* %123, align 4
  %124 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %125 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 19
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %129 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %128, i32 0, i32 22
  store i32 %127, i32* %129, align 8
  %130 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %131 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 18
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %135 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %134, i32 0, i32 21
  store i32 %133, i32* %135, align 4
  %136 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %137 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 17
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %141 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %140, i32 0, i32 20
  store i32 %139, i32* %141, align 8
  %142 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %143 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 16
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %147 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %146, i32 0, i32 19
  store i32 %145, i32* %147, align 4
  %148 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %149 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 15
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %153 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %152, i32 0, i32 18
  store i32 %151, i32* %153, align 8
  %154 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %155 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 14
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %159 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %158, i32 0, i32 17
  store i32 %157, i32* %159, align 4
  %160 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %161 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 13
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %165 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %164, i32 0, i32 16
  store i32 %163, i32* %165, align 8
  %166 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %167 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 12
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %171 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %170, i32 0, i32 15
  store i32 %169, i32* %171, align 4
  %172 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %173 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %172, i32 0, i32 14
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %176 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 11
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @memcpy(i32 %174, i32 %178, i32 4)
  %180 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %181 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %180, i32 0, i32 13
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %184 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 10
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @memcpy(i32 %182, i32 %186, i32 4)
  %188 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %189 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 9
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %193 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %192, i32 0, i32 12
  store i32 %191, i32* %193, align 8
  %194 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %195 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %194, i32 0, i32 11
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %198 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 8
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @memcpy(i32 %196, i32 %200, i32 4)
  %202 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %203 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %207 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %206, i32 0, i32 10
  store i32 %205, i32* %207, align 8
  %208 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %209 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %208, i32 0, i32 9
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %212 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @memcpy(i32 %210, i32 %214, i32 4)
  %216 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %217 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %221 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %220, i32 0, i32 8
  store i32 %219, i32* %221, align 8
  %222 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %223 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %222, i32 0, i32 7
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %226 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @memcpy(i32 %224, i32 %228, i32 4)
  %230 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %231 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %234 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @memcpy(i32 %232, i32 %236, i32 4)
  %238 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %239 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %242 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @memcpy(i32 %240, i32 %244, i32 4)
  %246 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %247 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %250 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @memcpy(i32 %248, i32 %252, i32 4)
  %254 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %255 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %259 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %258, i32 0, i32 3
  store i32 %257, i32* %259, align 4
  %260 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %261 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %264 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %263, i32 0, i32 2
  store i32 %262, i32* %264, align 8
  %265 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %266 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %269 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %268, i32 0, i32 1
  store i32 %267, i32* %269, align 4
  %270 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %271 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %4, align 8
  %274 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %273, i32 0, i32 0
  store i32 %272, i32* %274, align 8
  br label %275

275:                                              ; preds = %11, %2
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mwifiex_get_rx_reorder_tbl(%struct.mwifiex_private*, i32) #1

declare dso_local i32 @mwifiex_get_tx_ba_stream_tbl(%struct.mwifiex_private*, i32) #1

declare dso_local i32 @mwifiex_get_tdls_list(%struct.mwifiex_private*, i32) #1

declare dso_local i8* @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
