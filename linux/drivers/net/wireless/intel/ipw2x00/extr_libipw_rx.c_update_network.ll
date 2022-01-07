; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_rx.c_update_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_rx.c_update_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_network = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i64, i32, %struct.TYPE_3__*, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_3__*, %struct.TYPE_3__*, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"Network %pM info received off channel (%d vs. %d)\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@NETWORK_HAS_QOS_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"QoS the network %s is QoS supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"QoS the network is QoS supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libipw_network*, %struct.libipw_network*)* @update_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_network(%struct.libipw_network* %0, %struct.libipw_network* %1) #0 {
  %3 = alloca %struct.libipw_network*, align 8
  %4 = alloca %struct.libipw_network*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.libipw_network* %0, %struct.libipw_network** %3, align 8
  store %struct.libipw_network* %1, %struct.libipw_network** %4, align 8
  %7 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %8 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %11 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %10, i32 0, i32 22
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %9, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %17 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %16, i32 0, i32 22
  %18 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %19 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %18, i32 0, i32 22
  %20 = call i32 @memcpy(%struct.TYPE_3__* %17, %struct.TYPE_3__* %19, i32 4)
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %23 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %22, i32 0, i32 23
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %26 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %29 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %28, i32 0, i32 22
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @LIBIPW_DEBUG_SCAN(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %27, i64 %31)
  br label %33

33:                                               ; preds = %21, %15
  %34 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %35 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %34, i32 0, i32 21
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %38 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %37, i32 0, i32 21
  store i32 %36, i32* %38, align 8
  %39 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %40 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %39, i32 0, i32 20
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %43 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %42, i32 0, i32 20
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %46 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @memcpy(%struct.TYPE_3__* %41, %struct.TYPE_3__* %44, i32 %47)
  %49 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %50 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %53 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %55 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %54, i32 0, i32 19
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %58 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %57, i32 0, i32 19
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %61 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @memcpy(%struct.TYPE_3__* %56, %struct.TYPE_3__* %59, i32 %62)
  %64 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %65 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %68 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %70 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %69, i32 0, i32 18
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %73 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %72, i32 0, i32 18
  store i32 %71, i32* %73, align 8
  %74 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %75 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %78 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %80 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %79, i32 0, i32 17
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %85 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %84, i32 0, i32 17
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %83, i32* %87, align 4
  %88 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %89 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %88, i32 0, i32 17
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %94 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %93, i32 0, i32 17
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32 %92, i32* %96, align 4
  %97 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %98 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %97, i32 0, i32 16
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %101 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %100, i32 0, i32 16
  store i32 %99, i32* %101, align 8
  %102 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %103 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %102, i32 0, i32 15
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %106 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %105, i32 0, i32 15
  store i32 %104, i32* %106, align 4
  %107 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %108 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %107, i32 0, i32 14
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %111 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %110, i32 0, i32 14
  store i32 %109, i32* %111, align 8
  %112 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %113 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %112, i32 0, i32 13
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %116 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %115, i32 0, i32 13
  store i32 %114, i32* %116, align 4
  %117 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %118 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %117, i32 0, i32 12
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %121 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %120, i32 0, i32 12
  store i32 %119, i32* %121, align 8
  %122 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %123 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %122, i32 0, i32 11
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %126 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %125, i32 0, i32 11
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %129 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @memcpy(%struct.TYPE_3__* %124, %struct.TYPE_3__* %127, i32 %130)
  %132 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %133 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %136 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 4
  %137 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %138 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %137, i32 0, i32 10
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %141 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %140, i32 0, i32 10
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %144 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @memcpy(%struct.TYPE_3__* %139, %struct.TYPE_3__* %142, i32 %145)
  %147 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %148 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %151 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* @jiffies, align 4
  %153 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %154 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %153, i32 0, i32 9
  store i32 %152, i32* %154, align 8
  %155 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %156 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %155, i32 0, i32 6
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  store i32 %158, i32* %5, align 4
  %159 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %160 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %6, align 4
  %163 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %164 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @NETWORK_HAS_QOS_MASK, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %33
  %170 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %171 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %170, i32 0, i32 6
  %172 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %173 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %172, i32 0, i32 6
  %174 = call i32 @memcpy(%struct.TYPE_3__* %171, %struct.TYPE_3__* %173, i32 4)
  br label %190

175:                                              ; preds = %33
  %176 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %177 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %176, i32 0, i32 6
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %181 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %180, i32 0, i32 6
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 2
  store i32 %179, i32* %182, align 4
  %183 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %184 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %183, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %188 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %187, i32 0, i32 6
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 4
  store i32 %186, i32* %189, align 4
  br label %190

190:                                              ; preds = %175, %169
  %191 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %192 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %191, i32 0, i32 6
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %209

196:                                              ; preds = %190
  %197 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %198 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %197, i32 0, i32 8
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %203 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %202, i32 0, i32 7
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (i8*, ...) @LIBIPW_DEBUG_QOS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %204)
  br label %208

206:                                              ; preds = %196
  %207 = call i32 (i8*, ...) @LIBIPW_DEBUG_QOS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %208

208:                                              ; preds = %206, %201
  br label %209

209:                                              ; preds = %208, %190
  %210 = load i32, i32* %5, align 4
  %211 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %212 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %211, i32 0, i32 6
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 1
  store i32 %210, i32* %213, align 8
  %214 = load i32, i32* %6, align 4
  %215 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %216 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %215, i32 0, i32 6
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 3
  store i32 %214, i32* %217, align 8
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_3__*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @LIBIPW_DEBUG_SCAN(i8*, i32, i64, i64) #1

declare dso_local i32 @LIBIPW_DEBUG_QOS(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
